#!/usr/bin/env python3
"""An owner inspection payment is held for review, never fulfilled as customer demand."""
import ast, asyncio, json, unittest
from pathlib import Path
from types import SimpleNamespace
class Context:
 def __init__(self,obj):self.obj=obj
 async def __aenter__(self):return self.obj
 async def __aexit__(self,*args):return False
class Conn:
 def __init__(self):self.queries=[]
 def transaction(self):return Context(self)
 async def execute(self,query,*args):self.queries.append(query)
 async def fetchval(self,*args):return None
class Request:
 async def body(self):return json.dumps({'id':'evt_review','type':'checkout.session.completed','data':{'object':{'id':'cs_review','payment_status':'paid','amount_total':49900,'client_reference_id':'owner_preview_fixture'}}}).encode()
class Tests(unittest.IsolatedAsyncioTestCase):
 async def test_review_never_books_customer_sale_or_fulfills(self):
  source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
  node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='stripe_webhook');node.decorator_list=[]
  conn=Conn()
  async def product(*args):return 'growth_pack_starter'
  async def no_revenue(*args):raise AssertionError('Preview must not book customer revenue')
  ns=dict(Request=Request,Header=lambda **kw:None,verify_stripe_signature=lambda *a:None,json=json,
    clean=lambda x:str(x or '').strip(),nested=lambda x,*keys:x['data']['object'],stripe_product_key=product,
    stripe_email=lambda x:'contact@bmcservicenetwork.com',record_revenue=no_revenue,
    app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(conn)))))
  exec(compile(ast.Module(body=[node],type_ignores=[]),'production_preview_payment','exec'),ns)
  result=await ns['stripe_webhook'](Request(),'fixture-signature')
  self.assertTrue(result['manual_review'])
  self.assertTrue(any('insert into payment_events' in q for q in conn.queries))
  self.assertTrue(any('owner_preview_payment' in q for q in conn.queries))
  self.assertFalse(any('insert into orders' in q for q in conn.queries))
if __name__=='__main__':unittest.main()
