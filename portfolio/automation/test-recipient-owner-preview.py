#!/usr/bin/env python3
"""A queued, service-specific owner preview never emails the candidate."""
import ast
from pathlib import Path
import unittest

class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status

class Connection:
    async def fetchrow(self,*args):
        return dict(target_id="vendor:fixture",business_name="Fixture Cleaning",
            public_email="fixture@example.test",market="Prescott",
            service_key="commercial_cleaning",source_url="https://example.test",
            source_kind="normalized_vendor",status="queued",owner_review_required=False)

class Acquire:
    async def __aenter__(self):return Connection()
    async def __aexit__(self,*args):pass

class Pool:
    def acquire(self):return Acquire()

class PreviewTests(unittest.IsolatedAsyncioTestCase):
    def load(self,overrides=None):
        source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef)
            and n.name=="preview_growth_target_to_owner")
        node.decorator_list=[]
        sent=[]
        async def mail(*args):sent.append(args);return True
        ns=dict(Header=lambda **kwargs:None,require_admin=lambda key:None,
            OWNER_LAUNCH_HOLD=True,OUTREACH_ENABLED=False,
            BUYER_OUTREACH_ENABLED=False,GROWTH_OUTREACH_ENABLED=False,
            OWNER_PREVIEW_RECIPIENT="contact@bmcservicenetwork.com",
            GROWTH_WAVES={"commercial_cleaning":"growth-cleaning-1"},
            app=type("App",(),{"state":type("State",(),{"pool":Pool()})()})(),
            growth_outreach_message=lambda row,step,owner_preview:(
                "commercial_cleaning","Prescott: five businesses","Plain text","<p>HTML</p>",
                "https://example.test/?claim=private-signed-value"),
            send_mail=mail,HTTPException=HTTPError)
        ns.update(overrides or {})
        exec(compile(ast.Module(body=[node],type_ignores=[]),"test_preview","exec"),ns)
        return ns,sent
    async def test_only_owner_receives_service_specific_preview(self):
        ns,sent=self.load()
        result=await ns["preview_growth_target_to_owner"]("vendor:fixture","key")
        self.assertTrue(result["smtp_accepted"])
        self.assertEqual(result["service_key"],"commercial_cleaning")
        self.assertEqual([message[0] for message in sent],["contact@bmcservicenetwork.com"])
        self.assertNotIn("private-signed-value",str(result))
    async def test_hold_required(self):
        ns,sent=self.load({"OWNER_LAUNCH_HOLD":False})
        with self.assertRaises(HTTPError) as error:
            await ns["preview_growth_target_to_owner"]("vendor:fixture","key")
        self.assertEqual(error.exception.status_code,409)
        self.assertEqual(sent,[])

if __name__=="__main__":unittest.main()
