"""Actual worker + pure-state integration with transactional fake SQL contracts.

No database/network/send; this is not live PostgreSQL concurrency proof.
"""
import asyncio,copy,json,runpy,unittest
from datetime import datetime,timedelta,timezone
from pathlib import Path
from types import SimpleNamespace

ROOT=Path(__file__).parent
class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self,*,busy=False,error=False,quarantine=False,persist_failure=False):
        base=runpy.run_path(str(ROOT/'test-research-policy.py'))['Tests']()
        self.ns=base.namespace();self.calls=[];self.queries=[];self.observations=set();self.metadata=dict(source_cursor=0,source_phases={},last_outcome={})
        self.busy=busy;self.error=error;self.persist_failure=persist_failure;self.depth=0
        now=datetime.now(timezone.utc)
        self.rows=[dict(source_key='facebook_public',source_name='Facebook',source_domain='facebook.com',market='Prescott',
            group_key='cleaning_property',group_label='Cleaning',state_adapter_version='channel-state-v1',created_at=now-timedelta(hours=1),
            next_page=4,query_variant=7,scans=9,results_seen=40,signals_found=2,no_progress_scans=7,
            research_policy_version='old',attempted_policy_version='old',successful_policy_version='',last_run_at=now-timedelta(minutes=5),
            last_success_at=None,next_eligible_at=now-timedelta(minutes=1),failure_streak=0,total_failures=0,last_progress_at=None,
            no_progress_batches=5,last_error=None)]
        if quarantine:self.rows[0].update(next_eligible_at=now+timedelta(days=36500),last_run_at=now,last_success_at=now)
        outer=self
        class Tx:
            async def __aenter__(self):
                outer.depth+=1;self.snapshot=copy.deepcopy((outer.rows,outer.metadata,outer.observations))
            async def __aexit__(self,typ,*args):
                if typ:outer.rows,outer.metadata,outer.observations=self.snapshot
                outer.depth-=1
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):
                outer.calls.append(('pool_release',()))
            def transaction(self):return Tx()
            async def fetch(self,sql,*args):
                outer.calls.append((sql,args))
                if 'group by' in sql:return []
                assert sql=='select * from local_demand_scan_state';return copy.deepcopy(outer.rows)
            async def fetchrow(self,sql,*args):
                outer.calls.append((sql,args))
                if 'channel_worker_metadata' in sql:return copy.deepcopy(outer.metadata)
                if 'local_demand_signals' in sql:return None
                raise AssertionError(sql)
            async def fetchval(self,sql,*args):
                outer.calls.append((sql,args))
                if 'pg_try_advisory_lock' in sql:return not outer.busy
                if 'pg_advisory_unlock' in sql:return True
                if sql.lstrip().startswith('with expired'):return 0
                if 'insert into local_channel_observations' in sql:
                    assert outer.depth>0;assert 'on conflict(source_key,market,source_url) do nothing returning observation_id' in sql
                    key=(args[0],args[1],args[3])
                    if key in outer.observations:return None
                    outer.observations.add(key);return 'obs'
                if 'insert into local_demand_signals' in sql:return 'request'
                raise AssertionError(sql)
            async def execute(self,sql,*args):
                outer.calls.append((sql,args))
                if 'update channel_worker_metadata set source_cursor' in sql:
                    assert outer.depth>0;outer.metadata.update(source_cursor=args[0],source_phases=json.loads(args[1]))
                elif 'update channel_worker_metadata set last_completed_at' in sql:
                    outer.metadata.update(last_completed_at=args[0],last_outcome=json.loads(args[1]))
                elif 'update local_demand_scan_state set' in sql:
                    assert outer.depth>0;assert len(args)==20
                    if outer.persist_failure:
                        outer.persist_failure=False;raise RuntimeError('synthetic state persistence failure')
                    row=next(r for r in outer.rows if (r['source_key'],r['market'],r['group_key'])==args[:3])
                    keys=('next_page','query_variant','scans','last_run_at','last_success_at','next_eligible_at','failure_streak','total_failures','last_progress_at','no_progress_batches','last_error','attempted_policy_version','successful_policy_version')
                    row.update(zip(keys,args[3:16]));row['results_seen']+=args[16];row['signals_found']+=args[17]
                    if args[19]:row['research_policy_version']=args[15];row['no_progress_scans']=row['no_progress_scans']+1 if args[17]==0 else 0
                elif 'update local_channel_observations' in sql or 'update local_demand_signals' in sql:assert outer.depth>0
                else:raise AssertionError(sql)
        class Pool:
            def acquire(self):return Conn()
        self.ns['app']=SimpleNamespace(state=SimpleNamespace(pool=Pool()))
        async def search(query,page):
            self.queries.append((query,page))
            if self.error:raise TimeoutError('synthetic')
            return [dict(domain='facebook.com',url='https://facebook.com/provider',title='Prescott pressure washing: Need a driveway cleaner?',
                snippet='Owner-operated exterior cleaning. Call now',engine='fixture',score=1)]
        self.ns['search_research_web']=search
    async def run_worker(self):return await self.ns['process_local_demand_signals']('admin')
    def assert_no_customer_actions(self):
        sql=' '.join(x[0] for x in self.calls).lower()
        for forbidden in ('insert into orders','update orders','send_mail','insert into vendors'):
            self.assertNotIn(forbidden,sql)
    async def test_actual_worker_distinct_ad_progress_cursor_phase_and_idempotency(self):
        self.setup();result=await self.run_worker()
        self.assertEqual((result['new_observations'],result['new_signals'],result['successful_lanes']),(1,0,1))
        self.assertEqual(self.queries[0][1],1)
        self.assertEqual((self.rows[0]['query_variant'],self.rows[0]['next_page'],self.rows[0]['no_progress_batches']),(0,2,0))
        self.assertEqual(self.metadata['source_phases'],{'facebook_public':1})
        self.assertEqual(self.calls[-2][0],'select pg_advisory_unlock(20261104,701)');self.assertEqual(self.calls[-1][0],'pool_release')
        # Due again after a simulated persisted time change: same query/page2,
        # duplicate observation adds no false progress, phase survives invocation.
        self.rows[0]['next_eligible_at']=datetime.now(timezone.utc)-timedelta(seconds=1)
        again=await self.run_worker()
        self.assertEqual(again['new_observations'],0);self.assertEqual(self.queries[-1][1],2)
        self.assertEqual(self.queries[0][0],self.queries[-1][0])
        self.assertEqual(self.rows[0]['no_progress_batches'],1)
        self.assertEqual(self.metadata['source_phases'],{'facebook_public':0});self.assert_no_customer_actions()
    async def test_actual_error_persists_attempt_not_success_and_unlocks(self):
        self.setup(error=True);result=await self.run_worker()
        self.assertEqual((result['failed_lanes'],result['successful_lanes'],result['outcome']),(1,0,'degraded'))
        self.assertEqual(self.rows[0]['failure_streak'],1);self.assertIsNone(self.rows[0]['last_success_at'])
        self.assertEqual(self.rows[0]['successful_policy_version'],'');self.assertEqual(self.rows[0]['next_page'],1)
        self.assertEqual(self.calls[-2][0],'select pg_advisory_unlock(20261104,701)');self.assert_no_customer_actions()
    async def test_atomic_observation_rollback_then_failure_state(self):
        self.setup(persist_failure=True);result=await self.run_worker()
        self.assertEqual(self.observations,set());self.assertEqual(result['new_observations'],0)
        self.assertEqual(result['failed_lanes'],1);self.assertEqual(self.rows[0]['failure_streak'],1)
        self.assertEqual((self.rows[0]['results_seen'],self.rows[0]['signals_found']),(40,2))
    async def test_unselected_quarantine_is_semantic_help_and_not_searched(self):
        self.setup(quarantine=True);result=await self.run_worker()
        self.assertEqual(self.queries,[]);self.assertEqual(result['clock_quarantined_lanes'],1)
        self.assertEqual(result['help_needed'][0]['reason'],'help_needed_invalid_due_time')
        self.assertEqual(result['outcome'],'needs_attention')
    async def test_genuine_request_and_business_only_discovery_stay_separate(self):
        self.setup()
        self.rows.append(dict(self.rows[0],source_key='whitepages_business_public',source_name='Whitepages',source_domain='whitepages.com'))
        async def search(query,page):
            self.queries.append((query,page))
            if 'whitepages.com' in query:
                return [dict(domain='whitepages.com',url='https://whitepages.com/business/az/prescott/cleaning',
                    title='Prescott pressure washing business',snippet='Public business listing',engine='fixture',score=1)]
            return [dict(domain='facebook.com',url='https://facebook.com/request',title='Prescott looking for an owner-operated pressure washing cleaner; any recommendations?',snippet='',engine='fixture',score=1)]
        self.ns['search_research_web']=search
        result=await self.run_worker()
        self.assertEqual((result['new_observations'],result['new_signals'],result['successful_lanes']),(2,1,2))
        demand=[args for sql,args in self.calls if 'insert into local_demand_signals' in sql]
        self.assertEqual(len(demand),1);self.assertEqual(demand[0][0],'facebook_public')
        self.assert_no_customer_actions()

    async def test_status_computes_help_for_all_lanes_without_running_search(self):
        self.setup(quarantine=True)
        from research_policy import install
        routes={}
        class App:
            state=self.ns['app'].state
            def post(self,path):
                def save(fn):routes[path]=fn;return fn
                return save
        install(App(),lambda key:None)
        result=await routes['/api/admin/research-policy-status']('admin')
        self.assertEqual(result['health_counts']['help_needed_invalid_due_time'],1)
        self.assertEqual(result['help_needed'][0]['reason'],'help_needed_invalid_due_time')
        self.assertEqual(self.queries,[]);self.assertEqual(result['worker']['source_cursor'],0)

    async def test_busy_no_mutation_and_migration_failure_unlock(self):
        self.setup(busy=True);result=await self.run_worker();self.assertEqual(result['outcome'],'busy');self.assertEqual(self.queries,[])
        self.assertEqual(len(self.calls),2)
        self.setup();self.rows[0]['state_adapter_version']=''
        with self.assertRaisesRegex(ValueError,'migration required'):await self.run_worker()
        self.assertEqual(self.calls[-2][0],'select pg_advisory_unlock(20261104,701)')

if __name__=='__main__':unittest.main()
