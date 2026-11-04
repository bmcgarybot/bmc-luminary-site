#!/usr/bin/env python3
"""Synthetic-only tests: actual PDF renderer, source binding, fail-closed gates."""
import io
import ast
import csv
import sys
import unittest
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent/'api'))
from held_packets import compile_held_packet
from growth_pdf import prospect_presentation, format_business_phone
from pypdf import PdfReader


class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self):
        self.calls=[]
        self.recipient=dict(candidate_id='recipient-fixture', business_name='Synthetic Recipient',
            market='Phoenix',category_key='commercial_cleaning',public_email='fixture@example.test',
            source_url='https://example.test/recipient')
        self.scope=dict(source_url=self.recipient['source_url'],content_sha256='a'*64,
                        checked_at='2026-11-04T00:00:00Z',ideal_customer='Published office cleaning')
        self.rows=[dict(candidate_id=str(i),business_name=f'Synthetic Office {i}',market='Phoenix',
            category_key='office',category_label='Office',grade='A',source_url=f'https://example.test/{i}',fit_score=90,
            public_phone='6025550100',fit_reason='Published office address.',sales_angle='Ask about cleaning.') for i in range(130)]
        async def verify(*args):return True
        async def qualify(*args,**kwargs):
            self.calls.append(kwargs)
            return [r for r in self.rows if r['candidate_id'] not in kwargs.get('exclude_ids',set())]
        tree=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        nodes=[n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name in {'growth_csv_bytes','growth_csv_cell'}]
        ns=dict(io=io,csv=csv,prospect_presentation=prospect_presentation,format_business_phone=format_business_phone,clean=lambda value:str(value or '').strip())
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'real_csv_renderer','exec'),ns)
        self.kw=dict(verify_recipient=verify,qualify=qualify,select_sample=lambda rows,key:rows[:5],
            public_rows=lambda rows:rows,csv_bytes=ns['growth_csv_bytes'],
            recipient_business_key=lambda name:name.lower())
    async def test_real_pdf_quantities_prefix_and_source_scoped_callbacks(self):
        self.setup()
        result=await compile_held_packet(object(),self.recipient,self.scope,**self.kw)
        self.assertFalse(result['offer_ready']);self.assertEqual(result['checkout_url'],'')
        artifacts=result['artifacts']
        for count in (5,25,100):
            self.assertEqual(len(artifacts[count]['rows']),count)
            self.assertEqual(len(list(csv.reader(io.StringIO(artifacts[count]['csv'].decode('utf-8-sig'))))),count+1)
            text=' '.join(p.extract_text() for p in PdfReader(io.BytesIO(artifacts[count]['pdf'])).pages)
            self.assertIn('OWNER REVIEW COPY',text);self.assertIn('Synthetic Recipient',text)
        self.assertEqual(artifacts[5]['rows'],artifacts[25]['rows'][:5])
        self.assertEqual(artifacts[25]['rows'],artifacts[100]['rows'][:25])
        self.assertEqual([c['delivery_kind'] for c in self.calls],['free','paid'])
        self.assertTrue(all(c['ideal_customer']==self.scope['ideal_customer'] for c in self.calls))
    async def test_smaller_territory_generates_only_supported_25(self):
        self.setup();self.rows=self.rows[:29]
        result=await compile_held_packet(object(),self.recipient,self.scope,pack_count=25,**self.kw)
        self.assertEqual(result['pack_count'],25)
        self.assertEqual(set(result['artifacts']),{5,25})
        self.assertEqual(len(result['artifacts'][25]['rows']),25)
        self.assertEqual(result['artifacts'][5]['rows'],result['artifacts'][25]['rows'][:5])
        self.assertEqual(len(list(csv.reader(io.StringIO(result['artifacts'][25]['csv'].decode('utf-8-sig'))))),26)
        self.assertGreater(len(PdfReader(io.BytesIO(result['artifacts'][25]['pdf'])).pages),0)
        self.rows=self.rows[:24]
        with self.assertRaises(ValueError):await compile_held_packet(object(),self.recipient,self.scope,pack_count=25,**self.kw)
    async def test_recipient_gate_stops_before_inventory(self):
        self.setup()
        async def denied(*args):return False
        self.kw['verify_recipient']=denied
        with self.assertRaises(ValueError):await compile_held_packet(object(),self.recipient,self.scope,**self.kw)
        self.assertEqual(self.calls,[])
    async def test_missing_focus_wrong_source_and_insufficient_pool(self):
        self.setup()
        for changed in (dict(self.scope,ideal_customer=''),dict(self.scope,source_url='https://other.test')):
            with self.assertRaises(ValueError):await compile_held_packet(object(),self.recipient,changed,**self.kw)
        self.assertEqual(self.calls,[])
        self.rows=self.rows[:30]
        with self.assertRaises(ValueError):await compile_held_packet(object(),self.recipient,self.scope,**self.kw)
    async def test_selector_must_preserve_current_evidence(self):
        self.setup()
        self.kw['select_sample']=lambda rows,key:[dict(r,source_url='https://changed.test') for r in rows[:5]]
        with self.assertRaises(ValueError):await compile_held_packet(object(),self.recipient,self.scope,**self.kw)
    async def test_duplicate_paid_identity_rejected(self):
        self.setup()
        self.rows[6]['business_name']=self.rows[5]['business_name']
        with self.assertRaises(ValueError):await compile_held_packet(object(),self.recipient,self.scope,**self.kw)

if __name__=='__main__':unittest.main()
