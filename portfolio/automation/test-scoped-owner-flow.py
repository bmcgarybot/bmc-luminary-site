"""Execute actual owner/claim/copy functions with synthetic signed25 evidence."""
import ast,base64,csv,hashlib,hmac,io,json,re,runpy,sys,unittest,urllib.parse,uuid
from datetime import datetime,timezone,timedelta
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import AsyncMock
sys.path.insert(0,str(Path(__file__).parent/'api'))
import growth_offers
from scoped_growth import prepare_profile,profile_for_target,public_offer_fields
from growth_pdf import render_sample_pdf,sample_pdf_response,present_prospect_rows,prospect_presentation,format_business_phone
from pypdf import PdfReader
class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status;super().__init__(detail)

class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self):
        fixture=runpy.run_path(str(Path(__file__).with_name('test-scoped-growth.py')))['Tests']();fixture.setup()
        self.packet=fixture.packet;self.target=fixture.target
        self.rows=[dict(candidate_id=uuid.UUID(cid),business_name=f'Synthetic Office {i}',market='Phoenix',category_key='insurance_professional',category_label='Office',grade='A',fit_score=90,public_phone='6025550100',public_email='',source_url=f'https://example.test/office-{i}',fit_reason='Published office address.',sales_angle='Ask about cleaning.') for i,cid in enumerate(self.packet['binding']['candidate_ids'])]
        self.packet['artifacts']={5:dict(rows=self.rows[:5]),25:dict(rows=self.rows)}
        self.packet['binding']['scope'].update(ideal_customer='office',exclusions='')
        self.target['source_data']={'scoped_offer':prepare_profile(self.packet,self.target['target_id'],'secret')}
        self.target['was_sent']=True  # Strong guard: draft must reject even if historical sent flag is true.
        self.saved=dict(preview_id=uuid.uuid4(),candidate_ids=[r['candidate_id'] for r in self.rows[:5]],sample_payload=self.rows[:5],selected_markets=['Phoenix'],business_name=self.target['business_name'],service_key='commercial_cleaning',created_at=datetime.now(timezone.utc))
        self.queries=[];outer=self
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            def transaction(self):return self
            async def execute(self,sql,*args):
                outer.queries.append(sql);assert sql.startswith('select pg_advisory_xact_lock'),'unexpected write'
            async def fetchrow(self,sql,*args):
                outer.queries.append(sql)
                assert sql.lstrip().startswith('select'),'unexpected write'
                return outer.target if 'growth_outreach_targets' in sql else outer.saved
            async def fetchval(self,sql,*args):
                outer.queries.append((sql,args));assert args==('growth_pack_25',)
                return 'https://buy.stripe.com/synthetic25'
        self.conn=Conn()
        class Pool:
            def acquire(self):return outer.conn
        self.qualify=AsyncMock(side_effect=lambda *args,**kw:list(self.rows[5:] if kw.get('delivery_kind')=='paid' else self.rows)+[dict(self.rows[-1],category_key='retail',candidate_id=uuid.uuid4())])
        names={'growth_target_scoped_profile','growth_owner_sample','growth_owner_full_pack','growth_claim_free_five','growth_checkout_url','growth_claim_token','growth_claim_valid','growth_invitation_url','growth_verified_opener','growth_outreach_message','growth_csv_cell','growth_csv_bytes'}
        tree=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text());nodes=[n for n in tree.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        for n in nodes:n.decorator_list=[]
        ns=dict(ADMIN_KEY='secret',Request=object,HTTPException=HTTPError,uuid=uuid,re=re,urllib=urllib,json=json,datetime=datetime,timezone=timezone,timedelta=timedelta,hashlib=hashlib,hmac=hmac,base64=base64,csv=csv,io=io,
            app=SimpleNamespace(state=SimpleNamespace(pool=Pool())),profile_for_target=profile_for_target,public_offer_fields=public_offer_fields,growth_offers=growth_offers,
            OWNER_PREVIEW_RECIPIENT='owner@example.test',GROWTH_SAMPLE_MIN_RESERVE=125,GROWTH_SERVICE_LABELS={'commercial_cleaning':'Commercial cleaning'},GROWTH_REVIEW_PACKETS={},
            growth_qualified_territory_candidates=self.qualify,growth_territory_markets=lambda market,selected:[market],growth_recipient_business_key=str.lower,
            growth_sample_public_rows=lambda rows:rows,present_prospect_rows=present_prospect_rows,render_sample_pdf=render_sample_pdf,sample_pdf_response=sample_pdf_response,
            prospect_presentation=prospect_presentation,format_business_phone=format_business_phone,clean=lambda v:str(v or '').strip(),PUBLIC_SITE_URL='https://example.test',GROWTH_LANDING_PATHS={'commercial_cleaning':'/growth/'},BUSINESS_POSTAL_ADDRESS='Synthetic business postal',
            workflow_email_html=lambda subject,lines,*args,**kwargs:'<p>'+'</p><p>'.join(lines)+'</p>',handle_growth_snapshot=AsyncMock(side_effect=AssertionError('customer sample creation forbidden')))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_scoped_owner_flow','exec'),ns);self.ns=ns
    async def claim(self,**changes):
        p=dict(target_id=self.target['target_id'],claim=self.ns['growth_claim_token'](self.target['target_id'],self.target['public_email'],owner_preview=changes.get('preview',True)),preview=changes.get('preview',True));p.update(changes)
        class Request:
            async def json(self):return p
        return await self.ns['growth_claim_free_five'](Request())
    async def test_actual_owner_claim_quantity_pdf_owner_locked_checkout(self):
        self.setup();result=await self.claim()
        self.assertEqual((result['offer_count'],result['offer_amount_cents']),(25,14900))
        query=urllib.parse.parse_qs(urllib.parse.urlsplit(result['checkout_url']).query)
        self.assertEqual(query['locked_prefilled_email'],['owner@example.test'])
        self.assertEqual(query['client_reference_id'],['owner_preview_'+self.saved['preview_id'].hex])
        text=' '.join(p.extract_text() for p in PdfReader(io.BytesIO(base64.b64decode(result['download_pdf_base64']))).pages)
        self.assertIn('$149',text);self.assertRegex(text,r'25(?:\s|-)');self.assertNotIn('$499',text);self.assertNotRegex(text,r'\b100\b')
        self.assertEqual([r['business_name'] for r in result['sample']],[r['business_name'] for r in self.rows[:5]])
        self.ns['handle_growth_snapshot'].assert_not_called()
    async def test_25_retains_exact_ids_category_scope_and_blocks100_strategy(self):
        self.setup();result=await self.claim(pack_count=25)
        self.assertEqual(len(result['sample']),25);self.assertEqual(result['sample'][:5],self.rows[:5])
        self.assertEqual([r['candidate_id'] for r in result['sample']],[r['candidate_id'] for r in self.rows])
        self.assertTrue(all(r['category_key']=='insurance_professional' for r in result['sample']))
        self.assertFalse(result['customer_order_created']);self.assertFalse(result['customer_delivery_recorded'])
        self.assertTrue(all(call.kwargs['ideal_customer']=='office' for call in self.qualify.call_args_list))
        for changes in (dict(pack_count=100),dict(review_type='strategy')):
            with self.assertRaises(HTTPError) as caught:await self.claim(**changes)
            self.assertEqual(caught.exception.status_code,409)
    async def test_draft_customer_blocked_owner_copy_exact_intro_and_scoped_url(self):
        self.setup()
        with self.assertRaises(ValueError):self.ns['growth_outreach_message'](self.target,1)
        message=self.ns['growth_outreach_message'](self.target,1,owner_preview=True)
        for text in message[2:4]:
            self.assertIn('Hey, this is Brett with BMC Service Network.',text);self.assertIn('25 total',text);self.assertIn('$149',text)
            self.assertNotIn('$499',text);self.assertNotRegex(text,r'\b100\b')
        query=urllib.parse.parse_qs(urllib.parse.urlsplit(message[4]).query)
        self.assertEqual(query['offer_count'],['25']);self.assertEqual(query['preview'],['1'])
        with self.assertRaises(HTTPError) as caught:await self.claim(preview=False)
        self.assertEqual(caught.exception.status_code,409);self.ns['handle_growth_snapshot'].assert_not_called()
    async def test_changed_frozen_five_and_missing_scoped_paid_id_fail(self):
        self.setup();self.saved['candidate_ids'][0]=uuid.uuid4()
        with self.assertRaises(HTTPError):await self.claim()
        self.setup();self.rows.pop()
        with self.assertRaises(HTTPError):await self.claim(pack_count=25)

if __name__=='__main__':unittest.main()
