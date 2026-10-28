#!/usr/bin/env python3
"""Exercise production qualification filters with synthetic data; no external services."""
import ast
import asyncio
from datetime import datetime, timedelta, timezone
import hashlib
from pathlib import Path
import re
import unittest

SOURCE=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
NAMES={"clean","growth_category_terms","growth_selected_categories","growth_candidate_is_fresh",
       "growth_qualified_candidates","growth_prospect_key"}
nodes=[node for node in SOURCE.body if isinstance(node,(ast.FunctionDef,ast.AsyncFunctionDef)) and node.name in NAMES]
async def exposure_passthrough(conn,rows,*args): return rows
ns={"datetime":datetime,"timezone":timezone,"timedelta":timedelta,"hashlib":hashlib,"re":re,
    "GROWTH_BUYER_CATEGORIES":{"pressure_washing":["restaurants","retail"]},
    "GROWTH_SERVICE_LABELS":{"pressure_washing":"Pressure washing"},"GROWTH_SOURCE_BLOCKLIST":(),
    "growth_exposure_filter":exposure_passthrough,
    "growth_candidate_score":lambda row,service:100,
    "growth_fit_reason":lambda row,service:"Synthetic fit",
    "growth_sales_angle":lambda row,service:"Synthetic angle"}
exec(compile(ast.Module(body=nodes,type_ignores=[]),"real_qualification_gates","exec"),ns)

class Connection:
    def __init__(self,rows):self.rows=rows;self.calls=0
    async def fetch(self,*args):self.calls+=1;return self.rows

class Tests(unittest.TestCase):
    def test_excluding_all_categories_never_restores_them(self):
        categories=ns["growth_selected_categories"]("pressure_washing","","restaurants and retail")
        self.assertEqual(categories,[])
        conn=Connection([])
        self.assertEqual(asyncio.run(ns["growth_qualified_candidates"](conn,"pressure_washing","Test",exclusions="restaurants and retail")),[])
        self.assertEqual(conn.calls,0)

    def test_freshness_is_a_hard_gate_even_for_score_100(self):
        now=datetime.now(timezone.utc)
        rows=[]
        for name,verified in (("Fresh",now),("Stale",now-timedelta(days=91)),("Missing",None),("Future",now+timedelta(days=1))):
            rows.append({"business_name":name,"market":"Test","category_key":"restaurants",
                         "source_url":"https://synthetic.example","source_domain":"synthetic.example",
                         "public_phone":"9285550100","official_site":True,"last_verified_at":verified,
                         "last_seen_at":now,"updated_at":now})
        result=asyncio.run(ns["growth_qualified_candidates"](Connection(rows),"pressure_washing","Test"))
        self.assertEqual([row["business_name"] for row in result],["Fresh"])

    def test_verification_boundary(self):
        now=datetime(2026,10,28,tzinfo=timezone.utc)
        for age,expected in ((timedelta(days=90),True),(timedelta(days=90,seconds=1),False),(-timedelta(minutes=6),False)):
            with self.subTest(age=age):
                self.assertIs(ns["growth_candidate_is_fresh"]({"last_verified_at":now-age},now),expected)
        self.assertFalse(ns["growth_candidate_is_fresh"]({"last_verified_at":"2026-10-28"},now))

if __name__=="__main__":unittest.main()
