#!/usr/bin/env python3
"""Run the production Stripe handler against an in-memory transaction fixture.
No Stripe requests, SMTP, production records, or secrets are used.
"""
import ast
import asyncio
import json
from pathlib import Path
from types import SimpleNamespace
import unittest
import uuid

class HTTPException(Exception):
    def __init__(self, status_code, detail):
        self.status_code=status_code

class Context:
    def __init__(self, value): self.value=value
    async def __aenter__(self): return self.value
    async def __aexit__(self, *args): return False

class Connection:
    def __init__(self):
        self.events=set(); self.orders=set(); self.revenue=[]; self.sql=[]
        self.product=None; self.sample_email="owner@example.com"; self.converted=False
    def transaction(self): return Context(self)
    async def execute(self, sql, *args):
        self.sql.append((sql,args))
        if "insert into payment_events" in sql: self.events.add(args[0])
    async def fetchval(self, sql, *args):
        self.sql.append((sql,args))
        if "from payment_events" in sql: return args[0] in self.events
        if "select 1 from orders" in sql: return args[0] in self.orders
        if "insert into orders" in sql:
            self.orders.add(args[1]); return "test-order"
        return None
    async def fetchrow(self, sql, *args):
        self.sql.append((sql,args))
        if "from growth_sample_requests" in sql and "sample_id=$1" in sql:
            # Enforce the predicate that the real SQL supplies, so a missing
            # identity/conversion condition would expose the wrong sample.
            identity_ok="lower(email)=lower($2)" in sql and len(args)>1 and args[1].lower()==self.sample_email
            conversion_ok="converted_at is null" in sql and not self.converted
            if identity_ok and conversion_ok:
                return dict(sample_id=uuid.UUID(int=1),business_name="Fixture",market="Test",
                    provider_service_key="pressure_washing",ideal_customer="",minimum_job="",
                    exclusions="",experiment_cell="test")
        return None

class Request:
    def __init__(self, payload): self.payload=payload
    async def body(self): return json.dumps(self.payload).encode()

class Tests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.conn=Connection()
        source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
        handler=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=="stripe_webhook")
        handler.decorator_list=[]
        async def product(conn,obj): return conn.product
        async def revenue(conn,*args): conn.revenue.append(args)
        async def event(*args): pass
        self.ns=dict(Request=Request,Header=lambda **kw:None,HTTPException=HTTPException,json=json,uuid=uuid,
            clean=lambda value:str(value or "").strip(),nested=lambda obj,*keys:obj.get(keys[0],{}).get(keys[1]),
            verify_stripe_signature=lambda *args:None,stripe_product_key=product,
            stripe_email=lambda obj:obj.get("customer_details",{}).get("email",""),
            record_revenue=revenue,event=event,
            app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(self.conn)))))
        exec(compile(ast.Module(body=[handler],type_ignores=[]),"production_stripe_webhook","exec"),self.ns)
    async def call(self,event_id="evt_one",kind="checkout.session.completed",status="paid",email="owner@example.com",session="cs_fixture"):
        return await self.ns["stripe_webhook"](Request(dict(id=event_id,type=kind,data=dict(object=dict(
            id=session,mode="payment",payment_status=status,amount_total=49900,currency="usd",
            customer_details=dict(email=email),client_reference_id="growth_"+uuid.UUID(int=1).hex)))),None)
    async def test_different_events_for_same_paid_session_book_once(self):
        await self.call()
        result=await self.call("evt_two","checkout.session.async_payment_succeeded")
        self.assertTrue(result["duplicate_checkout"])
        self.assertEqual(len(self.conn.revenue),1)
        self.assertEqual(len(self.conn.orders),1)
        self.assertEqual(len(self.conn.events),2)
        second=self.conn.sql[-1]
        self.assertIn("select 1 from orders",second[0])
    async def test_same_event_retry_is_noop(self):
        await self.call()
        result=await self.call()
        self.assertTrue(result["duplicate"])
        self.assertEqual(len(self.conn.revenue),1)
    async def test_unpaid_completion_waits_for_paid_event(self):
        await self.call(status="unpaid")
        self.assertEqual(self.conn.revenue,[])
        await self.call("evt_async","checkout.session.async_payment_succeeded",status="unpaid")
        self.assertEqual(len(self.conn.revenue),1)
    async def test_session_complete_does_not_mean_payment_paid(self):
        await self.call(status="complete")
        self.assertEqual(self.conn.revenue,[])
        self.assertEqual(self.conn.orders,set())
    async def test_session_lock_precedes_duplicate_checks(self):
        await self.call()
        self.assertIn("pg_advisory_xact_lock",self.conn.sql[0][0])
        self.assertEqual(self.conn.sql[0][1],("stripe_checkout:cs_fixture",))
    async def test_missing_session_rejected_before_database_writes(self):
        with self.assertRaises(HTTPException) as cm: await self.call(session="")
        self.assertEqual(cm.exception.status_code,400)
        self.assertEqual(self.conn.sql,[])
    async def test_sample_reference_requires_payer_email(self):
        self.conn.product="growth_pack_starter"
        await self.call(email="other@example.com")
        self.assertFalse(any("update growth_sample_requests" in sql for sql,args in self.conn.sql))
        lookup=next((sql,args) for sql,args in self.conn.sql if "sample_id=$1 and lower(email)" in sql)
        self.assertEqual(lookup[1][1],"other@example.com")
    async def test_already_converted_sample_not_reused(self):
        self.conn.product="growth_pack_starter"; self.conn.converted=True
        await self.call()
        self.assertFalse(any("update growth_sample_requests" in sql for sql,args in self.conn.sql))

if __name__=="__main__": unittest.main()
