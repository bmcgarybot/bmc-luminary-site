"""Native scoped junk removal through actual qualifier/compiler; offline neutral fixtures."""
import ast,copy,hashlib,json,re,runpy,sys,unittest,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
from unittest.mock import AsyncMock,patch
ROOT=Path(__file__).parent;sys.path.insert(0,str(ROOT/'api'))
import official_research as native
import qualification_scope as scope
import held_packet_api as api
from scoped_growth import signature,VERSION
SECRET='synthetic-secret'
class Tests(unittest.IsolatedAsyncioTestCase):
 def setup(self):
  self.now=datetime.now(timezone.utc);self.url='https://junk-contractor.example/'
  entity={'@type':'LocalBusiness','name':'Synthetic Junk Contractor','url':self.url,'email':'junk@example.test','telephone':'6025550100','description':'Commercial junk removal',
      'address':{'streetAddress':'100 Commercial Lane','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
  self.doc='<script type="application/ld+json">'+json.dumps(entity)+'</script><section><h2>Commercial Junk Removal</h2><p>We provide junk hauling for property managers and retail stores.</p></section>'
  self.digest=hashlib.sha256(self.doc.encode()).hexdigest()
  row=dict(candidate_id=uuid.uuid4(),side='vendor',category_key='junk_hauling',category_label='Junk hauling',business_name=entity['name'],market='Phoenix')
  self.vendor=dict(row,**native.parse_record(row,self.url,self.doc,self.digest,SECRET))
  self.focus=dict(api.source_focus(self.doc,'junk_hauling'),source_url=self.url,content_sha256=self.digest,checked_at=self.vendor['checked_at'],source_signature=self.vendor['evidence']['vps_verification']['signature'])
  self.receipt=native.FetchedPageReceipt(self.url,self.url,self.doc.encode(),self.digest,self.now.isoformat(),200,'text/html',())
  self.grant=scope.from_fresh(self.vendor,self.focus,self.receipt,SECRET)
  self.binding=dict(service_key='junk_hauling',market='Phoenix',email='junk@example.test',recipient_business_key=scope.business_key(entity['name']),ideal_customer=self.focus['ideal_customer'],exclusions='')
  fixture=runpy.run_path(str(ROOT/'test-qualification-scope.py'))['Tests']();self.ns=fixture.namespace()
  tree=ast.parse((ROOT/'api/app.py').read_text())
  for node in tree.body:
   if isinstance(node,ast.Assign) and any(isinstance(t,ast.Name) and t.id in ('GROWTH_SERVICE_LABELS','GROWTH_WAVES','GROWTH_LANDING_PATHS') for t in node.targets):
    exec(compile(ast.Module(body=[node],type_ignores=[]),'actual_junk_maps','exec'),self.ns)
  self.rows=[];self.queries=[]
  for i in range(25):
   c=dict(candidate_id=uuid.uuid4(),side='buyer',market='Phoenix',category_key='property_management',category_label='Property management',business_name='Synthetic Property Manager '+str(i))
   e={'@type':'RealEstateAgent','name':c['business_name'],'url':f'https://manager{i}.example/','email':f'manager{i}@example.test','telephone':'6025550101','description':'Property management',
      'address':{'streetAddress':f'{200+i} Business Lane','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
   self.rows.append(dict(c,**native.parse_record(c,e['url'],'<script type="application/ld+json">'+json.dumps(e)+'</script>','a'*64,SECRET),last_verified_at=self.now))
  outer=self
  class Conn:
   async def fetchrow(self,sql,*args):return outer.vendor
   async def fetchval(self,sql,*args):return False
   async def fetch(self,sql,*args):outer.queries.append(args);return [copy.deepcopy(r) for r in outer.rows if r['category_key'] in args[1]]
  self.conn=Conn()
 async def test_actual_qualifier_requires_grant_and_queries_only_observed_sectors(self):
  self.setup();qualify=self.ns['growth_qualified_candidates'];kwargs=dict(recipient_key=self.binding['email'],recipient_business_key=self.binding['recipient_business_key'])
  self.assertEqual(await qualify(self.conn,'junk_hauling','Phoenix',self.focus['ideal_customer'],'',**kwargs),[]);self.assertEqual(self.queries,[])
  diagnostic=[];rows=await qualify(self.conn,'junk_hauling','Phoenix',self.focus['ideal_customer'],'',_qualification_scope=self.grant,_qualification_diagnostics=diagnostic,**kwargs)
  self.assertEqual(len(rows),25);self.assertEqual(set(self.queries[-1][1]),{'property_management','retail'})
  self.assertEqual(diagnostic[0]['qualified_rows'],25);self.assertIn('cleanouts',rows[0]['sales_angle']);self.assertIn('not a reported junk problem',rows[0]['fit_reason'])
  self.assertNotIn('cleaning',rows[0]['sales_angle']);self.assertEqual(self.ns['GROWTH_BUYER_CATEGORIES']['junk_hauling'],[])
 async def test_actual_native_compiler_retains_five_and_signed_service_grant(self):
  self.setup();grants=[]
  async def qualify(conn,service,markets,**kwargs):
   grants.append(kwargs['_qualification_scope']);return await self.ns['growth_qualified_candidates'](conn,service,markets[0],**kwargs)
  callbacks=dict(qualify=qualify,select_sample=lambda rows,email:rows[:5],public_rows=lambda rows:rows,csv_bytes=lambda rows:b'csv',recipient_business_key=scope.business_key)
  with patch.object(native,'fetch_page_receipt',return_value=self.receipt),patch('held_packets.render_sample_pdf',return_value=b'pdf'):
   packet=await api.compile_native_packet(self.conn,self.vendor['candidate_id'],SECRET,frozenset(str(uuid.uuid4()) for _ in range(9)),lambda:True,callbacks,25)
  self.assertEqual(packet['pack_count'],25);self.assertEqual(len(packet['artifacts'][25]['rows']),25)
  self.assertEqual(packet['artifacts'][5]['rows'],packet['artifacts'][25]['rows'][:5]);self.assertTrue(all(g['service_key']=='junk_hauling' for g in grants));self.assertTrue(packet['outreach_held'])
 async def test_junk_thin25_and_unsupported100_hold_without_padding(self):
  self.setup();callbacks=dict(qualify=AsyncMock(),select_sample=lambda rows,email:rows[:5],public_rows=lambda rows:rows,csv_bytes=lambda rows:b'csv',recipient_business_key=scope.business_key)
  with patch.object(native,'fetch_page_receipt') as fetch:
   with self.assertRaisesRegex(ValueError,'unsupported_junk_pack_count'):
    await api.compile_native_packet(self.conn,self.vendor['candidate_id'],SECRET,(),lambda:True,callbacks,100)
   fetch.assert_not_called()
  self.rows=self.rows[:24]
  async def qualify(conn,service,markets,**kwargs):return await self.ns['growth_qualified_candidates'](conn,service,markets[0],**kwargs)
  callbacks['qualify']=qualify
  with patch.object(native,'fetch_page_receipt',return_value=self.receipt):
   with self.assertRaisesRegex(ValueError,'Qualified sample reserve is incomplete'):
    await api.compile_native_packet(self.conn,self.vendor['candidate_id'],SECRET,(),lambda:True,callbacks,25)
 def test_visible_scope_exclusions_hidden_footer_and_no_cross_service_grant(self):
  self.setup();self.assertEqual(scope.validate(self.grant,SECRET,**self.binding),['property_management','retail'])
  for document in ('<h2>Junk hauling</h2><p>Residential gardens only.</p>',
      '<h2>Commercial junk removal</h2><p>We do not serve property managers and retail stores.</p>',
      '<p>We exclude:</p><ul><li>Junk hauling for property managers.</li></ul>',
      '<footer><p>Commercial junk removal for property managers.</p></footer>',
      '<p hidden>Commercial junk removal for property managers.</p>',
      '<p style="display:none">Commercial junk removal for property managers.</p>',
      '<div><h2>Commercial junk removal</h2></div><div><p>Property managers.</p></div>',
      '<p>Office cleaning for retail stores.</p>'):
   with self.subTest(document=document),self.assertRaises(ValueError):api.source_focus(document,'junk_hauling')
  with self.assertRaises(ValueError):scope.validate(self.grant,SECRET,**dict(self.binding,service_key='pressure_washing'))
  with self.assertRaises(ValueError):scope.validate(dict(self.grant,category_keys=['restaurants']),SECRET,**self.binding)
  with self.assertRaises(ValueError):scope.from_fresh(self.vendor,dict(self.focus,category_keys=['hotels_motels']),self.receipt,SECRET)
 def test_explicit_positive_cleanout_language_and_service_headings(self):
  doc="<h2>Junk removal</h2><p>We help property managers with full property cleanouts so you don't have to.</p><p>Junk removal includes office and commercial cleanouts.</p>"
  focus=api.source_focus(doc,'junk_hauling')
  self.assertEqual(focus['category_keys'],['insurance_professional','property_management'])
  self.assertEqual(scope.categories(focus,'junk_hauling'),['insurance_professional','property_management'])
  focus=api.source_focus('<h4>Office and Retail Item Haul-Away</h4>','junk_hauling')
  self.assertEqual(focus['category_keys'],['insurance_professional','retail'])
  self.assertEqual(scope.categories(focus,'junk_hauling'),['insurance_professional','retail'])
  for doc in ('<h2>Commercial junk removal</h2>',
              '<h4 hidden>Office and Retail Item Haul-Away</h4>',
              '<footer><h4>Office and Retail Item Haul-Away</h4></footer>',
              '<section class="testimonials"><h4>Office and Retail Item Haul-Away</h4></section>',
              '<h4>We sell junk removal equipment for property managers</h4>',
              "<p>We do not serve property managers for junk removal so you don't have to.</p>"):
   with self.subTest(document=doc),self.assertRaises(ValueError):api.source_focus(doc,'junk_hauling')
 def test_actual_copy_path_wave_fixed25_and_no_unscoped_junk_copy(self):
  self.setup();ids=[str(r['candidate_id']) for r in self.rows]
  p=dict(version=VERSION,state='approved',pack_count=25,amount_cents=14900,service_key='junk_hauling',email='junk@example.test',business_name=self.vendor['business_name'],market='Phoenix',source_url=self.url,target_id='fixture-target',scope=self.focus,candidate_ids=ids,sample_ids=ids[:5],nonexclusive=True,includes_free_five=True,expires_at=(self.now+timedelta(days=1)).isoformat())
  profile=dict(p,signature=signature(p,SECRET));self.assertEqual(scope.from_profile(profile,SECRET)['service_key'],'junk_hauling')
  names={'growth_verified_opener','growth_outreach_message'};nodes=[n for n in ast.parse((ROOT/'api/app.py').read_text()).body if isinstance(n,ast.FunctionDef) and n.name in names]
  self.ns.update(growth_target_scoped_profile=lambda row:profile if row.get('source_data') else None,growth_invitation_url=lambda row,owner_preview=False:'https://example.test/growth-packs/junk-hauling/',BUSINESS_POSTAL_ADDRESS='Synthetic address',workflow_email_html=lambda *a,**k:'html')
  exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_junk_copy','exec'),self.ns)
  target=dict(target_id='fixture-target',service_key='junk_hauling',market='Phoenix',business_name=self.vendor['business_name'],public_email='junk@example.test',source_url=self.url,source_data={'scoped_offer':profile})
  self.target=target;self.profile=profile
  message=self.ns['growth_outreach_message'](target,1);self.assertIn('$149',message[2]);self.assertIn('25 total',message[2]);self.assertNotIn('$499',message[2]);self.assertIn('property managers',message[2]);self.assertEqual(message[0],'junk_hauling')
  self.assertEqual(self.ns['GROWTH_WAVES']['junk_hauling'],'growth-junk-1');self.assertEqual(self.ns['GROWTH_LANDING_PATHS']['junk_hauling'],'/growth-packs/junk-hauling/')
  with self.assertRaises(ValueError):self.ns['growth_outreach_message'](dict(target,source_data={}),1)
  page=(ROOT.parent/'growth-packs/junk-hauling/index.html').read_text();self.assertIn('value="junk_hauling"',page);self.assertIn('$149',page);self.assertNotIn('$499',page);self.assertNotIn('100 total',page)
 async def test_junk_signed_dispatch_registration_uses_junk_copy_and_wave_only(self):
  self.test_actual_copy_path_wave_fixed25_and_no_unscoped_junk_copy()
  from scoped_batch import register_target
  from scoped_dispatch import dispatch_for_target
  target=dict(self.target,status='contactable');writes=[]
  class Conn:
   async def fetchval(self,sql,*args):return False if 'suppressions' in sql else 'exploring'
   async def fetchrow(self,*args):return None
   async def execute(self,sql,*args):writes.append((sql,args))
  result=await register_target(Conn(),target,SECRET,'junk_fixture_request',self.ns['GROWTH_WAVES'],self.ns['growth_outreach_message'],lambda:True)
  self.assertTrue(result['registered']);self.assertEqual(result['sent'],0)
  update=next(args for sql,args in writes if sql.startswith('update growth_outreach_targets'))
  target['source_data']=json.loads(update[2]);self.assertEqual(dispatch_for_target(target,SECRET,self.ns['GROWTH_WAVES']),'growth-junk-1')
  insert=next(args for sql,args in writes if 'insert into outreach' in sql);self.assertEqual(insert[1],'growth-junk-1');self.assertEqual(insert[3],'junk_hauling')
 async def test_existing_offer_prepare_current_rechecks_propagate_junk_grant(self):
  fixture=runpy.run_path(str(ROOT/'test-scoped-offer-record.py'))['Tests']();fixture.setup()
  self.setup();profile=fixture.target['source_data']['scoped_offer'];profile.pop('signature');profile['service_key']='junk_hauling'
  profile['scope']=dict(self.focus,source_url=profile['source_url'])
  profile['signature']=signature(profile,'secret');fixture.target['service_key']='junk_hauling';fixture.sample.update(provider_service_key='junk_hauling',ideal_customer=self.focus['ideal_customer'])
  # Replace only the offline buyer fixtures with matching native property-manager evidence.
  for i,row in enumerate(self.rows):
   row['candidate_id']=fixture.rows[i]['candidate_id']
   entity={'@type':'RealEstateAgent','name':row['business_name'],'url':row['source_url'],'email':row['public_email'],'telephone':row['public_phone'],
      'address':{'streetAddress':f'{200+i} Business Lane','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
   row.update(native.parse_record(row,row['source_url'],'<script type="application/ld+json">'+json.dumps(entity)+'</script>','a'*64,'secret'))
   row.update(status='discovered',closed_at=None,fit_score=90,grade='A',fit_reason=self.ns['growth_fit_reason'](row,'junk_hauling'),sales_angle=self.ns['growth_sales_angle'](row,'junk_hauling'))
  fixture.rows=self.rows;fixture.candidates=self.rows[5:]
  fixture.qualify.side_effect=lambda *a,**k:fixture.candidates
  await fixture.prepare();await fixture.ns['growth_offer_payload_current'](fixture.conn,fixture.offer)
  self.assertEqual(len(fixture.offer['payload']['rows']),25)
  for call in fixture.qualify.await_args_list:
   grant=call.kwargs['_qualification_scope'];self.assertEqual(grant['service_key'],'junk_hauling');self.assertEqual(grant['category_keys'],['property_management','retail'])
 def test_estate_cleanouts_require_explicit_business_counterparty(self):
  focus=api.source_focus('<section><h2>Estate Cleanouts</h2><p>We help real estate agents and property managers.</p></section>','junk_hauling')
  self.assertEqual(focus['category_keys'],['property_management']);self.assertIn('real estate agents',focus['observed_sector_phrases'])
  for text in ('<p>We offer estate cleanouts for homeowners.</p>',
      '<p>We provide business junk removal.</p>',
      '<p>We provide residential junk removal and estate cleanouts.</p>',
      '<h2>Estate cleanouts</h2><p>We help grieving families.</p>',
      '<p>Junk removal; no commercial offices.</p>',
      '<p>Junk removal for residential properties only. Offices are excluded.</p>',
      '<p>Junk removal training only for property managers.</p>',
      '<p>Junk removal equipment for sale to property managers.</p>'):
   with self.subTest(text=text),self.assertRaises(ValueError):api.source_focus(text,'junk_hauling')
 def test_business_junk_names_only_explicit_sectors_and_native_key(self):
  self.assertEqual(native.VENDOR_TERMS['junk_hauling'],('junk removal','junk hauling','cleanout'))
  focus=api.source_focus('<p>We provide commercial junk removal for offices and warehouses.</p>','junk_hauling')
  self.assertEqual(focus['category_keys'],['insurance_professional','warehouses_industrial'])
  self.assertNotIn('retail',focus['category_keys']);self.assertNotIn('property_management',focus['category_keys'])
  self.setup()
  with self.assertRaises(ValueError):scope.validate(self.grant,SECRET,**dict(self.binding,service_key='tree_service'))
if __name__=='__main__':unittest.main()
