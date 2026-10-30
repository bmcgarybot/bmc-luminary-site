#!/usr/bin/env python3
"""Preview authorization cannot be converted into a customer sample claim."""
import ast
import asyncio
import hashlib
import hmac
from pathlib import Path
from types import SimpleNamespace
import unittest

source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status
class Context:
    def __init__(self,value):self.value=value
    async def __aenter__(self):return self.value
    async def __aexit__(self,*args):return False
class Connection:
    def transaction(self):return Context(self)
    async def fetchrow(self,*args):return dict(target_id="target",public_email="owner@example.test",
        business_name="Fixture",market="Test",service_key="pressure_washing",was_sent=True)
class Request:
    def __init__(self,p):self.p=p
    async def json(self):return self.p
class Tests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        names={"clean","growth_claim_token","growth_claim_valid","growth_claim_free_five"}
        nodes=[n for n in source.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        for node in nodes:
            if isinstance(node,ast.AsyncFunctionDef):node.decorator_list=[]
        self.calls=[]
        async def candidates(*args,**kwargs):self.calls.append("preview");return []
        async def live(*args):raise AssertionError("No customer sample/mail allowed in preview test")
        self.ns=dict(Request=Request,HTTPException=HTTPError,hashlib=hashlib,hmac=hmac,ADMIN_KEY="fixture-secret",
            growth_qualified_candidates=candidates,handle_growth_snapshot=live,GROWTH_SAMPLE_MIN_RESERVE=125,
            app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(Connection())))))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),"production_preview_scope","exec"),self.ns)
    async def test_preview_flag_removed_rejects_before_customer_handler(self):
        token=self.ns["growth_claim_token"]("target","owner@example.test",owner_preview=True)
        with self.assertRaises(HTTPError) as cm:
            await self.ns["growth_claim_free_five"](Request(dict(target_id="target",claim=token)))
        self.assertEqual(cm.exception.status_code,403);self.assertEqual(self.calls,[])
    async def test_scoped_preview_runs_only_read_path(self):
        token=self.ns["growth_claim_token"]("target","owner@example.test",owner_preview=True)
        result=await self.ns["growth_claim_free_five"](Request(dict(target_id="target",claim=token,preview="1")))
        self.assertTrue(result["preview"]);self.assertEqual(self.calls,["preview"])
    async def test_customer_token_cannot_be_relabelled_preview(self):
        token=self.ns["growth_claim_token"]("target","owner@example.test")
        with self.assertRaises(HTTPError):
            await self.ns["growth_claim_free_five"](Request(dict(target_id="target",claim=token,preview="1")))
    async def test_existing_customer_signatures_preserved(self):
        expected=hmac.new(b"fixture-secret",b"target\nowner@example.test",hashlib.sha256).hexdigest()[:40]
        self.assertEqual(self.ns["growth_claim_token"]("target","owner@example.test"),expected)
        self.assertTrue(self.ns["growth_claim_valid"]("target","owner@example.test",expected))
if __name__=="__main__":unittest.main()
