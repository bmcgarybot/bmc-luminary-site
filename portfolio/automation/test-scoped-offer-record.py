"""Actual offer preparation/current-payload gates; native HMAC synthetic fixtures only."""
import ast,copy,json,re,runpy,sys,unittest,uuid
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import AsyncMock
sys.path.insert(0,str(Path(__file__).parent/'api'))
import growth_offers
from official_research import parse_record,auto_evidence_valid
from scoped_growth import prepare_profile,profile_for_target,signature
class HTTPError(Exception):
    def __init__(self,status,detail):self.status_code=status;super().__init__(detail)
class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self):
        f=runpy.run_path(str(Path(__file__).with_name('test-scoped-growth.py')))['Tests']();f.setup()
        self.target=f.target;packet=f.packet;self.rows=[]
        for i,cid in enumerate(packet['binding']['candidate_ids']):
            row=dict(candidate_id=uuid.UUID(cid),side='buyer',market='Phoenix',category_key='insurance_professional',category_label='Office',business_name=f'Synthetic Office {i:02}')
            entity={'@type':'ProfessionalService','name':row['business_name'],'url':f'https://fixture.example/office-{i}','telephone':f'602555{i:04}','address':{'streetAddress':f'{100+i} Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
            row.update(parse_record(row,entity['url'],'<script type="application/ld+json">'+json.dumps(entity)+'</script>','a'*64,'secret'))
            row.update(status='discovered',closed_at=None,last_verified_at=datetime.now(timezone.utc),fit_score=90,grade='A',fit_reason='Published office premises.',sales_angle='Ask about cleaning.')
            self.rows.append(row)
        packet['artifacts']={5:dict(rows=self.rows[:5]),25:dict(rows=self.rows)};packet['binding']['scope'].update(ideal_customer='office',exclusions='')
        profile=prepare_profile(packet,self.target['target_id'],'secret');profile.pop('signature');profile['state']='approved';profile['signature']=signature(profile,'secret')
        self.target['source_data']={'scoped_offer':profile}
        self.sid=uuid.uuid4();self.sample=dict(sample_id=self.sid,source_target_id=self.target['target_id'],status='delivered',converted_at=None,order_id=None,email=self.target['public_email'],business_name=self.target['business_name'],provider_service_key='commercial_cleaning',market='Phoenix',ideal_customer='office',exclusions='')
        self.offer=None;self.inserts=[];self.executes=[];outer=self
        class Conn:
            async def execute(self,sql,*args):
                assert sql=='select pg_advisory_xact_lock(20261027, 5182)';outer.executes.append(sql)
            async def fetchrow(self,sql,*args):
                assert sql.lstrip().startswith('select')
                if 'growth_outreach_targets' in sql:return outer.target
                if 'growth_sample_requests' in sql:return outer.sample
                if 'growth_purchase_offers' in sql:return outer.offer
                raise AssertionError(sql)
            async def fetch(self,sql,*args):
                if 'growth_sample_prospects' in sql:return outer.rows[:5]
                if 'market_inventory_candidates' in sql:return outer.rows
                raise AssertionError(sql)
            async def fetchval(self,sql,*args):
                if sql.lstrip().startswith('select count(*) from growth_prospect_suppressions'):return 0
                assert sql.lstrip().startswith('insert into growth_purchase_offers')
                outer.inserts.append(args);payload=json.loads(args[4])
                outer.offer=dict(offer_id=uuid.uuid4(),sample_id=outer.sid,parent_order_id=None,paid_order_id=None,product_key=args[2],email=args[3],payload=payload,payload_sha256=args[5],status='draft')
                return outer.offer['offer_id']
        self.conn=Conn();self.candidates=self.rows[5:]+[dict(self.rows[-1],candidate_id=uuid.uuid4(),category_key='retail')]
        self.qualify=AsyncMock(side_effect=lambda *args,**kw:self.candidates)
        names={'growth_target_scoped_profile','growth_scoped_profile_for_sample','growth_prepare_purchase_offer_record','growth_offer_payload_current','growth_saved_sample_is_current','growth_prospect_key','growth_contact_key','growth_recipient_business_key','growth_lock_exposure_allocator'}
        tree=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text());nodes=[n for n in tree.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        ns=dict(ADMIN_KEY='secret',profile_for_target=profile_for_target,HTTPException=HTTPError,growth_offers=growth_offers,uuid=uuid,json=json,re=re,clean=lambda v:str(v or '').strip(),json_dict=lambda v:json.loads(v) if isinstance(v,str) else v,
            growth_request_territory=lambda r:[r['market']],growth_qualified_territory_candidates=self.qualify,
            growth_candidate_evidence_valid=lambda row,market:auto_evidence_valid(row,'secret') and row['market']==market,
            growth_candidate_is_fresh=lambda row:row['last_verified_at']>datetime(2026,1,1,tzinfo=timezone.utc),growth_candidate_score=lambda row,key:row['fit_score'],GROWTH_SOURCE_BLOCKLIST=())
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_offer_record','exec'),ns);self.ns=ns
    async def prepare(self,tier='growth_pack_25'):
        return await self.ns['growth_prepare_purchase_offer_record'](self.conn,dict(sample_id=str(self.sid),product_key=tier))
    async def test_approved25_exact_order_draft_hash_and_current_native_payload(self):
        self.setup();result=await self.prepare();payload=self.offer['payload']
        self.assertEqual((result['prospect_count'],result['amount_cents'],result['status'],result['checkout_url']),(25,14900,'draft',''))
        self.assertEqual([r['candidate_id'] for r in payload['rows']],[str(r['candidate_id']) for r in self.rows])
        self.assertEqual(payload['scoped_profile_signature'],self.target['source_data']['scoped_offer']['signature'])
        self.assertEqual(self.offer['payload_sha256'],growth_offers.offer_digest(payload))
        self.assertEqual(await self.ns['growth_offer_payload_current'](self.conn,self.offer),payload)
        again=await self.prepare();self.assertTrue(again['unchanged']);self.assertEqual(len(self.inserts),1)
    async def test_missing_frozen_id_wrong_category_scope_email_and_draft_reject(self):
        for kind in ('missing','category','scope','email','draft','tier75','strategy'):
            self.setup()
            if kind=='missing':self.candidates=self.candidates[1:]
            elif kind=='category':self.candidates[0]=dict(self.candidates[0],category_key='retail')
            elif kind=='scope':self.sample['ideal_customer']='retail'
            elif kind=='email':self.sample['email']='another@example.test'
            elif kind=='draft':
                p=self.target['source_data']['scoped_offer'];p.pop('signature');p['state']='draft';p['signature']=signature(p,'secret')
            tier={'tier75':'growth_upgrade_75','strategy':'growth_strategy_addon'}.get(kind,'growth_pack_25')
            with self.assertRaises((HTTPError,ValueError)):await self.prepare(tier)
            self.assertEqual(self.inserts,[],kind)
    async def test_current_guard_rejects_profile_signature_id_and_native_source_drift(self):
        for kind in ('signature','ids','source'):
            self.setup();await self.prepare()
            if kind=='signature':
                p=self.target['source_data']['scoped_offer'];p.pop('signature');p['approved_at']='2026-11-04T00:00:00Z';p['signature']=signature(p,'secret')
            elif kind=='ids':
                self.offer['payload']['rows'].reverse();self.offer['payload_sha256']=growth_offers.offer_digest(self.offer['payload'])
            else:self.rows[6]['public_phone']='6025559999'
            with self.assertRaises((ValueError,HTTPError)):await self.ns['growth_offer_payload_current'](self.conn,self.offer)
    async def test_legacy_sample_preserves_no_scoped_signature_behavior(self):
        self.setup();self.sample['source_target_id']=None
        result=await self.prepare();self.assertEqual(result['prospect_count'],25)
        self.assertIsNone(self.offer['payload']['scoped_profile_signature']);self.assertEqual(self.offer['status'],'draft')
        self.assertEqual(len(self.inserts),1)

if __name__=='__main__':unittest.main()
