"""Offline real-parser/encryption transitions; synthetic rows and transport only."""
import copy,hashlib,json,sys,unittest,uuid
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).resolve().parent/'api'))
if Path('/app').is_dir():sys.path.insert(0,'/app')
from fastapi import FastAPI,HTTPException
import rolling_vendor_research as api
import census_research_api as census
from official_research import FetchedPageReceipt,parse_record,auto_evidence_valid

SECRET='synthetic-rolling-key';URL='https://fixture.example.test/'
NAME='Synthetic Exterior LLC';EMAIL='office@different-mail.example';PHONE='9285550100'
DOC='<title>Synthetic Exterior LLC</title><main><h1>Synthetic Exterior LLC</h1><p>We provide commercial pressure washing for commercial properties.</p><p>We serve Prescott, Arizona.</p></main><footer><p>928-555-0100</p><a href="mailto:'+EMAIL+'">Email us</a></footer>'


def receipt(document=DOC,url=URL):
    raw=document.encode()
    return FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),datetime.now(timezone.utc).isoformat(),200,'text/html',())


class Request:
    def __init__(self,data):self.data=data
    async def body(self):return json.dumps(self.data).encode()


class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self,protected=False,native=False):
        self.cid=uuid.uuid4();self.row={'candidate_id':self.cid,'side':'vendor','market':'Prescott','business_name':NAME,
            'category_key':'pressure_washing' if native else 'window_cleaning','category_label':'Cleaning',
            'source_url':URL,'source_domain':'fixture.example.test','public_phone':PHONE,
            'public_email':'unverified-seed@example.test','official_site':True,'status':'discovered','closed_at':None,
            'promoted_entity_id':None,'snippet':'Preserve original census text','created_at':datetime.now(timezone.utc),
            'evidence':{'researched_by':'assistant_manual_census','artifact_files':['synthetic-source.json'],'retained':'original'}}
        if native:
            entity={'@type':'LocalBusiness','name':NAME,'url':URL,'description':'Commercial pressure washing',
                'telephone':PHONE,'address':{'streetAddress':'100 Main Street','addressLocality':'Prescott','addressRegion':'AZ','postalCode':'86301'}}
            source='<script type="application/ld+json">'+json.dumps(entity)+'</script>'
            self.row['public_email']='';self.row.update(parse_record(self.row,URL,source,'a'*64,SECRET))
        self.key=census.raw_source_key(self.row);self.body={'source_keys':[self.key],'requested_service':'pressure_washing'}
        self.calls=[];self.events=[];self.payloads=[];self.active=0;self.fetched=False;self.history=False
        self.late_history=False;self.changed=False;self.bad_saved=False;self.fail_event=False;outer=self
        class Tx:
            async def __aenter__(self):self.row=copy.deepcopy(outer.row);self.events=copy.deepcopy(outer.events)
            async def __aexit__(self,kind,*args):
                if kind:outer.row=self.row;outer.events=self.events
        class Conn:
            def transaction(self,*args,**kwargs):outer.calls.append(('transaction',kwargs));return Tx()
            async def fetch(self,sql,*args):
                outer.calls.append((sql,args))
                assert sql==census.SELECT_SQL
                if outer.key not in args[0] or api.evidence(outer.row).get('researched_by')!='assistant_manual_census':return []
                return [dict(copy.deepcopy(outer.row),source_key=outer.key)]
            async def fetchval(self,sql,*args):
                outer.calls.append((sql,args))
                if sql==api.HISTORY_SQL:return outer.history or (outer.late_history and outer.fetched)
                assert 'pg_advisory_xact_lock' in sql
            async def fetchrow(self,sql,*args):
                outer.calls.append((sql,args))
                if sql.startswith('update market_inventory_candidates'):
                    for field,value in zip(('business_name','category_key','category_label','source_url','source_domain','snippet','public_email','public_phone'),args[1:9]):outer.row[field]=value
                    outer.row.update(official_site=True,source_tier='direct',verification_status='direct_evidence',evidence=json.loads(args[9]))
                    if outer.bad_saved:outer.row['public_phone']='9285559999'
                    return copy.deepcopy(outer.row)
                assert sql.startswith(api.FULL_ROW_SQL)
                value=copy.deepcopy(outer.row)
                if outer.changed and outer.fetched:value['snippet']='Concurrent change'
                return value
            async def execute(self,sql,*args):
                outer.calls.append((sql,args));assert sql.startswith('insert into events')
                if outer.fail_event:raise RuntimeError('synthetic event write failure')
                outer.events.append(json.loads(args[1]));return 'INSERT 0 1'
        class Pool:
            def acquire(self):return self
            async def __aenter__(self):outer.active+=1;return Conn()
            async def __aexit__(self,*args):outer.active-=1
        self.app=FastAPI();self.app.state.pool=Pool()
        def admin(key):
            if key!='admin':raise HTTPException(403,'forbidden')
        async def search(*args):raise AssertionError('No discovery required for official fixture source')
        api.install(self.app,admin,SECRET,['inventory:'+str(self.cid)] if protected else [],search)
        self.promote=next(r.endpoint for r in self.app.routes if getattr(r,'path','')=='/api/admin/research-promote-census')
        self.refresh=next(r.endpoint for r in self.app.routes if getattr(r,'path','')=='/api/admin/refresh-uncontacted-vendor')

    async def invoke(self,body=None,refresh=False,key='admin',document=DOC,fetch_error=False):
        seen=[];original=api.seal_export
        def fetch(url):
            self.assertEqual(self.active,0,'Fetch must release database connections')
            seen.append(url);self.fetched=True
            if fetch_error:raise RuntimeError('PRIVATE_PATH_SQL_ERROR')
            return receipt(document,url)
        def seal(payload,request_id):self.payloads.append(copy.deepcopy(payload));return original(payload,request_id)
        endpoint=self.refresh if refresh else self.promote
        body=body if body is not None else ({'candidate_id':str(self.cid)} if refresh else self.body)
        with patch.object(census,'fetch_page_receipt',side_effect=fetch),patch.object(api,'fetch_page_receipt',side_effect=fetch),patch.object(api,'seal_export',side_effect=seal):
            out=await endpoint(Request(body),'ci-rolling-request-001',key)
        for private in (NAME,EMAIL,URL,'unverified-seed@example.test'):self.assertNotIn(private,json.dumps(out))
        return self.payloads[-1],seen

    async def test_history_diagnostics_exact_static_branches_remain_failclosed(self):
        self.setup();outer=self
        class Conn:
            async def fetchval(inner,sql,*args):
                outer.assertEqual(sql,api.HISTORY_SQL);return True
            async def fetchrow(inner,sql,*args):
                outer.assertEqual(sql,api.HISTORY_DIAGNOSTIC_SQL)
                return {key:key=='growth_target' for key in api.HISTORY_BRANCHES}
        with self.assertRaises(api.Held) as held:await api.no_history(Conn(),self.row)
        self.assertEqual(str(held.exception),'existing_customer_target_or_history')
        self.assertEqual([key for key,value in held.exception.diagnostics['history_checks'].items() if value],['growth_target'])
        class Failed(Conn):
            async def fetchrow(inner,*args):raise RuntimeError('PRIVATE_SQL_ERROR')
        with self.assertRaises(api.Held) as held:await api.no_history(Failed(),self.row)
        self.assertEqual(held.exception.diagnostics,{'history_diagnostics_unavailable':True})

    async def test_source_review_reason_and_observations_encrypted_no_exception_leak(self):
        self.setup();before=copy.deepcopy(self.row)
        proposal=dict(status='source_review_held',gate_reason='exact_legal_name_mismatch',
            fetch_failure_reason='PRIVATE_RAW_ERROR /path',visible_excerpt='Published synthetic source name',
            unverified_schema_observations=[{'name':'Published alternate legal entity'}],unexpected='PRIVATE_RAW_ERROR')
        with patch.object(api,'review_row',return_value=proposal):payload,seen=await self.invoke()
        review=payload['results'][0]['diagnostics']['source_review']
        self.assertEqual(review['gate_reason'],'exact_legal_name_mismatch')
        self.assertEqual(review['unverified_schema_observations'],proposal['unverified_schema_observations'])
        self.assertNotIn('PRIVATE_RAW_ERROR',json.dumps(payload));self.assertEqual(self.row,before)
        self.assertEqual(seen,[]);self.assertEqual(self.events,[])
        self.assertNotIn('visible_excerpt',api.source_diagnostics({'visible_excerpt':'x'*16001}))

    async def test_census_promotes_same_uuid_real_v2_ignores_only_seed_email_and_archives_full_original(self):
        self.setup();before=copy.deepcopy(self.row);payload,seen=await self.invoke()
        self.assertEqual(payload['results'][0]['status'],'native_source_verified');self.assertEqual(seen,[URL])
        self.assertEqual(self.row['candidate_id'],self.cid);self.assertTrue(auto_evidence_valid(self.row,SECRET))
        self.assertEqual(self.row['category_key'],'pressure_washing');self.assertEqual(self.row['public_email'],EMAIL)
        archive=self.row['evidence']['census_original_archive']
        self.assertEqual(archive['record'],api.json_record(before));self.assertEqual(archive['source_key'],self.key)
        self.assertEqual(self.row['evidence']['retained'],'original');self.assertEqual(len(self.events),1)
        self.assertEqual(self.events[0]['request_id'],'ci-rolling-request-001')
        for field in ('candidate_id','status','closed_at','promoted_entity_id','created_at'):self.assertEqual(self.row[field],before[field])
        self.assertFalse(payload['results'][0]['provider_accepted']);self.assertEqual(payload['results'][0]['outreach_sent'],0)

    async def test_false_official_seed_can_promote_only_after_direct_fresh_v2_verification(self):
        self.setup();self.row['official_site']=False;before=copy.deepcopy(self.row)
        payload,seen=await self.invoke()
        self.assertEqual(payload['results'][0]['status'],'native_source_verified')
        self.assertEqual(payload['results'][0]['verification_basis'],'fresh_existing_source_verified')
        self.assertEqual(seen,[URL]);self.assertTrue(auto_evidence_valid(self.row,SECRET))
        self.assertFalse(self.row['evidence']['census_original_archive']['record']['official_site'])
        self.assertTrue(self.row['official_site'])
        self.assertEqual(self.events[0]['verification_basis'],'fresh_existing_source_verified')

    async def test_refresh_empty_v1_to_v2_visible_mail_and_archive_old_native(self):
        self.setup(native=True);before=copy.deepcopy(self.row);payload,seen=await self.invoke(refresh=True)
        self.assertEqual(payload['results'][0]['status'],'native_source_verified');self.assertEqual(seen,[URL])
        self.assertTrue(auto_evidence_valid(self.row,SECRET));self.assertEqual(self.row['public_email'],EMAIL)
        self.assertEqual(self.row['evidence']['native_original_archive']['record'],api.json_record(before))
        self.assertEqual(self.row['evidence']['vps_verification']['verifier'],'vps_vendor_published_area_v2')
        self.assertEqual(len(self.events),1)

    async def test_history_and_protected_hold_before_fetch(self):
        for mode in ('protected','history'):
            self.setup(protected=mode=='protected');self.history=mode=='history';before=copy.deepcopy(self.row)
            payload,seen=await self.invoke();self.assertEqual(payload['results'][0]['status'],'native_source_held')
            self.assertEqual(seen,[]);self.assertEqual(self.row,before);self.assertEqual(self.events,[])

    async def test_late_history_and_concurrent_source_change_no_write(self):
        for mode in ('history','changed'):
            self.setup();self.late_history=mode=='history';self.changed=mode=='changed';before=copy.deepcopy(self.row)
            payload,seen=await self.invoke();self.assertEqual(payload['results'][0]['status'],'native_source_held')
            self.assertEqual(seen,[URL]);self.assertEqual(self.row,before);self.assertEqual(self.events,[])

    async def test_known_phone_conflict_and_nonpositive_source_held(self):
        for doc in (DOC.replace('928-555-0100','928-555-9999'),DOC.replace('We provide','We do not provide')):
            self.setup();before=copy.deepcopy(self.row);payload,seen=await self.invoke(document=doc)
            self.assertEqual(payload['results'][0]['status'],'native_source_held');self.assertEqual(self.row,before)

    async def test_failed_final_native_validation_or_event_insert_rolls_back(self):
        for mode in ('bad_saved','event'):
            self.setup();self.bad_saved=mode=='bad_saved';self.fail_event=mode=='event';before=copy.deepcopy(self.row)
            payload,seen=await self.invoke();self.assertEqual(payload['results'][0]['status'],'native_source_held')
            self.assertEqual(self.row,before);self.assertEqual(self.events,[])

    async def test_no_historical_customer_mutation_and_bare_discovery_not_history(self):
        self.setup();await self.invoke()
        mutations=[sql for sql,args in self.calls if sql.startswith(('update ','insert ','delete '))]
        self.assertEqual(len(mutations),2);self.assertTrue(mutations[0].startswith('update market_inventory_candidates'))
        self.assertTrue(mutations[1].startswith('insert into events'))
        self.assertIn("coalesce(v.status,'') not in ('prospect','discovered','research')",api.HISTORY_SQL)
        self.assertIn("coalesce(b.status,'') not in ('prospect','discovered','research')",api.HISTORY_SQL)
        self.assertIn('left join vendors',api.HISTORY_SQL);self.assertIn('left join buyers',api.HISTORY_SQL)
        self.assertTrue(any('for update' in sql for sql,args in self.calls))

    async def test_body_limits_auth_and_missing_source_key_do_not_fetch(self):
        self.setup()
        for body in (dict(self.body,public_email=EMAIL),dict(self.body,source_keys=['a'*64]*3),dict(self.body,requested_service='unmapped')):
            with self.assertRaises(HTTPException):await self.invoke(body)
        with self.assertRaises(HTTPException):await self.invoke(key='bad')
        payload,seen=await self.invoke({'source_keys':['b'*64],'requested_service':'pressure_washing'})
        self.assertEqual(seen,[]);self.assertEqual(payload['results'][0]['status'],'native_source_held')
        with self.assertRaises(HTTPException):await self.invoke({'candidate_id':str(self.cid),'source_url':URL},refresh=True)

    async def test_refresh_observed_contact_fresh_parse_can_renew_physical_location(self):
        self.setup(native=True);before=copy.deepcopy(self.row);seen=[]
        entity={'@type':'LocalBusiness','name':NAME,'url':URL,'description':'Commercial pressure washing',
            'telephone':PHONE,'address':{'streetAddress':'100 Main Street','addressLocality':'Prescott','addressRegion':'AZ','postalCode':'86301'}}
        home='<script type="application/ld+json">'+json.dumps(entity)+'</script><a href="/contact">Contact</a>'
        entity['url']=URL+'contact';entity['email']='office@fixture.example.test';entity['address']['streetAddress']='200 New Avenue'
        page='<script type="application/ld+json">'+json.dumps(entity)+'</script>'
        def fetch(url):seen.append(url);return receipt(home if url==URL else page,url)
        with patch.object(api,'fetch_page_receipt',side_effect=fetch),patch.object(api,'seal_result',return_value={}):
            result=await api.refresh_one(self.app.state.pool,self.cid,SECRET,frozenset(),'ci-refresh-contact')
        self.assertEqual(result['status'],'native_source_verified');self.assertEqual(seen,[URL,URL+'contact'])
        self.assertEqual(self.row['source_url'],URL+'contact');self.assertTrue(auto_evidence_valid(self.row,SECRET))
        self.assertEqual(self.row['evidence']['vps_verification']['physical_address'],'200 New Avenue, Prescott, AZ 86301')
        self.assertEqual(self.row['evidence']['native_original_archive']['record'],api.json_record(before))

    async def test_refresh_unobserved_unsafe_and_recursive_contact_links_never_fetched(self):
        self.setup(native=True);before=copy.deepcopy(self.row);seen=[]
        # No mailbox anywhere: two observed safe paths, no recursive expansion.
        home=DOC.replace('<a href="mailto:'+EMAIL+'">Email us</a>','')
        home+='<a href="/contact">Contact</a><a href="/about">About</a><a href="/location">Third</a><a href="https://foreign.example/contact">Foreign</a><a href="/contact?send=1">Query</a><a href="/checkout/contact">Checkout</a>'
        def fetch(url):seen.append(url);return receipt(home,url)
        with patch.object(api,'fetch_page_receipt',side_effect=fetch):
            result=await api.refresh_one(self.app.state.pool,self.cid,SECRET,frozenset(),'ci-refresh-contact')
        self.assertEqual(seen,[URL,URL+'contact',URL+'about']);self.assertEqual(self.row,before)
        self.assertEqual(result['status'],'native_source_held');self.assertEqual(result['diagnostics']['get_count'],3)
        self.assertEqual(len(result['diagnostics']['refresh_stages']),3)

    async def test_refresh_nonempty_invalid_native_and_protected_are_held(self):
        for mode in ('nonempty','invalid','protected'):
            self.setup(native=True,protected=mode=='protected')
            if mode=='nonempty':self.row['public_email']='existing@example.test'
            if mode=='invalid':self.row['evidence']['vps_verification']['signature']='bad'
            before=copy.deepcopy(self.row);payload,seen=await self.invoke(refresh=True)
            self.assertEqual(payload['results'][0]['status'],'native_source_held');self.assertEqual(seen,[])
            self.assertEqual(self.row,before)

    async def test_repeat_source_key_does_not_rewrite_native_or_reset_audit(self):
        self.setup();await self.invoke();before=copy.deepcopy(self.row);events=copy.deepcopy(self.events)
        self.fetched=False;payload,seen=await self.invoke()
        self.assertEqual(payload['results'][0]['status'],'native_source_held');self.assertEqual(seen,[])
        self.assertEqual(self.row,before);self.assertEqual(self.events,events)

    async def test_refresh_history_blocks_native_cohort_even_with_valid_proof(self):
        self.setup(native=True);self.history=True;before=copy.deepcopy(self.row)
        payload,seen=await self.invoke(refresh=True)
        self.assertEqual(payload['results'][0]['gate_reason'],'existing_customer_target_or_history')
        self.assertEqual(seen,[]);self.assertEqual(self.row,before)

    async def test_failed_transport_static_hold_no_private_exception(self):
        self.setup(native=True);before=copy.deepcopy(self.row);payload,seen=await self.invoke(refresh=True,fetch_error=True)
        self.assertEqual(payload['results'][0]['gate_reason'],'official_fetch_unavailable')
        self.assertNotIn('PRIVATE_PATH',json.dumps(payload));self.assertEqual(self.row,before)


if __name__=='__main__':unittest.main()
