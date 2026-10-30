#!/usr/bin/env python3
"""The private inventory audit is read-only, bounded, and aggregate-only."""
import ast
from datetime import datetime,timezone
from pathlib import Path
from types import SimpleNamespace
import unittest

class Context:
    def __init__(self,value):self.value=value
    async def __aenter__(self):return self.value
    async def __aexit__(self,*args):return False
class Connection:
    def __init__(self):self.options=None
    def transaction(self,**kw):self.options=kw;return Context(self)
    async def execute(self,*args):raise AssertionError("Audit cannot write")
class Tests(unittest.IsolatedAsyncioTestCase):
    async def run_audit(self,authorized=True):
        conn=Connection();calls=[]
        async def select(c,service,market,**kw):
            calls.append((service,market,kw))
            return [{"email":"must-not-leak@example.test"}]*({"Thin":4,"Sample":5,"Reserve":125}[market])
        def auth(key):
            if not authorized:raise PermissionError()
        source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=="admin_growth_inventory_audit");node.decorator_list=[]
        ns=dict(Header=lambda **kw:None,require_admin=auth,datetime=datetime,timezone=timezone,
            DEFAULT_SOURCE_NATIVE_MARKETS=("Thin","Sample","Reserve"),
            GROWTH_SERVICE_LABELS={"pressure_washing":"Pressure","commercial_cleaning":"Cleaning"},
            GROWTH_SAMPLE_MIN_RESERVE=125,growth_qualified_candidates=select,
            app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(conn)))))
        exec(compile(ast.Module(body=[node],type_ignores=[]),"production_inventory_audit","exec"),ns)
        result=await ns["admin_growth_inventory_audit"]("fixture-key")
        return result,conn,calls
    async def test_all_lanes_real_selector_and_no_recipient_data(self):
        result,conn,calls=await self.run_audit()
        self.assertEqual(len(result["lanes"]),6);self.assertEqual(len(calls),6)
        self.assertNotIn("must-not-leak",str(result))
        self.assertEqual(conn.options,dict(isolation="repeatable_read",readonly=True))
        self.assertTrue(all(c[2]==dict(limit=125,delivery_kind="free") for c in calls))
    async def test_capacity_thresholds_and_count_limit_are_explicit(self):
        result,_,_=await self.run_audit()
        rows=result["lanes"][::2]
        self.assertEqual([(r["sample_capacity"],r["paid_reserve_capacity"]) for r in rows],[(False,False),(True,False),(True,True)])
        self.assertTrue(result["counts_capped_at_reserve"]);self.assertIn("buyer-specific",result["limits"])
    async def test_admin_required(self):
        with self.assertRaises(PermissionError):await self.run_audit(False)
if __name__=="__main__":unittest.main()
