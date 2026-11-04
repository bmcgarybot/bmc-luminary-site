"""Offline native version query/export/cadence integration; no DB/network writes."""
import copy,json,sys,unittest,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
if Path('/app').is_dir():sys.path.insert(0,'/app')
import official_research as official
import owner_research_export as export
from vendor_published_area import seal as area_seal

SECRET='synthetic-native-v2'
URL='https://fixture.example.test/'
DOC='<title>Synthetic Exterior LLC</title><main><p>Synthetic Exterior LLC provides commercial pressure washing.</p><p>We serve Prescott, Arizona.</p></main><p>928-555-0100</p><a href="mailto:office@example.test">Email</a>'


def row_v2():
    row=dict(candidate_id=uuid.uuid4(),side='vendor',business_name='Synthetic Exterior LLC',market='Prescott',
        category_key='pressure_washing',category_label='Pressure washing',public_phone='9285550100',status='discovered',closed_at=None,
        last_verified_at=datetime.now(timezone.utc))
    row.update(official.parse_record(row,URL,DOC,'a'*64,SECRET));return row


def row_v1():
    row=dict(candidate_id=uuid.uuid4(),side='vendor',business_name='Synthetic Physical LLC',market='Prescott',
        category_key='pressure_washing',category_label='Pressure washing',status='discovered',closed_at=None)
    entity={'@type':'LocalBusiness','name':row['business_name'],'url':URL,'description':'Commercial pressure washing',
        'telephone':'9285550101','email':'physical@example.test','address':{'streetAddress':'100 Main Street',
            'addressLocality':'Prescott','addressRegion':'AZ','postalCode':'86301'}}
    row.update(official.parse_record(row,URL,'<script type="application/ld+json">'+json.dumps(entity)+'</script>','b'*64,SECRET));return row


class App:
    def __init__(self,pool):self.state=SimpleNamespace(pool=pool);self.routes={}
    def post(self,path):
        def register(fn):self.routes[path]=fn;return fn
        return register


class Tests(unittest.IsolatedAsyncioTestCase):
    async def test_export_both_versions_and_explicit_nonphysical_area_facts(self):
        rows=[row_v1(),row_v2()];calls=[];payloads=[]
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            def transaction(self,**kwargs):return self
            async def fetch(self,sql,*args):
                calls.append((sql,args))
                if "j.status='needs_review'" in sql:return []
                assert 'researched_by\'=any($2::text[])' in sql
                assert args[1]==list(official.NATIVE_VERSIONS)
                return copy.deepcopy(rows)
        class Pool:
            def acquire(self):return Conn()
        app=App(Pool());export.install(app,lambda key:None,['Prescott'],SECRET)
        actual=export.seal_export
        def seal(payload,request_id):payloads.append(payload);return actual(payload,request_id)
        with patch.object(export,'seal_export',side_effect=seal):
            capsule=await app.routes['/api/admin/owner-research-export']('ci-native-export-001','admin')
        physical,area=payloads[0]['native_records']
        self.assertTrue(physical['source_facts']['physical_address_verified'])
        self.assertEqual(area['source_facts']['location_type'],'published_service_area')
        self.assertFalse(area['source_facts']['physical_address_verified'])
        self.assertNotIn('physical_address',area['source_facts']);self.assertIn('service_area_evidence',area['source_facts'])
        self.assertEqual(area['readiness'],'primary_source_verified')
        self.assertNotIn('Synthetic',json.dumps(capsule))

    async def test_status_counts_valid_v2_and_flags_expired_v2_for_revalidation(self):
        rows=[row_v1(),row_v2(),row_v2()];signed=rows[-1]['evidence']['vps_verification'];signed.pop('signature')
        signed['checked_at']=(datetime.now(timezone.utc)-timedelta(days=8)).isoformat();signed['signature']=area_seal(signed,SECRET)
        calls=[]
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            async def fetch(self,sql,*args):
                calls.append((sql,args))
                if sql.startswith('select * from market_inventory_candidates'):
                    assert '=any($1::text[])' in sql and args[0]==list(official.NATIVE_VERSIONS)
                    return copy.deepcopy(rows)
                if 'join market_inventory_candidates' in sql:
                    assert '=any($1::text[])' in sql and args[0]==list(official.NATIVE_VERSIONS)
                return []
        class Pool:
            def acquire(self):return Conn()
        app=App(Pool());official.install(app,lambda key:None,None,['Prescott'],SECRET)
        status=await app.routes['/api/admin/preparation-status']('admin')
        self.assertEqual(status['primary_site_verified'][0]['records'],2)
        self.assertEqual(status['native_records_requiring_revalidation'],1)

    async def test_six_day_refresh_overrides_old_thirty_day_job_once_and_schedules_six_days(self):
        row=row_v2();now=datetime.now(timezone.utc);row['last_verified_at']=now-timedelta(days=6,minutes=1)
        job={'status':'verified','last_attempt_at':now-timedelta(days=7),'next_attempt_at':now+timedelta(days=23)}
        calls=[];inspections=[]
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            def transaction(self):return self
            async def fetch(self,sql,*args):
                calls.append((sql,args))
                if sql.lstrip().startswith('select candidate_id,source_url,source_domain'):
                    assert '=any($2::text[])' in sql and args[1]==list(official.NATIVE_VERSIONS)
                    return [copy.deepcopy(row)]
                assert "interval '6 days'" in sql and "interval '30 days'" in sql
                assert 'native_refresh_urgent desc' in sql
                due=row['last_verified_at']<now-timedelta(days=6) and job['last_attempt_at']<now-timedelta(days=6)
                return [dict(row,source_policy_urgent=False,native_refresh_urgent=True)] if due else []
            async def fetchval(self,sql,*args):
                calls.append((sql,args))
                if 'insert into official_research_jobs' in sql:
                    assert args[4] is True and '$5::boolean' in sql
                    assert 'exists(select 1 from market_inventory_candidates refreshed' in sql
                    assert "official_research_jobs.last_attempt_at<now()-interval '6 days'" in sql
                    job.update(status='running',last_attempt_at=now);return row['candidate_id']
                assert 'insert into market_inventory_candidates' in sql
                row['last_verified_at']=now;return row['candidate_id']
            async def execute(self,sql,*args):
                calls.append((sql,args))
                if 'pg_advisory' in sql:return 'OK'
                assert "interval '6 days'" in sql
                job.update(status=args[1],next_attempt_at=now+timedelta(days=6));return 'OK'
        class Pool:
            def acquire(self):return Conn()
        app=App(Pool());official.install(app,lambda key:None,None,['Prescott'],SECRET)
        async def inspect(candidate,urls,secret):
            inspections.append(candidate)
            return official.parse_record(candidate,URL,DOC,'a'*64,SECRET),''
        with patch.object(official,'inspect_source_pages',side_effect=inspect):
            first=await app.routes['/api/process-official-research']('admin')
            second=await app.routes['/api/process-official-research']('admin')
        self.assertEqual(first['verified'],1);self.assertEqual(second['inspected'],0);self.assertEqual(len(inspections),1)
        self.assertEqual(job['next_attempt_at'],now+timedelta(days=6))


if __name__=='__main__':unittest.main()
