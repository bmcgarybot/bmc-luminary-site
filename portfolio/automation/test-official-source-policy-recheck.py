"""Actual official worker, bounded query/claim contracts; synthetic offline data."""
import copy,json,sys,unittest,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch,AsyncMock
sys.path.insert(0,str(Path(__file__).parent/'api'))
import official_research as research

class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self,*,failure=False,job_status='verified',job_due=False):
        self.now=datetime.now(timezone.utc);self.calls=[];self.inserts=[];self.failure=failure;self.inspected=[]
        self.cid=uuid.uuid4();self.newid=uuid.uuid4()
        self.row=dict(candidate_id=self.cid,side='buyer',market='Phoenix',category_key='medical_centers',category_label='Medical centers',business_name='Synthetic Medical Clinic',
            source_url='https://www.solvhealth.com/listing/synthetic',source_domain='solvhealth.com',official_site=True,
            status='discovered',closed_at=None,last_verified_at=self.now,evidence={'researched_by':research.VERSION})
        self.original=copy.deepcopy(self.row)
        # These originals stand in for held history; no application SQL may touch them.
        self.original_nine=[{'target_id':f'original-{i}','frozen100':[str(uuid.uuid4()) for _ in range(100)]} for i in range(9)]
        self.frozen=copy.deepcopy(self.original_nine)
        self.job=dict(status=job_status,source_policy_version='old-policy',next_attempt_at=self.now+timedelta(days=30))
        if job_due:self.job['next_attempt_at']=self.now-timedelta(seconds=1)
        outer=self
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            def transaction(self):return self
            async def fetch(self,sql,*args):
                outer.calls.append((sql,args))
                if sql.lstrip().startswith('select candidate_id,source_url,source_domain'):
                    assert 'limit 1000' in sql;return [outer.row]
                assert 'row_number() over(partition by c.market,c.side' in sql
                assert "or c.candidate_id=any($2::uuid[])" in sql
                assert "coalesce(j.source_policy_version,'')<>$3" in sql
                assert "not in ('running','needs_review')" in sql
                assert 'order by source_policy_urgent desc' in sql and 'limit 6' in sql
                blocked=outer.cid in args[1]
                urgent=blocked and outer.job['source_policy_version']!=args[2] and outer.job['status'] not in ('running','needs_review')
                due=outer.job['next_attempt_at']<outer.now
                old=outer.row['last_verified_at']<outer.now-timedelta(days=30)
                return [dict(outer.row,source_policy_urgent=urgent)] if (blocked or old) and (due or urgent) else []
            async def fetchval(self,sql,*args):
                outer.calls.append((sql,args))
                if 'insert into official_research_jobs' in sql:
                    assert 'source_policy_version=$3' in sql
                    assert "status not in ('running','needs_review')" in sql
                    assert "coalesce(official_research_jobs.source_policy_version,'')<>$3" in sql
                    due=outer.job['next_attempt_at']<outer.now
                    urgent=args[3] and outer.job['source_policy_version']!=args[2] and outer.job['status'] not in ('running','needs_review')
                    if not (due or urgent):return None
                    outer.job.update(status='running',source_policy_version=args[2],next_attempt_at=outer.now+timedelta(minutes=30))
                    return outer.cid
                assert sql.lstrip().startswith('insert into market_inventory_candidates')
                assert 'on conflict(side,market,category_key,source_url,business_name)' in sql
                outer.inserts.append(args);return outer.newid
            async def execute(self,sql,*args):
                outer.calls.append((sql,args))
                if 'pg_advisory_xact_lock' in sql:return 'OK'
                if "interval '30 days'" in sql:
                    outer.job.update(status=args[1],next_attempt_at=outer.now+timedelta(days=30));return 'OK'
                if "interval '24 hours'" in sql:
                    outer.job.update(status='needs_review',next_attempt_at=outer.now+timedelta(hours=24));return 'OK'
                raise AssertionError(sql)
        class Pool:
            def acquire(self):return Conn()
        routes={}
        class App:
            state=SimpleNamespace(pool=Pool())
            def post(self,path):
                def save(fn):routes[path]=fn;return fn
                return save
        self.search=AsyncMock(return_value=[dict(url='https://clinic-fixture.example/')])
        research.install(App(),lambda key:None,self.search,['Phoenix'],'secret')
        self.worker=routes['/api/process-official-research']
        async def inspect(row,urls,secret):
            outer.inspected.append((copy.deepcopy(row),urls))
            if outer.failure:return None,'synthetic_unavailable'
            entity={'@type':'MedicalClinic','name':row['business_name'],'url':urls[0],'telephone':'6025550100',
                'address':{'streetAddress':'100 Commercial Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
            result=research.parse_record(row,urls[0],'<script type="application/ld+json">'+json.dumps(entity)+'</script>','a'*64,secret)
            return result,''
        self.inspect=inspect
    async def run_worker(self):
        with patch.object(research,'inspect_source_pages',self.inspect):return await self.worker('admin')
    def assert_preserved(self):
        self.assertEqual(self.row,self.original);self.assertEqual(self.original_nine,self.frozen)
        sql=' '.join(x[0] for x in self.calls).lower()
        for forbidden in ('update growth_','insert into orders','update orders','update vendors','update market_inventory_candidates','delete from'):
            self.assertNotIn(forbidden,sql)
    async def test_fresh_blocked_native_urgent_once_then_verified30day_backoff_new_identity(self):
        self.setup();result=await self.run_worker()
        self.assertEqual((result['inspected'],result['verified'],result['blocked_native_sources_considered']),(1,1,1))
        self.assertEqual(self.inserts[0][5],'https://clinic-fixture.example/')
        self.assertNotEqual(self.inserts[0][5],self.row['source_url'])
        self.search.assert_awaited_once();self.assertTrue(self.job['source_policy_version'].startswith('blocked-domains-v1:'))
        again=await self.run_worker();self.assertEqual(again['inspected'],0);self.assertEqual(len(self.inserts),1)
        self.assert_preserved()
    async def test_failed_recheck_respects24hours_and_running_claim_lease(self):
        self.setup(failure=True);first=await self.run_worker();self.assertEqual(first['needs_review'],1)
        self.assertEqual((await self.run_worker())['inspected'],0)
        self.now+=timedelta(hours=25)
        self.assertEqual((await self.run_worker())['inspected'],1)
        self.assertEqual(len(self.inspected),2);self.assert_preserved()
        self.setup(job_status='running');self.assertEqual((await self.run_worker())['inspected'],0)
        self.setup(job_status='needs_review');self.assertEqual((await self.run_worker())['inspected'],0)
    async def test_actual_url_host_not_spoofable_stored_domain_and_exact_suffix(self):
        for url,domain,count in [('https://notsolvhealth.com/','solvhealth.com',0),
            ('https://solvhealth.com.attacker.example/','solvhealth.com',0),
            ('https://solvhealth.com/','other.example',0),
            ('https://sub.solvhealth.com/listing','sub.solvhealth.com',1)]:
            self.setup();self.row.update(source_url=url,source_domain=domain);self.original=copy.deepcopy(self.row)
            result=await self.run_worker();self.assertEqual(result['blocked_native_sources_considered'],count)
            self.assertEqual(result['inspected'],count);self.assert_preserved()

if __name__=='__main__':unittest.main()
