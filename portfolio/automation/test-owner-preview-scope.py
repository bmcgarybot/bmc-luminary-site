#!/usr/bin/env python3
"""Owner Growth review scope never contacts a prospect or sends unrelated templates."""
import ast
from pathlib import Path
import runpy
import unittest
from unittest.mock import patch

class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status

class ScopeTests(unittest.IsolatedAsyncioTestCase):
    def load(self,flags=None):
        source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=="replay_all_email_templates_to_owner")
        node.decorator_list=[]
        sent=[]
        async def mail(*args):sent.append(args);return True
        catalog=[dict(num=i,name=f"Fixture {i}",subject=f"Subject {i}",greeting="Hi Fixture,",
            lines=["Synthetic review copy"],button=None,url=None,marketing=False) for i in range(1,28)]
        ns=dict(Header=lambda **kw:None,HTTPException=HTTPError,ADMIN_KEY="fixture",
            OUTREACH_ENABLED=False,BUYER_OUTREACH_ENABLED=False,GROWTH_OUTREACH_ENABLED=False,
            BUSINESS_POSTAL_ADDRESS="Fixture postal",owner_template_preview_catalog=lambda:catalog,
            workflow_email_html=lambda *args,**kw:"<p>Fixture</p>",send_mail=mail)
        ns.update(flags or {})
        exec(compile(ast.Module(body=[node],type_ignores=[]),"production_owner_preview_scope","exec"),ns)
        return ns,sent
    async def test_growth_scope_sends_only_first_seven_to_owner(self):
        ns,sent=self.load()
        result=await ns["replay_all_email_templates_to_owner"]("fixture",scope="growth")
        self.assertEqual(result["count_sent"],7);self.assertEqual(result["scope"],"growth")
        self.assertEqual([x["num"] for x in result["sent"]],list(range(1,8)))
        self.assertTrue(all(x[0]=="brett.coon2@gmail.com" for x in sent))
        self.assertIn("01/07",sent[0][1]);self.assertIn("07/07",sent[-1][1])
    async def test_legacy_default_still_renders_all_27(self):
        ns,sent=self.load()
        result=await ns["replay_all_email_templates_to_owner"]("fixture")
        self.assertEqual(result["count_sent"],27);self.assertIn("27/27",sent[-1][1])
    async def test_invalid_scope_rejects_before_mail(self):
        ns,sent=self.load()
        with self.assertRaises(HTTPError) as caught:
            await ns["replay_all_email_templates_to_owner"]("fixture",scope="growth&other=1")
        self.assertEqual(caught.exception.status_code,400);self.assertEqual(sent,[])
    async def test_all_campaigns_must_be_off(self):
        for flag in ("OUTREACH_ENABLED","BUYER_OUTREACH_ENABLED","GROWTH_OUTREACH_ENABLED"):
            ns,sent=self.load({flag:True})
            with self.assertRaises(HTTPError) as caught:
                await ns["replay_all_email_templates_to_owner"]("fixture",scope="growth")
            self.assertEqual(caught.exception.status_code,409);self.assertEqual(sent,[])
    async def test_authentication_required(self):
        ns,sent=self.load()
        with self.assertRaises(HTTPError) as caught:
            await ns["replay_all_email_templates_to_owner"]("wrong",scope="growth")
        self.assertEqual(caught.exception.status_code,403);self.assertEqual(sent,[])

class RelayScopeTests(unittest.TestCase):
    def load(self):
        ns=runpy.run_path(str(Path(__file__).with_name("vps-gitops-relay.py")),run_name="owner_scope_test")
        return ns["execute"],ns["RelayError"]
    def test_relay_routes_growth_scope_without_unrelated_query_input(self):
        execute,error=self.load();calls=[]
        def post(path,**kwargs):calls.append(path);return dict(ok=True,count_sent=7)
        with patch.dict(execute.__globals__,dict(
            outreach_state=lambda:{k:"false" for k in ("OUTREACH_ENABLED","BUYER_OUTREACH_ENABLED","GROWTH_OUTREACH_ENABLED")},
            current_sha=lambda:"a"*40,current_branch=lambda:"master",admin_post=post,redact=lambda s:s)):
            result=execute(dict(request_id="owner-scope-fixture",action="owner_replay_all_email_templates",
                args=dict(scope="growth"),allow_external_actions=True))
        self.assertEqual(result["status"],"success")
        self.assertEqual(calls,["/api/admin/replay-all-email-templates-to-owner?scope=growth"])
    def test_relay_invalid_scope_never_calls_api(self):
        execute,error=self.load();calls=[]
        def post(*args,**kwargs):calls.append(args);raise AssertionError("No external action allowed")
        with patch.dict(execute.__globals__,dict(
            outreach_state=lambda:{"GROWTH_OUTREACH_ENABLED":"false"},
            current_sha=lambda:"a"*40,current_branch=lambda:"master",admin_post=post)):
            with self.assertRaises(error):
                execute(dict(request_id="owner-scope-fixture",action="owner_replay_all_email_templates",
                    args=dict(scope="growth&other=1"),allow_external_actions=True))
        self.assertEqual(calls,[])
if __name__=="__main__":unittest.main()
