"""Offline census API tests: real parsing/encryption, no network/database writes."""
import asyncio,copy,hashlib,json,sys,unittest,uuid
from datetime import datetime,timezone,timedelta
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
from fastapi import FastAPI,HTTPException
import census_research_api as c
from official_research import FetchedPageReceipt

URL='https://juniper.example/'
E={'@type':'LocalBusiness','name':'Juniper Wash LLC','url':URL,'description':'Commercial pressure washing',
   'telephone':'9285550111','email':'info@juniper.example','address':{'streetAddress':'100 Commercial Way','addressLocality':'Prescott','addressRegion':'AZ','postalCode':'86301'}}
class Request:
 def __init__(self,data):self.data=data
 async def body(self):return json.dumps(self.data).encode()
def receipt(e=E,url=URL,final=None,age=0):
 raw=('<html><script type="application/ld+json">'+json.dumps(e)+'</script><p>Visible service details</p></html>').encode()
 return FetchedPageReceipt(url,final or url,raw,hashlib.sha256(raw).hexdigest(),(datetime.now(timezone.utc)-timedelta(seconds=age)).isoformat(),200,'text/html',())

class Tests(unittest.IsolatedAsyncioTestCase):
 def setup(self):
  self.row=dict(candidate_id=uuid.uuid4(),side='vendor',market='Prescott',category_key='window_cleaning',category_label='Window cleaning',business_name='Juniper Wash LLC',source_url=URL,source_domain='juniper.example',public_phone='9285550111',public_email='info@juniper.example',official_site=True,evidence={'researched_by':'assistant_manual_census'})
  self.row['source_key']=c.raw_source_key(self.row);self.payload=dict(source_keys=[self.row['source_key']],requested_service='pressure_washing')
  self.calls=[];self.rows=[self.row];self.payloads=[];self.holds=0;outer=self
  class Tx:
   async def __aenter__(self):pass
   async def __aexit__(self,*args):pass
  class Conn:
   def transaction(self,**kwargs):outer.calls.append(('transaction',kwargs));return Tx()
   async def fetch(self,sql,*args):outer.calls.append((sql,args));return copy.deepcopy(outer.rows)
  class Pool:
   def acquire(self):return self
   async def __aenter__(self):return Conn()
   async def __aexit__(self,*args):pass
  self.app=FastAPI();self.app.state.pool=Pool()
  def admin(value):
   if value!='admin':raise HTTPException(403,'Forbidden')
  def held():
   self.holds+=1;return True
  async def search(*args):self.calls.append(('search',args));return []
  self.search=search;c.install(self.app,admin,'synthetic-secret',held,search)
  self.endpoint=next(x.endpoint for x in self.app.routes if getattr(x,'path','')=='/api/admin/research-census-review')
 async def run_review(self,body=None,key='admin',fetched=None):
  # Retain actual pinned-owner-key encryption; capture clear payload privately in fixture only.
  original=c.seal_export
  def sealed(payload,request_id):self.payloads.append(copy.deepcopy(payload));return original(payload,request_id)
  with patch.object(c,'fetch_page_receipt',return_value=fetched or receipt()) as fetch,patch.object(c,'seal_export',side_effect=sealed):
   output=await self.endpoint(Request(body or self.payload),'ci-census-request-001',key)
  return output,fetch
 async def test_real_parser_readonly_and_encrypted_proposal_no_mutation(self):
  self.setup();before=copy.deepcopy(self.row);out,fetch=await self.run_review()
  proposal=self.payloads[-1]['proposals'][0]
  self.assertEqual(proposal['status'],'source_proposal_only');self.assertFalse(proposal['native_record_written'])
  self.assertEqual(proposal['parsed_facts']['category_key'],'pressure_washing')
  self.assertEqual(self.row,before);self.assertEqual(self.holds,2);fetch.assert_called_once_with(URL)
  encoded=json.dumps(out)
  for private in ['Juniper','Commercial Way','juniper.example','Prescott','info@']:self.assertNotIn(private,encoded)
  self.assertEqual(out['request_id'],'ci-census-request-001')
  self.assertEqual(self.calls[0],('transaction',{'isolation':'repeatable_read','readonly':True}))
  sql=self.calls[1][0].lower();self.assertTrue(sql.startswith('select '));self.assertNotIn('update ',sql);self.assertNotIn('insert ',sql)
  for fragment in ["side='vendor'","status='discovered'","closed_at is null","assistant_manual_census","qualification_hold","jsonb_build_array(side,market,category_key,business_name,source_url)"]:self.assertIn(fragment,sql)
 async def test_body_limits_raw_identity_urls_and_auth_rejected(self):
  self.setup()
  for body in [dict(self.payload,name='Forbidden'),dict(self.payload,source_url=URL),dict(self.payload,source_keys=[self.row['source_key']]*2),dict(self.payload,source_keys=['x']),dict(self.payload,source_keys=['a'*64,'b'*64,'c'*64]),dict(self.payload,requested_service='unmapped')]:
   with self.assertRaises(HTTPException):await self.run_review(body)
  with self.assertRaises(HTTPException):await self.run_review(key='invalid')
 async def test_ambiguous_or_absent_keys_never_fetch(self):
  self.setup();self.rows=[];out,fetch=await self.run_review();fetch.assert_not_called()
  self.assertEqual(self.payloads[-1]['proposals'][0]['gate_reason'],'exact_unheld_census_key_not_unique_or_not_found')
  self.setup();self.rows=[self.row,self.row];out,fetch=await self.run_review();fetch.assert_not_called()
 async def test_server_hash_identity_zip_contact_and_redirect_reject(self):
  for entity in [{**E,'name':'Juniper Wash Equipment Supply Inc'},
                 {**E,'address':{**E['address'],'postalCode':'91053'}},{**E,'telephone':'9285550199'},
                 {**E,'email':'wrong@juniper.example'}]:
   self.setup();await self.run_review(fetched=receipt(entity));self.assertEqual(self.payloads[-1]['proposals'][0]['status'],'source_review_held')
  for fetched,reason in [(receipt(final='https://thirdparty.example/'),'receipt_domain_binding_unproven'),(receipt(age=600),'receipt_freshness_or_digest_unproven')]:
   self.setup();await self.run_review(fetched=fetched);self.assertEqual(self.payloads[-1]['proposals'][0]['gate_reason'],reason)
  self.setup();self.row['business_name']='Tampered';out,fetch=await self.run_review();fetch.assert_not_called()
 async def test_directory_discovers_only_first_allowed_url_once_no_form(self):
  self.setup();self.row.update(source_url='https://nextdoor.com/listing',official_site=False);self.row['source_key']=c.raw_source_key(self.row);self.payload['source_keys']=[self.row['source_key']]
  async def search(*args):return [{'url':'https://nextdoor.com/x'},{'url':URL},{'url':'https://other.example/'}]
  # Direct helper to use deterministic discovery; only one immutable GET receipt.
  with patch.object(c,'fetch_page_receipt',return_value=receipt()) as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret')
  self.assertEqual(result['status'],'source_proposal_only');fetch.assert_called_once_with(URL)
 async def test_body_and_capsule_byte_bounds_and_postfetch_hold(self):
  self.setup()
  with self.assertRaises(HTTPException):await self.run_review(dict(self.payload,extra='x'*3000))
  self.setup()
  with patch.object(c,'MAX_CAPSULE_BYTES',1):
   with self.assertRaises(HTTPException):await self.run_review()
  self.setup();app=FastAPI();app.state.pool=self.app.state.pool;count=[]
  def held():count.append(1);return len(count)==1
  c.install(app,lambda key:None,'synthetic-secret',held,self.search)
  endpoint=next(x.endpoint for x in app.routes if getattr(x,'path','')=='/api/admin/research-census-review')
  with patch.object(c,'fetch_page_receipt',return_value=receipt()),patch.object(c,'seal_export') as sealed:
   with self.assertRaises(HTTPException):await endpoint(Request(self.payload),'ci-census-request-001','admin')
  sealed.assert_not_called()
 async def test_action_paths_not_fetched_and_key_canonical_tuple(self):
  self.setup()
  values=[self.row[key] for key in ('side','market','category_key','business_name','source_url')]
  self.assertEqual(self.row['source_key'],hashlib.sha256(json.dumps(values,ensure_ascii=False,separators=(', ',': ')).encode()).hexdigest())
  for url in ['https://juniper.example/checkout','https://juniper.example/delete-account','https://juniper.example/contact?submit=yes']:
   self.assertFalse(c.research_get_url(url))
  async def search(*args):return [{'url':'https://juniper.example/checkout'}]
  self.row['official_site']=False
  with patch.object(c,'fetch_page_receipt') as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret')
  fetch.assert_not_called();self.assertEqual(result['gate_reason'],'no_allowed_official_candidate')
 async def test_hold_callback_failure_prevents_fetch_and_database(self):
  self.setup();app=FastAPI();app.state.pool=self.app.state.pool
  def held():return False
  c.install(app,lambda key:None,'synthetic-secret',held,self.search)
  endpoint=next(x.endpoint for x in app.routes if getattr(x,'path','')=='/api/admin/research-census-review')
  with patch.object(c,'fetch_page_receipt') as fetch:
   with self.assertRaises(HTTPException):await endpoint(Request(self.payload),'ci-census-request-001','admin')
  fetch.assert_not_called();self.assertEqual(self.calls,[])
if __name__=='__main__':unittest.main()
