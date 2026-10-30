#!/usr/bin/env python3
"""Verify the delivered CSV is readable and cannot execute public listing text."""
import ast
import csv
import io
from pathlib import Path
import unittest

source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
nodes=[n for n in source.body if isinstance(n,ast.FunctionDef) and n.name in ("growth_csv_cell","growth_csv_bytes")]
ns=dict(csv=csv,io=io,clean=lambda v:str(v or "").strip())
exec(compile(ast.Module(body=nodes,type_ignores=[]),"production_csv","exec"),ns)
class Tests(unittest.TestCase):
    def test_formula_prefixes_are_literal_text(self):
        for value in ('=HYPERLINK("https://example.test")',"+123","-1+2","@SUM(1,2)"," \t=1+1","\r\n+1"):
            self.assertEqual(ns["growth_csv_cell"](value),"'"+value)
    def test_normal_values_stay_readable(self):
        for value in ("Smith & Sons","a@example.test","https://example.test",65):
            self.assertEqual(ns["growth_csv_cell"](value),str(value))
    def test_csv_roundtrip_unicode_quotes_and_newlines(self):
        row=dict(grade="A",fit_score=90,business_name='Café, "Fixture"\nLLC',market="Test",
            category_label="Restaurant",fit_reason="Commercial fit",public_email="a@example.test",
            public_phone="+19285550100",source_url="https://example.test",sales_angle="=1+1",verification_status="direct_evidence")
        data=ns["growth_csv_bytes"]([row])
        self.assertTrue(data.startswith(b"\xef\xbb\xbf"))
        parsed=list(csv.reader(io.StringIO(data.decode("utf-8-sig"))))
        self.assertEqual(len(parsed),2);self.assertEqual(len(parsed[1]),11)
        self.assertEqual(parsed[1][2],row["business_name"])
        self.assertEqual(parsed[1][7],"'"+row["public_phone"])
        self.assertEqual(parsed[1][9],"'=1+1")
if __name__=="__main__":unittest.main()
