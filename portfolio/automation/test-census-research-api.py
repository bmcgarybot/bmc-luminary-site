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
 async def test_directory_discovers_first_identity_qualified_url_once_no_form(self):
  self.setup();self.row.update(source_url='https://nextdoor.com/listing',official_site=False);self.row['source_key']=c.raw_source_key(self.row);self.payload['source_keys']=[self.row['source_key']]
  async def search(*args):return [{'url':'https://nextdoor.com/x','title':'Juniper Wash LLC'},{'url':URL,'title':'Juniper Wash LLC | Official services'},{'url':'https://other.example/','title':'Other Contractor'}]
  # Direct helper to use deterministic discovery; only one immutable GET receipt.
  with patch.object(c,'fetch_page_receipt',return_value=receipt()) as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret')
  self.assertEqual(result['status'],'source_proposal_only');fetch.assert_called_once_with(URL)
 async def test_bob_discovery_skips_hibob_login_and_fetches_exact_contractors_only(self):
  self.setup();row=dict(self.row,business_name="Bob's Tree and Landscaping",market='Camp Verde',category_key='landscaping',
    source_url='https://campverdebiz.com/hwy-260-east',source_domain='campverdebiz.com',official_site=False,public_email=None,public_phone='9285676744')
  row['source_key']=c.raw_source_key(row);correct='https://bobstreeandlandscaping.com/'
  async def search(*args):
   self.assertEqual(args[1:],(1,5))
   return [{'url':'https://app.hibob.com/','title':'Customer login','snippet':'HiBob customer login'},
     {'url':'https://bobstreeandlandscaping.com/','title':"Bob’s Tree and Landscaping | Camp Verde",'snippet':'Landscaping and tree services in Camp Verde.'}]
  e={'@type':'LocalBusiness','name':row['business_name'],'url':correct,'description':'Landscape design and landscape maintenance',
     'telephone':'9285676744','address':{'streetAddress':'100 Commercial Way','addressLocality':'Camp Verde','addressRegion':'AZ','postalCode':'86322'}}
  with patch.object(c,'fetch_page_receipt',return_value=receipt(e,url=correct)) as fetch:
   result=await c.review_row(row,'landscaping',search,'synthetic-secret')
  fetch.assert_called_once_with(correct)
  self.assertEqual(result['status'],'source_proposal_only');self.assertFalse(result['native_record_written'])
  self.assertEqual(result['discovery_identity_basis'],'exact_business_name_in_search_text')

 async def test_portal_identity_text_and_name_like_host_never_substitute_for_relevance(self):
  self.setup();self.row.update(source_url='https://nextdoor.com/listing',official_site=False);self.row['source_key']=c.raw_source_key(self.row)
  async def search(*args):return [
    {'url':'https://app.juniper.example/','title':'Juniper Wash LLC'},
    {'url':'https://juniper.example/sign-in','title':'Juniper Wash LLC'},
    {'url':'https://juniper.example/','title':'Customer login','snippet':'Juniper Wash LLC'},
    {'url':'https://juniperwashllc.example/','title':'Unrelated company','snippet':'Other services'},
    {'url':'https://other.example/','title':'Juniper','snippet':'Wash LLC'}]
  with patch.object(c,'fetch_page_receipt') as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret')
  fetch.assert_not_called();self.assertEqual(result['gate_reason'],'no_identity_qualified_official_candidate')

 async def test_exact_name_snippet_ampersand_and_bound_five_search_results(self):
  self.setup();row=dict(self.row,business_name='Juniper & Wash LLC')
  self.assertTrue(c.discovery_identity_match(row,{'url':URL,'title':'Local exterior services','snippet':'Juniper and Wash LLC serving Prescott.'}))
  self.assertFalse(c.discovery_identity_match(row,{'url':URL,'title':'Juniper equipment Wash'}))
  self.row.update(source_url='https://nextdoor.com/listing',official_site=False);self.row['source_key']=c.raw_source_key(self.row)
  async def search(*args):return [{'url':f'https://other{i}.example/','title':'Unrelated'} for i in range(5)]+[{'url':URL,'title':'Juniper Wash LLC'}]
  with patch.object(c,'fetch_page_receipt') as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret')
  fetch.assert_not_called();self.assertEqual(result['gate_reason'],'no_identity_qualified_official_candidate')

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
 async def test_held_schema_observations_unverified_and_specific_mismatch_reasons(self):
  cases=[({key:value for key,value in E.items() if key!='address'},'structured_identity_location_service_or_contact_unproven'),
         ({**E,'name':'Juniper Wash Equipment Supply Inc'},'exact_legal_name_mismatch'),
         ({**E,'email':'new@juniper.example'},'public_email_mismatch')]
  for entity,reason in cases:
   self.setup();entity=dict(entity,alternateName='Juniper Mobile Wash',areaServed=[{'@type':'City','name':'Prescott','addressRegion':'AZ'}])
   out,fetch=await self.run_review(fetched=receipt(entity));proposal=self.payloads[-1]['proposals'][0]
   self.assertEqual(proposal['status'],'source_review_held');self.assertEqual(proposal['gate_reason'],reason)
   self.assertEqual(proposal['original_source_url'],URL);self.assertEqual(proposal['source_url'],URL)
   self.assertEqual(proposal['source_receipt_sha256'],receipt(entity).content_sha256)
   observations=proposal['unverified_schema_observations'];self.assertIs(observations['physical_address_verified'],False)
   self.assertIs(observations['provider_accepted'],False);self.assertEqual(observations['status'],'unverified_published_schema_only')
   self.assertEqual(observations['nodes'][0]['alternateName'],'Juniper Mobile Wash')
   self.assertNotIn('parsed_record',proposal);self.assertNotIn('Juniper',json.dumps(out));fetch.assert_called_once()
 def test_schema_diagnostic_depth_node_string_byte_and_key_bounds(self):
  nodes=[{'@type':'LocalBusiness','name':'Fixture '+str(i),'alternateName':['x'*2000]*20,
          'description':'<b>inert</b>\x00'+'z'*5000,'url':'javascript:alert(1)',
          'password':'SECRET-OMIT','arbitrary':'SECRET-OMIT',
          'areaServed':{'address':{'address':{'address':{'name':'TOO-DEEP'}}}}} for i in range(20)]
  result=c.published_schema_observations('<script type="application/ld+json">'+json.dumps({'@graph':nodes})+'</script>')
  self.assertLessEqual(len(result['nodes']),6);self.assertGreater(len(result['nodes']),0)
  encoded=json.dumps(result);self.assertLessEqual(len(encoded.encode()),12000)
  self.assertNotIn('SECRET-OMIT',encoded);self.assertNotIn('javascript:',encoded);self.assertNotIn('<b>',encoded);self.assertNotIn('TOO-DEEP',encoded)
  self.assertLessEqual(len(result['nodes'][0]['description']),800);self.assertLessEqual(len(result['nodes'][0]['alternateName']),6)
  malformed=c.published_schema_observations('<script type="application/ld+json">{bad}</script>')
  self.assertEqual(malformed['nodes'],[])
 async def test_fetch_errors_only_trusted_static_reason_never_arbitrary_text(self):
  for error,reason in [(ValueError(code),code) for code in ('http_403','http_404','http_429','not_html','page_too_large','redirect_limit')]+[(TimeoutError('private timeout detail'),'timeout'),(RuntimeError('private SQL password secret'),'fetch_unavailable'),(ValueError('http_500 private details'),'fetch_unavailable')]:
   self.setup()
   with patch.object(c,'fetch_page_receipt',side_effect=error):
    result=await c.review_row(self.row,'pressure_washing',self.search,'synthetic-secret')
   self.assertEqual(result['status'],'source_review_held');self.assertEqual(result['gate_reason'],'fetch_unavailable')
   self.assertEqual(result['fetch_failure_reason'],reason);self.assertNotIn('private',json.dumps(result))
   self.assertNotIn('unverified_schema_observations',result)
 async def test_hold_callback_failure_prevents_fetch_and_database(self):
  self.setup();app=FastAPI();app.state.pool=self.app.state.pool
  def held():return False
  c.install(app,lambda key:None,'synthetic-secret',held,self.search)
  endpoint=next(x.endpoint for x in app.routes if getattr(x,'path','')=='/api/admin/research-census-review')
  with patch.object(c,'fetch_page_receipt') as fetch:
   with self.assertRaises(HTTPException):await endpoint(Request(self.payload),'ci-census-request-001','admin')
  fetch.assert_not_called();self.assertEqual(self.calls,[])
 async def test_optional_existing_false_flag_v2_requires_real_visible_proof_not_flag_override(self):
  self.setup();self.row['official_site']=False
  document='<title>Juniper Wash LLC</title><main><p>Juniper Wash LLC provides commercial pressure washing.</p><p>We serve Prescott, Arizona.</p></main><p>928-555-0111</p><a href="mailto:info@juniper.example">Email</a>'
  raw=document.encode();r=FetchedPageReceipt(URL,URL,raw,hashlib.sha256(raw).hexdigest(),datetime.now(timezone.utc).isoformat(),200,'text/html',())
  original=copy.deepcopy(self.row);search_calls=[]
  async def search(*args):search_calls.append(args);return []
  with patch.object(c,'fetch_page_receipt',return_value=r) as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret',try_existing_source=True)
  self.assertEqual(result['status'],'source_proposal_only');self.assertEqual(result['discovery_identity_basis'],'fresh_existing_source_verified')
  self.assertEqual(result['parsed_facts']['verifier'],'vps_vendor_published_area_v2')
  self.assertTrue(c.auto_evidence_valid({**self.row,**result['parsed_record'],'category_key':'pressure_washing'},'synthetic-secret'))
  self.assertEqual(self.row,original);self.assertFalse(self.row['official_site']);self.assertEqual(search_calls,[]);fetch.assert_called_once_with(URL)
  with patch.object(c,'fetch_page_receipt') as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret')
  fetch.assert_not_called();self.assertEqual(result['status'],'source_review_held')
 async def test_existing_false_flag_v1_valid_and_wrong_identity_phone_hold(self):
  for entity,valid in [(E,True),({**E,'name':'Other Business'},False),({**E,'telephone':'9285559999'},False)]:
   self.setup();self.row['official_site']=False
   async def search(*args):return []
   with patch.object(c,'fetch_page_receipt',return_value=receipt(entity)) as fetch:
    result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret',try_existing_source=True)
   self.assertEqual(result['status']=='source_proposal_only',valid);self.assertEqual(fetch.call_count,1)
   if valid:self.assertEqual(result['discovery_identity_basis'],'fresh_existing_source_verified')
 async def test_existing_fetch_failure_discovery_fallback_at_most_two_sources(self):
  self.setup();self.row['official_site']=False;fallback='https://juniper.example/contact'
  async def search(*args):return [{'url':URL,'title':'Juniper Wash LLC'}, {'url':fallback,'title':'Juniper Wash LLC official website'}, {'url':'https://third.example/','title':'Juniper Wash LLC'}]
  with patch.object(c,'fetch_page_receipt',side_effect=[ValueError('http_403'),receipt(url=fallback)]) as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret',try_existing_source=True)
  self.assertEqual(result['status'],'source_proposal_only');self.assertEqual(result['discovery_identity_basis'],'exact_business_name_in_search_text')
  self.assertEqual([call.args[0] for call in fetch.call_args_list],[URL,fallback])
  with patch.object(c,'fetch_page_receipt',side_effect=ValueError('http_403')) as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret',try_existing_source=True)
  self.assertEqual(fetch.call_count,2);self.assertEqual(result['status'],'source_review_held')
 async def test_existing_policy_never_fetches_blocked_url_or_cross_domain_redirect(self):
  self.setup();self.row['official_site']=False;self.row['source_url']='https://yelp.com/biz/juniper';self.row['source_key']=c.raw_source_key(self.row)
  async def search(*args):return []
  with patch.object(c,'fetch_page_receipt') as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret',try_existing_source=True)
  fetch.assert_not_called();self.assertEqual(result['status'],'source_review_held')
  self.setup();self.row['official_site']=False
  from dataclasses import replace
  with patch.object(c,'fetch_page_receipt',return_value=replace(receipt(),redirect_chain=('https://third.example/contact',))) as fetch:
   result=await c.review_row(self.row,'pressure_washing',search,'synthetic-secret',try_existing_source=True)
  self.assertEqual(result['gate_reason'],'receipt_domain_binding_unproven');self.assertNotIn('parsed_record',result)
if __name__=='__main__':unittest.main()
