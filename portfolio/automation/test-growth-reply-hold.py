#!/usr/bin/env python3
"""Actual reply worker: ingest while held, never send around campaign gates."""
import ast
import email
from email.utils import parseaddr
import hashlib
import hmac
import html
import re
from pathlib import Path
from types import SimpleNamespace
import unittest
import urllib.parse

source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
class ReplyIntentTests(unittest.TestCase):
    def classify(self,text):
        node=next(n for n in source.body if isinstance(n,ast.FunctionDef) and n.name=="classify_reply_text")
        ns={"re":re}
        exec(compile(ast.Module(body=[node],type_ignores=[]),"production_reply_classifier","exec"),ns)
        return ns["classify_reply_text"](text)
    def test_promised_short_opt_out(self):
        for reply in ("no","No.","NO!","No, thank you.","stop"):
            with self.subTest(reply=reply):self.assertEqual(self.classify(reply),"opt_out")
    def test_new_reply_beats_quoted_campaign(self):
        quoted="\n\nOn Mon, Nov 2, Brett wrote:\nHere are your free five. Reply unsubscribe to stop emailing."
        self.assertEqual(self.classify("Yes please"+quoted),"positive")
        self.assertEqual(self.classify("no"+quoted),"opt_out")
        self.assertEqual(self.classify("Who are you?"+quoted),"other")
    def test_inline_quotes_and_forwarded_copy_do_not_express_interest(self):
        for reply in ("Who are you?\n> send me the sample", "Who are you?\n-----Original Message-----\nfree five",
                      "Who are you?\nFrom: BMC <contact@example.test>\nfree five"):
            with self.subTest(reply=reply):self.assertEqual(self.classify(reply),"other")
    def test_substantive_negative_and_positive_replies(self):
        self.assertEqual(self.classify("We are not interested in the sample."),"opt_out")
        self.assertEqual(self.classify("Please send the five for our Prescott office."),"positive")
        self.assertEqual(self.classify("No problem, send me the five."),"positive")
class Context:
    def __init__(self,value):self.value=value
    async def __aenter__(self):return self.value
    async def __aexit__(self,*args):return False
class Box:
    def login(self,*args):pass
    def select(self,*args):pass
    def response(self,name):return name,[b"42" if name=="UIDVALIDITY" else b"2"]
    def uid(self,command,*args):
        if command=="search":return "OK",[b"1"]
        if command=="fetch":return self.fetch(*args)
        raise AssertionError(command)
    def fetch(self,*args):return "OK",[(b"",b"From: owner@example.test\r\nSubject: Re: Five\r\n\r\nYes please")]
    def store(self,*args):pass
    def logout(self):pass
class Connection:
    def __init__(self):self.writes=[];self.cursor=dict(uidvalidity="42",last_uid=0)
    def transaction(self):return Context(self)
    async def fetchval(self,*args):return True
    async def fetchrow(self,sql,*args):
        if "mailbox_poll_state" in sql:return self.cursor
        if "select o.outreach_id" in sql:return dict(outreach_id="outreach",entity_type="growth_customer",entity_id="target",owner_review_required=False)
        if "select sample_id" in sql:return None
        if "growth_outreach_targets" in sql:return dict(target_id="target",business_name="Fixture",
            public_email="owner@example.test",market="Test",service_key="pressure_washing",experiment_cell="cell")
        raise AssertionError(sql)
    async def execute(self,*args):self.writes.append(args)
