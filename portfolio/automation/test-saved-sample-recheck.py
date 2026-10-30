#!/usr/bin/env python3
"""Saved free-five records must pass current evidence checks at paid delivery."""
import ast
from datetime import datetime,timedelta,timezone
from pathlib import Path
import re
import unittest
source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
names={"growth_saved_sample_is_current","growth_candidate_is_fresh","growth_prospect_key","clean"}
nodes=[n for n in source.body if isinstance(n,ast.FunctionDef) and n.name in names]
ns=dict(re=re,datetime=datetime,timedelta=timedelta,timezone=timezone,
    GROWTH_SOURCE_BLOCKLIST=("blocked.example",),growth_candidate_score=lambda *args:100)
exec(compile(ast.Module(body=nodes,type_ignores=[]),"production_sample_recheck","exec"),ns)
class Tests(unittest.TestCase):
    def setUp(self):
        self.saved=dict(business_name="Fixture LLC",market="Test",category_key="restaurants",
            source_url="https://fixture.example",public_email="office@fixture.example",public_phone="+1 928 555 0100")
        self.current=dict(self.saved,status="discovered",closed_at=None,source_domain="fixture.example",
            last_verified_at=datetime.now(timezone.utc),official_site=True)
    def valid(self):return ns["growth_saved_sample_is_current"](self.saved,self.current,"pressure_washing")
    def test_current_record_and_phone_formatting(self):
        self.assertTrue(self.valid());self.current["public_phone"]="19285550100";self.assertTrue(self.valid())
    def test_stale_closed_or_missing_record_blocks(self):
        self.assertFalse(ns["growth_saved_sample_is_current"](self.saved,None,"pressure_washing"))
        for patch in (dict(last_verified_at=None),dict(last_verified_at=datetime.now(timezone.utc)-timedelta(days=91)),
            dict(status="closed"),dict(closed_at=datetime.now(timezone.utc))):
            before=self.current.copy();self.current.update(patch)
            self.assertFalse(self.valid());self.current=before
    def test_changed_identity_category_or_contact_blocks(self):
        for key,value in (("business_name","Different"),("market","Other"),("category_key","retail"),
            ("public_phone","19285550101"),("public_email","other@fixture.example"),("source_url","https://other.example"),
            ("source_domain","sub.blocked.example")):
            before=self.current.copy();self.current[key]=value
            self.assertFalse(self.valid(),key);self.current=before
if __name__=="__main__":unittest.main()
