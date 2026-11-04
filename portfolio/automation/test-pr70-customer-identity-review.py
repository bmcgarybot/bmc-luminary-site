"""Regression: verified mailbox cannot reuse another company's submission identity."""
import ast,hashlib,json,runpy,sys,unittest,uuid
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import AsyncMock,Mock
sys.path.insert(0,str(Path(__file__).parent/'api'))
from scoped_growth import profile_for_target,prepare_profile,signature,public_offer_fields
from scoped_quote_api import request_fields
class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status;super().__init__(detail)
class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self):
        fixture=runpy.run_path(str(Path(__file__).with_name('test-scoped-growth.py')))['Tests']();fixture.setup()
        target=fixture.target;packet=fixture.packet
        packet['binding']['scope'].update(ideal_customer='office',exclusions='')
        profile=prepare_profile(packet,target['target_id'],'secret');profile.pop('signature');profile['state']='approved';profile['signature']=signature(profile,'secret')
        target['source_data']={'scoped_offer':profile}
        submission='growth_claim_'+hashlib.sha256(target['target_id'].encode()).hexdigest()[:32]
        saved=dict(submission_id=submission,email=target['public_email'],business_name=target['business_name'],
            provider_service_key='commercial_cleaning',market='Phoenix',selected_markets=['Phoenix'],source_target_id=target['target_id'],
            sample_id=uuid.uuid4(),status='delivered',ideal_customer='office',sample_payload=packet['artifacts'][5]['rows'],sample_generated_at=datetime.now(timezone.utc))
        calls=[]
        class Conn:
            async def fetchrow(self,sql,*args):
                calls.append(sql)
                if 'growth_sample_requests' in sql:return saved
                if 'growth_outreach_targets' in sql:return target
                raise AssertionError(sql)
        names={'handle_growth_snapshot','growth_target_scoped_profile'}
        tree=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text());nodes=[n for n in tree.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        ns=dict(HTTPException=HTTPError,ADMIN_KEY='secret',profile_for_target=profile_for_target,public_offer_fields=public_offer_fields,
            scoped_quote_request_fields=request_fields,GROWTH_SERVICE_LABELS={'commercial_cleaning':'Commercial cleaning'},uuid=uuid,json=json,
            clean=lambda v:str(v or '').strip(),growth_territory_markets=lambda city,chosen:[city],growth_request_territory=lambda row:row['selected_markets'],
            growth_business_site_host=lambda value:'',growth_business_phone_key=lambda value:'',growth_lock_exposure_allocator=AsyncMock(),
            growth_sample_checkout=AsyncMock(return_value=''),present_prospect_rows=lambda rows:rows,
            sample_pdf_response=Mock(return_value=dict(download_pdf_base64='SYNTHETIC_PRIVATE_PDF')))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_customer_identity_replay','exec'),ns)
        # Equivalent trusted input after public email verification: only attacker's OWN
        # mailbox is verified; submission_id remains caller supplied in that flow.
        request=dict(submission_id=submission,email='other-verified@example.test',business_name='Other Company',contact_name='Other Person',
            market='Phoenix',service_key='commercial_cleaning',consent='yes',source_target_id='')
        self.ns=ns;self.conn=Conn();self.request=request;self.saved=saved;self.target=target
    async def invoke(self,**changes):
        return await self.ns['handle_growth_snapshot'](self.conn,dict(self.request,**changes))
    async def test_other_verified_mailbox_cannot_replay_known_scoped_submission(self):
        self.setup()
        with self.assertRaises(HTTPError) as caught:await self.invoke()
        self.assertEqual(caught.exception.status_code,409);self.ns['sample_pdf_response'].assert_not_called()
    async def test_same_mailbox_cannot_change_company_service_territory_or_source(self):
        for kind in ('company','service','territory','source'):
            self.setup();self.request.update(email=self.saved['email'],business_name=self.saved['business_name'])
            if kind=='company':self.request['business_name']='Other Company'
            elif kind=='service':
                self.ns['GROWTH_SERVICE_LABELS']['pressure_washing']='Pressure washing';self.request['service_key']='pressure_washing'
            elif kind=='territory':self.request['market']='Tucson'
            else:self.request['source_target_id']=self.target['target_id'];self.saved['source_target_id']=None
            with self.assertRaises(HTTPError) as caught:await self.invoke()
            self.assertEqual(caught.exception.status_code,409);self.ns['sample_pdf_response'].assert_not_called()
    async def test_legitimate_scoped_retry_returns_same_five_and_canonical_email_token(self):
        for signed_source in (False,True):
            self.setup();self.request.update(email=self.saved['email'].upper(),business_name=self.saved['business_name'].lower())
            if signed_source:
                self.request.update(business_name=self.saved['business_name'],source_target_id=self.target['target_id'])
            result=await self.invoke()
            self.assertEqual(result['sample'],self.saved['sample_payload']);self.assertEqual(result['sample_id'],str(self.saved['sample_id']))
            self.assertEqual(result['offer_count'],25)
            self.assertEqual(result['small_pack_request_token'],request_fields('secret',str(self.saved['sample_id']),self.saved['email'])['small_pack_request_token'])
    async def test_legacy_retry_preserves_default_pdf_quantity_and_same_saved_five(self):
        self.setup();self.saved['source_target_id']=None;self.target['source_data']={}
        result=await self.invoke(email=self.saved['email'],business_name=self.saved['business_name'])
        self.assertEqual(result['sample'],self.saved['sample_payload']);self.assertNotIn('small_pack_request_token',result)
        self.assertEqual(self.ns['sample_pdf_response'].call_args.kwargs['free_offer_count'],100)

if __name__=='__main__':unittest.main()
