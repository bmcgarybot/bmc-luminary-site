"""Scoped pressure categories: actual SQL qualifier, native and profile boundaries."""
import ast,copy,hashlib,json,re,runpy,sys,unittest,uuid
from dataclasses import replace
from datetime import datetime,timedelta,timezone
from pathlib import Path
from unittest.mock import AsyncMock,patch
ROOT=Path(__file__).parent;sys.path.insert(0,str(ROOT/'api'))
import qualification_scope as q
import official_research as native
import held_packet_api as packet_api
from held_packet_api import source_focus
from scoped_growth import signature,VERSION
SECRET='synthetic-secret'
class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self):
        self.now=datetime.now(timezone.utc)
        entity={'@type':'CleaningService','name':'Synthetic Pressure Contractor','url':'https://contractor-fixture.example/',
          'email':'info@contractor-fixture.example','telephone':'6025550100','description':'Commercial pressure washing',
          'address':{'streetAddress':'100 Commercial Way','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
        self.doc='<script type="application/ld+json">'+json.dumps(entity)+'</script><ul><li>Commercial Soft Washing, low-pressure facade and building washing for storefronts, offices, and multi-tenant properties.</li></ul>'
        self.digest=hashlib.sha256(self.doc.encode()).hexdigest()
        row=dict(candidate_id=uuid.uuid4(),side='vendor',market='Phoenix',category_key='pressure_washing',category_label='Pressure washing',business_name=entity['name'])
        self.recipient=dict(row,**native.parse_record(row,entity['url'],self.doc,self.digest,SECRET))
        self.scope=dict(source_focus(self.doc,'pressure_washing'),source_url=entity['url'],content_sha256=self.digest,
          checked_at=self.recipient['checked_at'],source_signature=self.recipient['evidence']['vps_verification']['signature'])
        self.receipt=native.FetchedPageReceipt(self.recipient['source_url'],self.recipient['source_url'],self.doc.encode(),self.digest,self.now.isoformat(),200,'text/html',())
        self.grant=q.from_fresh(self.recipient,self.scope,self.receipt,SECRET)
        self.binding=dict(service_key='pressure_washing',market='Phoenix',email=entity['email'],recipient_business_key=q.business_key(entity['name']),
          ideal_customer=self.scope['ideal_customer'],exclusions='')
    def profile(self):
        ids=[str(uuid.uuid4()) for _ in range(25)]
        value=dict(version=VERSION,target_id='server-target',business_name=self.recipient['business_name'],email=self.recipient['public_email'],market='Phoenix',service_key='pressure_washing',
          source_url=self.recipient['source_url'],pack_count=25,amount_cents=14900,state='approved',expires_at=(self.now+timedelta(days=1)).isoformat(),scope=self.scope,candidate_ids=ids,sample_ids=ids[:5])
        return dict(value,signature=signature(value,SECRET))
    def test_fresh_source_digest_contact_sectors_and_timing_bind(self):
        self.setup();self.assertEqual(set(q.validate(self.grant,SECRET,**self.binding)),q.ALLOWED)
        for change in ('doc','digest','signature','native'):
            row=copy.deepcopy(self.recipient);scope=copy.deepcopy(self.scope);doc=self.doc
            if change=='doc':doc=doc.replace('offices','schools')
            elif change=='digest':scope['content_sha256']='b'*64
            elif change=='signature':scope['source_signature']='b'*64
            else:row['public_email']='forged@example.test'
            with self.subTest(change=change),self.assertRaises(ValueError):q.from_fresh(row,scope,replace(self.receipt,raw_bytes=doc.encode()),SECRET)
        with self.assertRaises(ValueError):q.from_fresh(self.recipient,self.scope,self.receipt,SECRET,now=self.now+timedelta(minutes=10))
    def test_raw_receipt_invalid_utf8_preserves_digest_and_rejects_wrong_bytes(self):
        self.setup();raw=self.doc.encode()+b'<!-- invalid byte: \xff -->'
        document=raw.decode('utf-8','replace');digest=hashlib.sha256(raw).hexdigest()
        row=dict(self.recipient,**native.parse_record(self.recipient,self.recipient['source_url'],document,digest,SECRET))
        scope=dict(self.scope,content_sha256=digest,checked_at=row['checked_at'],source_signature=row['evidence']['vps_verification']['signature'])
        receipt=replace(self.receipt,raw_bytes=raw,content_sha256=digest)
        self.assertIsNotNone(q.from_fresh(row,scope,receipt,SECRET))
        for changed in (replace(receipt,raw_bytes=document.encode()),replace(receipt,requested_url='https://other.example/'),
                        replace(receipt,final_url='https://other.example/'),replace(receipt,fetched_at=(self.now-timedelta(minutes=6)).isoformat())):
            with self.assertRaises(ValueError):q.from_fresh(row,scope,changed,SECRET)

    def test_profile_mac_approval_expiry_and_no_restaurant_fleet_guess(self):
        self.setup();profile=self.profile();derived=q.from_profile(profile,SECRET)
        self.assertEqual(q.validate(derived,SECRET,**self.binding),sorted(q.ALLOWED))
        for change in ('forged','draft','expired','restaurant'):
            value=copy.deepcopy(profile);value.pop('signature')
            if change=='draft':value['state']='draft'
            elif change=='expired':value['expires_at']=(self.now-timedelta(days=1)).isoformat()
            elif change=='restaurant':value['scope']['category_keys'].append('restaurants')
            else:value['email']='forged@example.test'
            value['signature']=profile['signature'] if change=='forged' else signature(value,SECRET)
            with self.subTest(change=change),self.assertRaises(ValueError):q.from_profile(value,SECRET)
        draft=copy.deepcopy(profile);draft.pop('signature');draft['state']='draft';draft['signature']=signature(draft,SECRET)
        self.assertIsNotNone(q.from_profile(draft,SECRET,customer=False))
    def test_capability_forgery_recipient_territory_criteria_and_current_policy_reject(self):
        self.setup()
        for key,value in [('email','other@example.test'),('market','Sedona'),('business_key','business:other'),('category_keys',['restaurants']),('exclusions','office')]:
            forged=dict(self.grant,**{key:value})
            with self.subTest(key=key),self.assertRaises(ValueError):q.validate(forged,SECRET,**self.binding)
        for key,value in [('market','Sedona'),('email','other@example.test'),('ideal_customer','anything'),('exclusions','office')]:
            with self.assertRaises(ValueError):q.validate(self.grant,SECRET,**dict(self.binding,**{key:value}))
        with self.assertRaises(ValueError):q.validate({'category_keys':['insurance_professional']},SECRET,**self.binding)
    def namespace(self):
        names={'GROWTH_BUYER_CATEGORIES','GROWTH_HIGH_VALUE_CATEGORIES'}
        functions={'growth_category_terms','growth_selected_categories','growth_candidate_score','growth_qualified_candidates','growth_fit_reason','growth_sales_angle'}
        nodes=[]
        for node in ast.parse((ROOT/'api/app.py').read_text()).body:
            if isinstance(node,ast.Assign) and any(isinstance(t,ast.Name) and t.id in names for t in node.targets):nodes.append(node)
            if isinstance(node,(ast.FunctionDef,ast.AsyncFunctionDef)) and node.name in functions:nodes.append(node)
        ns=dict(ADMIN_KEY=SECRET,re=re,hashlib=hashlib,datetime=datetime,timedelta=timedelta,timezone=timezone,clean=lambda x:str(x or '').strip(),
          GROWTH_SERVICE_LABELS={'pressure_washing':'Pressure washing'},GROWTH_SOURCE_BLOCKLIST=(),growth_candidate_evidence_valid=lambda row,market:native.auto_evidence_valid(row,SECRET) and row['market']==market,
          growth_candidate_is_fresh=lambda row:True,growth_prospect_key=lambda row:row['business_name'].lower(),
          growth_exposure_filter=AsyncMock(side_effect=lambda conn,rows,*args:rows))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_scoped_qualifier','exec'),ns);return ns
    async def test_actual_office_query_scoped_only_exterior_notes_and_diagnostic(self):
        self.setup();ns=self.namespace();queries=[]
        c=dict(candidate_id=uuid.uuid4(),side='buyer',market='Phoenix',category_key='insurance_professional',category_label='Office',business_name='Synthetic Office')
        e={'@type':'ProfessionalService','name':c['business_name'],'url':'https://office-fixture.example/','telephone':'6025550200','email':'office@office-fixture.example',
          'address':{'streetAddress':'200 Business Lane','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
        row=dict(c,**native.parse_record(c,e['url'],'<script type="application/ld+json">'+json.dumps(e)+'</script>','a'*64,SECRET),last_verified_at=self.now)
        class Conn:
            async def fetch(self,sql,*args):queries.append(args);return [dict(row)] if row['category_key'] in args[1] else []
        args=dict(recipient_key=self.binding['email'],recipient_business_key=self.binding['recipient_business_key'])
        self.assertEqual(await ns['growth_qualified_candidates'](Conn(),'pressure_washing','Phoenix',self.scope['ideal_customer'],'',**args),[])
        diagnostic=[]
        rows=await ns['growth_qualified_candidates'](Conn(),'pressure_washing','Phoenix',self.scope['ideal_customer'],'',_qualification_scope=self.grant,_qualification_diagnostics=diagnostic,**args)
        self.assertEqual(len(rows),1);self.assertEqual(set(queries[-1][1]),q.ALLOWED)
        self.assertEqual(diagnostic[0]['queried_category_keys'],sorted(q.ALLOWED));self.assertEqual(diagnostic[0]['raw_rows'],1)
        self.assertIn('authorization',rows[0]['sales_angle']);self.assertIn('exterior',rows[0]['sales_angle']);self.assertNotIn('restrooms',rows[0]['sales_angle'])
        self.assertNotIn('insurance_professional',ns['GROWTH_BUYER_CATEGORIES']['pressure_washing'])
    async def test_actual_offer_prepare_and_current_payload_propagate_profile_grant(self):
        fixture=runpy.run_path(str(ROOT/'test-scoped-offer-record.py'))['Tests']();fixture.setup()
        profile=fixture.target['source_data']['scoped_offer'];profile.pop('signature');profile['service_key']='pressure_washing'
        profile['scope'].update(category_keys=sorted(q.ALLOWED),observed_sector_phrases=['storefronts','offices','multi-tenant properties'],source_signature='b'*64,
          source_url=profile['source_url'],ideal_customer='retail, office, property management',content_sha256='a'*64)
        profile['signature']=signature(profile,'secret');fixture.target['service_key']='pressure_washing';fixture.sample.update(provider_service_key='pressure_washing',ideal_customer=profile['scope']['ideal_customer'])
        await fixture.prepare();await fixture.ns['growth_offer_payload_current'](fixture.conn,fixture.offer)
        for call in fixture.qualify.await_args_list:
            self.assertIsNotNone(call.kwargs['_qualification_scope'])
            grant=call.kwargs['_qualification_scope']
            self.assertEqual(set(grant['category_keys']),q.ALLOWED)
        fixture.candidates=fixture.candidates[1:];fixture.offer=None
        with self.assertRaises(Exception):await fixture.prepare()  # Never force a thin25.
    async def test_held_thin25_receives_grant_and_sealed_diagnostic_contract(self):
        self.setup();outer=self
        class Conn:
            async def fetchrow(self,*args):return outer.recipient
            async def fetchval(self,*args):return False
        async def qualify(*args,**kwargs):
            value=kwargs['_qualification_scope'];self.assertEqual(set(value['category_keys']),q.ALLOWED)
            kwargs['_qualification_diagnostics'].append(dict(queried_category_keys=value['category_keys'],raw_rows=3,qualified_rows=3))
            return []
        callbacks=dict(qualify=qualify,select_sample=lambda *args:[],public_rows=list,csv_bytes=lambda rows:b'',recipient_business_key=q.business_key)
        with patch.object(packet_api.official_research,'fetch_page_receipt',return_value=self.receipt):
            with self.assertRaisesRegex(ValueError,'Qualified sample reserve is incomplete') as caught:
                await packet_api.compile_native_packet(Conn(),self.recipient['candidate_id'],SECRET,frozenset(),lambda:True,callbacks,25)
        self.assertEqual(caught.exception.qualification_diagnostics[0]['raw_rows'],3)
        self.assertEqual(set(caught.exception.qualification_diagnostics[0]['queried_category_keys']),q.ALLOWED)
    async def test_actual_owner_pressure_preview_supplies_bound_recipient_and_preserves25(self):
        fixture=runpy.run_path(str(ROOT/'test-scoped-owner-flow.py'))['Tests']();fixture.setup()
        profile=fixture.target['source_data']['scoped_offer'];profile.pop('signature');profile['service_key']='pressure_washing'
        profile['scope'].update(category_keys=sorted(q.ALLOWED),observed_sector_phrases=['storefronts','offices','multi-tenant properties'],source_signature='b'*64,
            source_url=profile['source_url'],ideal_customer='retail, office, property management',content_sha256='a'*64)
        profile['signature']=signature(profile,'secret');fixture.target['service_key']='pressure_washing';fixture.saved['service_key']='pressure_washing'
        fixture.ns['GROWTH_SERVICE_LABELS']['pressure_washing']='Pressure washing';fixture.ns['growth_recipient_business_key']=q.business_key
        async def qualify(conn,service,markets,**kwargs):
            self.assertEqual(kwargs['recipient_key'],fixture.target['public_email'])
            self.assertEqual(kwargs['recipient_business_key'],q.business_key(fixture.target['business_name']))
            q.validate(kwargs['_qualification_scope'],'secret',service_key=service,market=markets[0],email=kwargs['recipient_key'],
                recipient_business_key=kwargs['recipient_business_key'],ideal_customer=kwargs['ideal_customer'],exclusions=kwargs['exclusions'])
            return fixture.rows[5:] if kwargs.get('delivery_kind')=='paid' else fixture.rows
        fixture.qualify.side_effect=qualify
        result=await fixture.claim(pack_count=25)
        self.assertEqual(len(result['sample']),25);self.assertEqual(result['sample'][:5],fixture.rows[:5])
        self.assertEqual(fixture.qualify.await_args_list[0].kwargs['delivery_kind'],'free')

    async def test_actual_customer_sample_write_ignores_http_categories_and_binds_profile(self):
        self.setup();profile=self.profile()
        target=dict(target_id=profile['target_id'],business_name=profile['business_name'],public_email=profile['email'],market='Phoenix',service_key='pressure_washing',source_url=profile['source_url'],source_data={'scoped_offer':profile})
        from scoped_growth import profile_for_target
        fn=next(n for n in ast.parse((ROOT/'api/app.py').read_text()).body if isinstance(n,ast.AsyncFunctionDef) and n.name=='handle_growth_snapshot')
        writes=[];calls=[]
        class StopAtQualifiedQuery(Exception):pass
        async def qualify(conn,service,markets,ideal,exclusions,**kwargs):
            calls.append(kwargs)
            self.assertEqual(ideal,profile['scope']['ideal_customer'])
            q.validate(kwargs['_qualification_scope'],SECRET,service_key=service,market=markets[0],email=kwargs['recipient_key'],
                recipient_business_key=kwargs['recipient_business_key'],ideal_customer=ideal,exclusions=exclusions)
            self.assertEqual(set(kwargs['_qualification_scope']['category_keys']),q.ALLOWED)
            raise StopAtQualifiedQuery()
        class Conn:
            async def fetchrow(self,sql,*args):
                if 'growth_outreach_targets' in sql:return target
                if 'growth_owner_previews' in sql:return dict(candidate_ids=profile['sample_ids'])
                return None
            async def fetchval(self,sql,*args):
                if 'insert into growth_sample_requests' in sql:writes.append(sql);return uuid.uuid4()
                if 'select 1 from growth_outreach_targets' in sql:return 1
                return None
            async def execute(self,sql,*args):writes.append(sql)
        ns=dict(ADMIN_KEY=SECRET,re=re,json=json,uuid=uuid,clean=lambda value:str(value or '').strip(),GROWTH_SERVICE_LABELS={'pressure_washing':'Pressure washing'},
            HTTPException=ValueError,growth_territory_markets=lambda market,selected:[market],growth_business_site_host=lambda value:'',growth_business_phone_key=lambda value:'',
            growth_target_scoped_profile=lambda value,customer:profile_for_target(value,SECRET,customer=customer),growth_lock_exposure_allocator=AsyncMock(),
            growth_normalized_contractor_name=lambda value:re.sub('[^a-z0-9]+','',value.lower()),growth_qualified_territory_candidates=qualify,
            growth_recipient_business_key=q.business_key,GROWTH_SAMPLE_MIN_RESERVE=125)
        exec(compile(ast.Module(body=[fn],type_ignores=[]),'actual_customer_sample_write','exec'),ns)
        p=dict(service_key='pressure_washing',market='Phoenix',business_name=profile['business_name'],contact_name='Synthetic',email=profile['email'],consent='yes',
            source_target_id=profile['target_id'],ideal_customer='restaurants',category_keys=['restaurants'],_qualification_scope={'category_keys':['restaurants']})
        with self.assertRaises(StopAtQualifiedQuery):await ns['handle_growth_snapshot'](Conn(),p)
        self.assertEqual(len(calls),1)
        self.assertTrue(any('insert into growth_sample_requests' in sql for sql in writes))
        self.assertTrue(all('orders' not in sql and 'vendors' not in sql for sql in writes))

    def test_all_scoped_query_call_sites_use_server_profile_and_no_http_category_read(self):
        tree=ast.parse((ROOT/'api/app.py').read_text())
        for name in ('handle_growth_snapshot','growth_claim_free_five','growth_owner_full_pack','growth_prepare_purchase_offer_record','growth_offer_payload_current'):
            fn=next(n for n in tree.body if isinstance(n,ast.AsyncFunctionDef) and n.name==name)
            calls=[n for n in ast.walk(fn) if isinstance(n,ast.Call) and isinstance(n.func,ast.Name) and n.func.id=='growth_qualified_territory_candidates']
            self.assertTrue(calls,name)
            for call in calls:
                value=next(k.value for k in call.keywords if k.arg=='_qualification_scope')
                self.assertIsInstance(value,ast.IfExp);self.assertEqual(value.test.id,'profile')
                self.assertIsInstance(value.body,ast.Call);self.assertEqual(value.body.func.id,'qualification_scope_from_profile')
                self.assertEqual(value.body.args[0].id,'profile')

if __name__=='__main__':unittest.main()
