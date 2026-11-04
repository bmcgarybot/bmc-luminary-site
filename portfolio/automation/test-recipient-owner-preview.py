#!/usr/bin/env python3
"""A queued, service-specific owner preview never emails the candidate."""
import ast
import uuid
import base64
from pathlib import Path
import unittest
import sys
sys.path.insert(0,str(Path(__file__).parent/"api"))

class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status

class Connection:
    def transaction(self):return Acquire(self)
    async def execute(self,*args):pass
    async def fetchrow(self,*args):
        if "mail_attempted_at,mail_accepted_at" in args[0]:return dict(mail_attempted_at=None,mail_accepted_at=None)
        return dict(target_id="vendor:fixture",business_name="Fixture Cleaning",
            public_email="fixture@example.test",market="Prescott",
            service_key="commercial_cleaning",source_url="https://example.test",
            source_kind="normalized_vendor",status="queued",owner_review_required=False)

class Acquire:
    def __init__(self,conn=None):self.conn=conn or Connection()
    async def __aenter__(self):return self.conn
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
        async def mail(*args,**kwargs):sent.append(args);return True
        async def candidates(*args,**kwargs):return [1]*5
        async def sample(*args):return dict(preview_id=str(uuid.uuid4()),download_filename="sample.pdf",download_pdf_base64=base64.b64encode(b"%PDF-test").decode(),checkout_url="https://buy.stripe.com/test")
        ns=dict(uuid=uuid,base64=base64,growth_qualified_territory_candidates=candidates,growth_owner_sample=sample,Header=lambda **kwargs:None,require_admin=lambda key:None,
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

class ClaimTests(unittest.IsolatedAsyncioTestCase):
    async def test_new_signed_preview_receives_selected_recipient_source(self):
        from types import SimpleNamespace
        source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=="growth_claim_free_five")
        node.decorator_list=[]
        class Conn(Connection):
            async def fetchrow(self,sql,*args):
                columns=sql.split("exists",1)[0]
                row=dict(target_id="target",public_email="fixture@example.test",market="Phoenix",service_key="commercial_cleaning")
                if "g.source_url" in columns:row["source_url"]="https://example.test/contact"
                return row
        async def sample(conn,target,territory,rows):
            self.assertEqual(target["source_url"],"https://example.test/contact")
            return {"preview":True,"sample":rows}
        async def candidates(*args,**kwargs):return [dict(candidate_id=str(i)) for i in range(5)]
        class Request:
            async def json(self):return {"target_id":"target","claim":"signed","preview":"1"}
        ns=dict(Request=Request,clean=lambda v:str(v or "").strip(),HTTPException=HTTPError,
            growth_claim_valid=lambda *a,**k:True,growth_territory_markets=lambda *a:["Phoenix"],
            growth_qualified_territory_candidates=candidates,growth_owner_sample=sample,
            app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Acquire(Conn())))))
        exec(compile(ast.Module(body=[node],type_ignores=[]),"production_claim","exec"),ns)
        result=await ns["growth_claim_free_five"](Request())
        self.assertTrue(result["preview"]);self.assertEqual(len(result["sample"]),5)

if __name__=="__main__":unittest.main()
