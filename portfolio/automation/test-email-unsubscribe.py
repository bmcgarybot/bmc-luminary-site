#!/usr/bin/env python3
"""Exercise signed unsubscribe rendering, read-only GET, and POST suppression."""
import ast
import hashlib
import hmac
import html
import re
import unittest
import urllib.parse
from pathlib import Path
from types import SimpleNamespace

class Context:
    def __init__(self,value):self.value=value
    async def __aenter__(self):return self.value
    async def __aexit__(self,*args):return False
class Connection:
    def __init__(self):self.writes=[]
    def transaction(self):return Context(self)
    async def execute(self,*args):self.writes.append(args)
class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status
class Tests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        names={"email_unsubscribe_token","email_unsubscribe_content","email_preferences","workflow_email_html","clean"}
        source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
        nodes=[n for n in source.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        for n in nodes:n.decorator_list=[]
        self.conn=Connection()
        self.ns=dict(re=re,hmac=hmac,hashlib=hashlib,html=html,urllib=SimpleNamespace(parse=urllib.parse),
          ADMIN_KEY="test-only-key",WEBHOOK_URL="https://ops.example.test/api/intake",BUSINESS_POSTAL_ADDRESS="Test address",
          Request=object,HTTPException=HTTPError,HTMLResponse=lambda body,headers:SimpleNamespace(body=body,headers=headers),
          app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(self.conn)))))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),"production_unsubscribe","exec"),self.ns)
    def request(self,method,address="reader@example.test",token=None):
        return SimpleNamespace(method=method,query_params={"email":address,
          "token":token if token is not None else self.ns["email_unsubscribe_token"](address)})
    async def test_get_requires_valid_signature_and_never_writes(self):
        result=await self.ns["email_preferences"](self.request("GET"))
        self.assertIn("method='post'",result.body)
        self.assertEqual(self.conn.writes,[])
        token=self.ns["email_unsubscribe_token"]("someone-else@example.test")
        with self.assertRaises(HTTPError) as caught:
            await self.ns["email_preferences"](self.request("POST",token=token))
        self.assertEqual(caught.exception.status_code,403)
        self.assertEqual(self.conn.writes,[])
    async def test_post_suppresses_all_campaign_types_and_nurture(self):
        result=await self.ns["email_preferences"](self.request("POST"))
        self.assertIn("You're unsubscribed",result.body)
        self.assertEqual(len(self.conn.writes),3)
        self.assertTrue(all(args[-1]=="reader@example.test" for args in self.conn.writes))
        self.assertIn("on conflict(email) do nothing",self.conn.writes[0][0])
        for kind in ("vendor","buyer","growth_customer"):
            self.assertIn(kind,self.conn.writes[1][0])
        self.assertIn("next_nurture_at=null",self.conn.writes[2][0])
        self.assertIn("else status end",self.conn.writes[2][0])
    def test_marketing_link_is_small_at_bottom_and_recipient_bound(self):
        markup=self.ns["workflow_email_html"]("Hello",["Useful research"],marketing=True)
        body,rendered,url=self.ns["email_unsubscribe_content"]("Reader@example.test","Useful research\nReply no to stop.",markup)
        self.assertNotIn("Reply no",body)
        self.assertTrue(body.endswith(url))
        self.assertIn("font-size:11px",rendered)
        self.assertGreater(rendered.index("Stop receiving these emails"),rendered.index("Test address"))
        self.assertNotIn("Reply <strong>no</strong>",rendered)
        params=urllib.parse.parse_qs(urllib.parse.urlsplit(url).query)
        self.assertEqual(params["email"],["reader@example.test"])
        self.assertEqual(params["token"],[self.ns["email_unsubscribe_token"]("reader@example.test")])
    def test_transactional_message_is_unchanged(self):
        self.assertEqual(self.ns["email_unsubscribe_content"]("x@example.test","Your receipt","<p>Receipt</p>"),
          ("Your receipt","<p>Receipt</p>",""))
    def test_marketing_fails_closed_without_signing_or_public_endpoint(self):
        for field in ("ADMIN_KEY","WEBHOOK_URL"):
            original=self.ns[field];self.ns[field]=""
            with self.assertRaises(ValueError):self.ns["email_unsubscribe_content"]("x@example.test","Reply no to stop",None)
            self.ns[field]=original
if __name__=="__main__":unittest.main()
