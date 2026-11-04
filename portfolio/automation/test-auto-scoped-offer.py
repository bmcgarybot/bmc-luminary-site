"""Offline delegated policy with real profile, dispatch, consent and row checks."""
import copy,json,sys,unittest,uuid
from pathlib import Path
from datetime import datetime,timedelta,timezone
from unittest.mock import AsyncMock
sys.path.insert(0,str(Path(__file__).parent/'api'))
import auto_scoped_offer as auto
from scoped_growth import signature,VERSION
from scoped_dispatch import authorize_dispatch
from growth_offers import offer_digest
SECRET='synthetic-secret'
class Tx:
 async def __aenter__(self):return self
 async def __aexit__(self,*a):pass
class Tests(unittest.IsolatedAsyncioTestCase):
 def setup(self):
  now=datetime.now(timezone.utc);self.sid=uuid.uuid4();self.oid=uuid.uuid4();ids=[str(uuid.uuid4()) for _ in range(25)]
  scope={'ideal_customer':'property management','exclusions':'','category_keys':['property_management'],'observed_sector_phrases':['multi-tenant properties']}
  p=dict(version=VERSION,target_id='new-target',candidate_id=str(uuid.uuid4()),business_name='Synthetic Contractor',email='known@example.test',market='Phoenix',service_key='pressure_washing',source_url='https://contractor.example/',scope=scope,candidate_ids=ids,sample_ids=ids[:5],pack_count=25,amount_cents=14900,includes_free_five=True,state='approved',nonexclusive=True,expires_at=(now+timedelta(days=1)).isoformat())
  self.profile=dict(p,signature=signature(p,SECRET))
  self.target=dict(target_id=p['target_id'],business_name=p['business_name'],public_email=p['email'],market=p['market'],service_key=p['service_key'],source_url=p['source_url'],status='ready',source_data={'scoped_offer':self.profile})
  self.waves={'pressure_washing':'synthetic-wave'}
  self.target['source_data']['scoped_dispatch']=authorize_dispatch(self.target,SECRET,'request_fixture','synthetic-wave')
  self.scopes={'new-target':'synthetic-wave'}
  self.sample=dict(sample_id=self.sid,email=p['email'],business_name=p['business_name'],provider_service_key=p['service_key'],market=p['market'],selected_markets=['Phoenix'],ideal_customer=scope['ideal_customer'],exclusions='',source_target_id=p['target_id'],status='delivered',converted_at=None,order_id=None)
  self.rows=[dict(candidate_id=cid,business_name='Synthetic Business '+str(i),market='Phoenix',fit_reason='Exterior assessment',sales_angle='Ask maintenance authority',public_email='business'+str(i)+'@example.test',public_phone='',source_url='https://business'+str(i)+'.example/',fit_score=80) for i,cid in enumerate(ids)]
  self.payload=dict(business=p['business_name'],service_key=p['service_key'],territory=['Phoenix'],ideal_customer=scope['ideal_customer'],exclusions='',rows=self.rows,scoped_profile_signature=self.profile['signature'])
  self.offer=dict(offer_id=self.oid,sample_id=self.sid,product_key='growth_pack_25',email=p['email'],parent_order_id=None,paid_order_id=None,approved_at=None,status='draft',expires_at=now+timedelta(days=3),payload=self.payload,payload_sha256=offer_digest(self.payload))
  self.marker=auto.request_marker(self.oid,self.sid,p['email'],self.profile['signature'],SECRET)
  self.product=dict(product_key='growth_pack_25',amount_cents=14900,currency='usd',active=True,payment_link_url='https://buy.stripe.com/synthetic149')
  self.suppressed=False;self.events=[];self.calls=[];self.originals=copy.deepcopy(self.rows[:5]);self.current=AsyncMock(side_effect=lambda conn,offer:copy.deepcopy(self.payload));outer=self
  class Conn:
   def transaction(self):return Tx()
   async def execute(self,sql,*args):
    outer.calls.append((sql,args))
    if 'insert into events' in sql:outer.events.append((sql,args))
   async def fetch(self,sql,*args):
    outer.calls.append((sql,args))
    if 'select f.offer_id' in sql:
     return [] if not outer.marker or outer.offer['status']!='draft' or any('auto_scoped_offer_review_needed' in e[0] for e in outer.events) else [{'offer_id':outer.oid}]
    if 'growth_sample_prospects' in sql:return outer.originals
    raise AssertionError(sql)
   async def fetchrow(self,sql,*args):
    outer.calls.append((sql,args))
    if 'growth_purchase_offers' in sql:return outer.offer
    if 'growth_sample_requests' in sql:return outer.sample
    if 'growth_outreach_targets' in sql:return outer.target
    if 'from products' in sql:return outer.product
    raise AssertionError(sql)
   async def fetchval(self,sql,*args):
    outer.calls.append((sql,args))
    if 'select 1 from events' in sql:return 1 if any('auto_scoped_offer_review_needed' in e[0] for e in outer.events) else None
    if 'select payload from events' in sql:return outer.marker
    if 'outreach_suppressions' in sql:return 1 if outer.suppressed else None
    if 'update growth_purchase_offers' in sql:
     outer.offer.update(status='approved',approved_at=now,expires_at=args[1]);return outer.oid
    raise AssertionError(sql)
  self.conn=Conn()
 async def run_policy(self,enabled=True):return await auto.auto_approve_requested_scoped_offers(self.conn,SECRET,self.scopes,self.current,enabled=enabled)
 async def test_default_disabled_performs_no_reads_or_writes(self):
  self.setup();result=await auto.auto_approve_requested_scoped_offers(self.conn,SECRET,self.scopes,self.current)
  self.assertEqual(result['approved'],0);self.assertEqual(self.calls,[])
 async def test_real_signatures_customer_request_current25_frozen5_and_expiry_approve_once(self):
  self.setup();result=await self.run_policy()
  self.assertEqual(result,dict(enabled=True,approved=1,needs_review=0));self.assertEqual(self.offer['expires_at'],datetime.fromisoformat(self.profile['expires_at']))
  self.current.assert_awaited_once();self.assertEqual((await self.run_policy())['approved'],0)
  audit=[args for sql,args in self.events if "'owner_approved'" in sql][0]
  self.assertEqual(audit[1],'owner_delegated_fixed25_policy')
  sql=' '.join(x[0] for x in self.calls);self.assertIn("status='draft' and payload_sha256=$3",sql)
  self.assertNotIn('insert into orders',sql);self.assertNotIn('mail_delivery',sql)
 async def test_admin_prepared_without_customer_consent_is_not_selected(self):
  self.setup();self.marker=None;self.assertEqual((await self.run_policy())['approved'],0);self.current.assert_not_awaited()
 async def test_actual_requested_failures_surface_once_and_never_approve(self):
  changes=('product','price','currency','url','http_url','query_url','inactive','target_email','sample_email','offer_email','expired','suppressed','legacy_dispatch','tampered_dispatch','profile_price','draft_profile','nonexclusive','payload_hash','changed_current','thin25','frozen5','territory','request_signature','request_profile','already_converted')
  for change in changes:
   with self.subTest(change=change):
    self.setup()
    if change=='product':self.offer['product_key']='growth_upgrade_75'
    elif change in ('price','currency','url','http_url','query_url','inactive'):
     key,val={'price':('amount_cents',15000),'currency':('currency','eur'),'url':('payment_link_url','https://example.test/payment'),'http_url':('payment_link_url','http://buy.stripe.com/foo'),'query_url':('payment_link_url','https://buy.stripe.com/foo?amount=1'),'inactive':('active',False)}[change];self.product[key]=val
    elif change=='target_email':self.target['public_email']='other@example.test'
    elif change=='sample_email':self.sample['email']='other@example.test'
    elif change=='offer_email':self.offer['email']='other@example.test'
    elif change=='expired':self.offer['expires_at']=datetime.now(timezone.utc)-timedelta(seconds=1)
    elif change=='suppressed':self.suppressed=True
    elif change=='legacy_dispatch':self.target['source_data'].pop('scoped_dispatch')
    elif change=='tampered_dispatch':self.target['source_data']['scoped_dispatch']['signature']='0'*64
    elif change in ('profile_price','draft_profile','nonexclusive'):
     self.profile[{'profile_price':'amount_cents','draft_profile':'state','nonexclusive':'nonexclusive'}[change]]={'profile_price':100,'draft_profile':'draft','nonexclusive':False}[change]
    elif change=='payload_hash':self.offer['payload_sha256']='0'*64
    elif change=='changed_current':self.current.side_effect=lambda *a:dict(self.payload,extra='changed')
    elif change=='thin25':self.payload['rows']=self.rows[:24];self.offer['payload_sha256']=offer_digest(self.payload)
    elif change=='frozen5':self.originals[0]['public_email']='changed@example.test'
    elif change=='territory':self.sample['selected_markets']=['Sedona']
    elif change=='request_signature':self.marker['signature']='0'*64
    elif change=='request_profile':self.marker=auto.request_marker(self.oid,self.sid,self.sample['email'],'changed',SECRET)
    elif change=='already_converted':self.sample['converted_at']=datetime.now(timezone.utc)
    result=await self.run_policy();self.assertEqual(result['approved'],0);self.assertEqual(result['needs_review'],1);self.assertEqual(self.offer['status'],'draft')
    self.assertTrue(any('insert into exceptions' in sql for sql,_ in self.calls))
    self.assertEqual((await self.run_policy())['needs_review'],0)
 async def test_request_signatures_cannot_move_offer_or_sample(self):
  for field in ('offer_id','sample_id','email','amount_cents','confirmed'):
   self.setup();self.marker[field]='tampered'
   self.assertEqual((await self.run_policy())['needs_review'],1)
   self.assertEqual(self.offer['status'],'draft')
 async def test_waiting_second_worker_rechecks_failed_marker_under_lock(self):
  self.setup();self.suppressed=True;await self.run_policy()
  original=self.conn.fetch
  async def stale_selection(sql,*args):
   if 'select f.offer_id' in sql:return [{'offer_id':self.oid}]
   return await original(sql,*args)
  self.conn.fetch=stale_selection
  count=len(self.events);result=await self.run_policy()
  self.assertEqual(result['needs_review'],0);self.assertEqual(len(self.events),count)
 async def test_callback_private_error_not_logged(self):
  self.setup();self.current.side_effect=ValueError('private source details token=secret')
  self.assertEqual((await self.run_policy())['needs_review'],1);self.assertNotIn('private source details',str(self.calls))
if __name__=='__main__':unittest.main()
