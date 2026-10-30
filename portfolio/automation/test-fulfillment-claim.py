#!/usr/bin/env python3
"""Exercise real fulfillment worker claim gates without mail or production DB."""
import ast
import asyncio
from pathlib import Path
from types import SimpleNamespace
import unittest

class Context:
    def __init__(self,value):self.value=value
    async def __aenter__(self):return self.value
    async def __aexit__(self,*args):return False
class Connection:
    def __init__(self,current):self.current=current;self.writes=[];self.locked=False
    def transaction(self):return Context(self)
    async def fetch(self,sql,*args):
        if "select t.task_id" in sql:return [dict(task_id="task",paid_order_id="order")]
        raise AssertionError("Claim gate must stop before candidate allocation")
    async def fetchrow(self,sql,*args):
        assert self.locked
        assert "for update of t,o" in sql
        return self.current
    async def execute(self,*args):self.writes.append(args)
class Tests(unittest.IsolatedAsyncioTestCase):
    async def run_worker(self,current):
        conn=Connection(current)
        source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=="process_growth_fulfillment")
        node.decorator_list=[]
        async def lock(c):c.locked=True
        async def mail(*args):raise AssertionError("No email allowed")
        ns=dict(Header=lambda **kw:None,require_admin=lambda key:None,GROWTH_AUTO_FULFILL_ENABLED=True,
            growth_lock_exposure_allocator=lock,send_mail=mail,
            app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(conn)))))
        exec(compile(ast.Module(body=[node],type_ignores=[]),"production_fulfillment","exec"),ns)
        result=await ns["process_growth_fulfillment"]("synthetic-key")
        return result,conn
    async def test_completed_or_claimed_task_never_resends(self):
        for status in ("completed","exception","in_progress"):
            result,conn=await self.run_worker(dict(task_status=status,order_status="ready_for_fulfillment",payment_status="paid",product_key="growth_pack_starter"))
            self.assertEqual(result["fulfilled"],0);self.assertEqual(conn.writes,[])
    async def test_fulfilled_or_unpaid_order_never_sends(self):
        for status,payment in (("fulfilled","paid"),("ready_for_fulfillment","unpaid"),("paid_needs_intake","paid")):
            result,conn=await self.run_worker(dict(task_status="open",order_status=status,payment_status=payment,product_key="growth_pack_starter"))
            self.assertEqual(result["fulfilled"],0);self.assertEqual(conn.writes,[])
    async def test_deleted_task_is_skipped(self):
        result,conn=await self.run_worker(None)
        self.assertEqual(result["fulfilled"],0);self.assertEqual(conn.writes,[])
    async def test_premium_cannot_be_completed_with_starter_csv(self):
        result,conn=await self.run_worker(dict(task_status="open",order_status="ready_for_fulfillment",payment_status="paid",product_key="growth_pack_premium"))
        self.assertEqual(result["exceptions"],1)
        self.assertEqual(result["fulfilled"],0)
        self.assertIn("growth_fulfillment_product_scope",conn.writes[1][0])
if __name__=="__main__":unittest.main()