class Tests(unittest.IsolatedAsyncioTestCase):
    def load(self,hold=True,enabled=False):
        conn=Connection();sent=[]
        async def event(*args):pass
        async def observe(*args):pass
        async def send(*args):sent.append(args);return True
        names={"clean","growth_claim_token","growth_invitation_url","growth_positive_reply_message","workflow_email_html","process_replies"}
        nodes=[n for n in source.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        for node in nodes:
            if isinstance(node,ast.AsyncFunctionDef):node.decorator_list=[]
        ns=dict(Header=lambda **kw:None,require_admin=lambda key:None,email=email,parseaddr=parseaddr,
            hashlib=hashlib,hmac=hmac,html=html,urllib=SimpleNamespace(parse=urllib.parse),
            record_mail_observation=observe,ADMIN_KEY="fixture-secret",PUBLIC_SITE_URL="https://example.test",BUSINESS_POSTAL_ADDRESS="Fixture postal",
            GROWTH_LANDING_PATHS={"pressure_washing":"/growth-packs/pressure-washing/"},
            OWNER_LAUNCH_HOLD=hold,GROWTH_OUTREACH_ENABLED=enabled,GROWTH_OUTREACH_TARGET_IDS=("target",),IMAP_ENABLED=True,IMAP_HOST="fixture",
            IMAP_USER="fixture",IMAP_PASSWORD="fixture",IMAP_FOLDER="INBOX",IMAP_PORT=993,
            imaplib=SimpleNamespace(IMAP4_SSL=lambda *args:Box()),
            reply_text=lambda msg:"Yes please",classify_reply_text=lambda text:"positive",event=event,send_mail_once=send,
            app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(conn)))))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),"production_growth_reply","exec"),ns)
        return ns,conn,sent
    async def test_initial_poll_sets_baseline_without_replaying_historic_mail(self):
        ns,conn,sent=self.load();conn.cursor=None
        result=await ns["process_replies"]("fixture")
        self.assertTrue(result["baseline_established"]);self.assertEqual(result["processed"],0)
        self.assertEqual(sent,[])
        self.assertFalse(any("update outreach" in s for s,*a in conn.writes))
    async def test_uid_identity_change_asks_for_review_without_historic_replay(self):
        ns,conn,sent=self.load();conn.cursor=dict(uidvalidity="old",last_uid=100)
        result=await ns["process_replies"]("fixture")
        self.assertTrue(result["historic_mail_not_replayed"])
        self.assertTrue(any("mailbox_identity_changed" in s for s,*a in conn.writes))
        self.assertEqual(sent,[])
    async def test_already_read_new_uid_is_processed_without_changing_seen_flag(self):
        ns,conn,sent=self.load();box=Box()
        def forbidden(*a):raise AssertionError("Do not rely on unread flags or change them")
        box.search=forbidden;box.store=forbidden
        ns["imaplib"]=SimpleNamespace(IMAP4_SSL=lambda *a:box)
        result=await ns["process_replies"]("fixture")
        self.assertEqual(result["processed"],1)
        self.assertTrue(any("set last_uid" in s for s,*a in conn.writes))
        self.assertEqual(sent,[])
    async def test_owner_hold_records_reply_without_sending_even_when_flag_enabled(self):
        ns,conn,sent=self.load(True,True)
        result=await ns["process_replies"]("fixture")
        self.assertEqual(result["matched"],1);self.assertEqual(sent,[])
        self.assertTrue(any("update outreach set replied_at" in s for s,*args in conn.writes))
        self.assertTrue(any("growth_reply_awaiting_review" in s for s,*args in conn.writes))
    async def test_disabled_campaign_never_sends_positive_reply(self):
        ns,conn,sent=self.load(False,False)
        await ns["process_replies"]("fixture")
        self.assertEqual(sent,[])
    async def test_outside_exact_cohort_never_sends_positive_reply(self):
        ns,conn,sent=self.load(False,True)
        ns["GROWTH_OUTREACH_TARGET_IDS"]=("another-target",)
        await ns["process_replies"]("fixture")
        self.assertEqual(sent,[])
        self.assertTrue(any("growth_reply_awaiting_review" in s for s,*args in conn.writes))
    async def test_owner_review_required_never_sends_positive_reply(self):
        ns,conn,sent=self.load(False,True)
        original=conn.fetchrow
        async def fetchrow(sql,*args):
            row=await original(sql,*args)
            if row and "outreach_id" in row:row["owner_review_required"]=True
            return row
        conn.fetchrow=fetchrow
        await ns["process_replies"]("fixture")
        self.assertEqual(sent,[])
    async def test_approved_path_uses_html_signed_claim_and_durable_key(self):
        ns,conn,sent=self.load(False,True)
        await ns["process_replies"]("fixture")
        self.assertEqual(len(sent),1)
        key,to,subject,body,rendered=sent[0]
        self.assertEqual(key,"growth-positive:target")
        self.assertIn("claim=",body);self.assertIn("target=target",body);self.assertIn("utm_source=bmc_reply",body)
        self.assertIn("do not need to fill out",body);self.assertNotIn("5-target form",subject)
        self.assertIn("Show me my five targets",rendered);self.assertIn("Fixture postal",rendered)
        self.assertIn("Reply",rendered)
if __name__=="__main__":unittest.main()
