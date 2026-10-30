#!/usr/bin/env python3
"""Actual reply worker: ingest while held, never send around campaign gates."""
import ast
import email
from email.utils import parseaddr
import hashlib
import hmac
import html
from pathlib import Path
from types import SimpleNamespace
import unittest
import urllib.parse

source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
class Context:
    def __init__(self,value):self.value=value
    async def __aenter__(self):return self.value
    async def __aexit__(self,*args):return False
class Box:
    def login(self,*args):pass
    def select(self,*args):pass
    def search(self,*args):return "OK",[b"1"]
    def fetch(self,*args):return "OK",[(b"",b"From: owner@example.test\r\nSubject: Re: Five\r\n\r\nYes please")]
    def store(self,*args):pass
    def logout(self):pass
class Connection:
    def __init__(self):self.writes=[]
    async def fetchrow(self,sql,*args):
        if "select o.outreach_id" in sql:return dict(outreach_id="outreach",entity_type="growth_customer",entity_id="target")
        if "select sample_id" in sql:return None
        if "growth_outreach_targets" in sql:return dict(target_id="target",business_name="Fixture",
            public_email="owner@example.test",market="Test",service_key="pressure_washing",experiment_cell="cell")
        raise AssertionError(sql)
    async def execute(self,*args):self.writes.append(args)
class Tests(unittest.IsolatedAsyncioTestCase):
    def load(self,hold=True,enabled=False):
        conn=Connection();sent=[]
        async def event(*args):pass
        async def send(*args):sent.append(args);return True
        names={"clean","growth_claim_token","growth_invitation_url","growth_positive_reply_message","workflow_email_html","process_replies"}
        nodes=[n for n in source.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        for node in nodes:
            if isinstance(node,ast.AsyncFunctionDef):node.decorator_list=[]
        ns=dict(Header=lambda **kw:None,require_admin=lambda key:None,email=email,parseaddr=parseaddr,
            hashlib=hashlib,hmac=hmac,html=html,urllib=SimpleNamespace(parse=urllib.parse),
            ADMIN_KEY="fixture-secret",PUBLIC_SITE_URL="https://example.test",BUSINESS_POSTAL_ADDRESS="Fixture postal",
            GROWTH_LANDING_PATHS={"pressure_washing":"/growth-packs/pressure-washing/"},
            OWNER_LAUNCH_HOLD=hold,GROWTH_OUTREACH_ENABLED=enabled,IMAP_ENABLED=True,IMAP_HOST="fixture",
            IMAP_USER="fixture",IMAP_PASSWORD="fixture",IMAP_FOLDER="INBOX",IMAP_PORT=993,
            imaplib=SimpleNamespace(IMAP4_SSL=lambda *args:Box()),
            reply_text=lambda msg:"Yes please",classify_reply_text=lambda text:"positive",event=event,send_mail_once=send,
            app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(conn)))))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),"production_growth_reply","exec"),ns)
        return ns,conn,sent
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
