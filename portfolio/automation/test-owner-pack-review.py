#!/usr/bin/env python3
"""Owner pack previews preserve the five and validate exact deliverable quantities."""
import ast,base64,csv,io,json,re,sys,unittest,uuid
from pathlib import Path
from datetime import datetime,timezone
sys.path.insert(0,str(Path(__file__).parent/'api'))
import growth_offers
from growth_pdf import render_sample_pdf,prospect_presentation,format_business_phone
from pypdf import PdfReader
class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status;super().__init__(detail)
class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self,available=100,missing_original=False):
        records=[dict(candidate_id=uuid.uuid4(),business_name=f'Fixture Account {i:03}',market='Phoenix',category_label='Office',category='Office',fit_score=90,grade='A',source_url=f'https://example.test/account-{i}',website_url=f'https://example.test/account-{i}',fit_reason='Published local office address.',sales_angle='Ask who coordinates office cleaning.',public_phone='9285550100',public_email='') for i in range(available)]
        original=records[:5];ids=[x['candidate_id'] for x in original]
        if missing_original:ids[0]=uuid.uuid4()
        class Connection:
            async def fetchrow(self,*args):return {'candidate_ids':ids}
        async def candidates(*args,**kwargs):return records[5:]
        tree=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text());names={'growth_owner_full_pack','growth_csv_bytes','growth_csv_cell'};nodes=[n for n in tree.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        ns=dict(HTTPException=HTTPError,uuid=uuid,growth_offers=growth_offers,GROWTH_SAMPLE_MIN_RESERVE=125,growth_qualified_territory_candidates=candidates,growth_recipient_business_key=lambda x:x,clean=lambda x:str(x or '').strip(),growth_sample_public_rows=lambda rows:rows,datetime=datetime,timezone=timezone,render_sample_pdf=render_sample_pdf,GROWTH_SERVICE_LABELS={'commercial_cleaning':'Commercial cleaning'},re=re,base64=base64,csv=csv,io=io,prospect_presentation=prospect_presentation,format_business_phone=format_business_phone)
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'production_owner_pack','exec'),ns)
        async def preview(count):return await ns['growth_owner_full_pack'](Connection(),{'target_id':'fixture','business_name':'Recipient Fixture','service_key':'commercial_cleaning','public_email':'owner@example.test'},['Phoenix'],records,{'preview_id':str(uuid.uuid4())},count)
        return preview,original
    async def test_25_and_100_use_actual_renderer_and_csv_without_writes(self):
        preview,original=self.setup()
        for count in (25,100):
            d=await preview(count);self.assertEqual(d['pack_count'],count);self.assertEqual(d['sample'][:5],original);self.assertEqual(len(d['sample']),count)
            self.assertFalse(d['customer_order_created']);self.assertFalse(d['customer_delivery_recorded']);self.assertEqual(d['checkout_url'],'')
            reader=PdfReader(io.BytesIO(base64.b64decode(d['download_pdf_base64'])));text='\n'.join(p.extract_text() for p in reader.pages)
            self.assertIn(f'Your {count}-prospect Growth Pack',text);self.assertIn('OWNER REVIEW COPY',text)
            self.assertEqual(len(list(csv.reader(io.StringIO(base64.b64decode(d['download_csv_base64']).decode('utf-8-sig'))))),count+1)
            self.assertIn(f'-{count}-Prospects-',d['download_filename'])
    async def test_insufficient_pool_cannot_make_a_larger_preview(self):
        preview,_=self.setup(25);self.assertEqual((await preview(25))['pack_count'],25)
        with self.assertRaises(HTTPError) as caught:await preview(100)
        self.assertEqual(caught.exception.status_code,409)
    async def test_missing_original_or_unsupported_quantity_rejected(self):
        preview,_=self.setup(missing_original=True)
        with self.assertRaises(HTTPError) as caught:await preview(25)
        self.assertEqual(caught.exception.status_code,409)
        preview,_=self.setup()
        with self.assertRaises(HTTPError) as caught:await preview(75)
        self.assertEqual(caught.exception.status_code,400)
if __name__=='__main__':unittest.main()
