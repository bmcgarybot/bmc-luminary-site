"""Deterministic synthetic worker-state regressions; no database or network."""
import sys,unittest
from pathlib import Path
from dataclasses import replace
sys.path.insert(0,str(Path(__file__).parent/'api'))
from channel_scan_state import ScanState,query_slot,prepare_policy,complete_batch,health,select_due

class Tests(unittest.TestCase):
    def state(self,**kwargs):
        return ScanState('lane','facebook',0,**kwargs)
    def run_batch(self,state,now=300,**kwargs):
        return complete_batch(state,now=now,policy_version='v2',**kwargs)
    def test_query_stays_stable_across_pages_then_next_variant_starts_page_one(self):
        s=prepare_policy(self.state(),'v2')
        slots=[]
        for i in range(6):
            slots.append(query_slot(s,3))
            s=self.run_batch(s,now=i*300,raw_results=4,new_observations=1)
        self.assertEqual([x['page'] for x in slots],[1,2,3,4,5,1])
        self.assertEqual([x['mode'] for x in slots],['request']*5+['discovery'])
        self.assertTrue(all(x['term_index']==0 for x in slots))
    def test_every_service_term_gets_both_modes_and_empty_query_advances(self):
        s=self.state();slots=[]
        for i in range(8):
            slots.append(query_slot(prepare_policy(s,'v2'),3))
            s=self.run_batch(s,now=i*300)
        self.assertEqual([(x['term_index'],x['mode']) for x in slots],[(0,'request'),(0,'discovery'),(1,'request'),(1,'discovery'),(2,'request'),(2,'discovery'),(0,'request'),(0,'discovery')])
        self.assertTrue(all(x['page']==1 for x in slots))
    def test_listing_and_ad_discovery_reset_no_progress_without_demand(self):
        s=self.state(attempted_policy_version='v2',no_progress_batches=9)
        result=self.run_batch(s,raw_results=3,new_observations=2,new_requests=0)
        self.assertEqual(result.no_progress_batches,0)
        self.assertEqual(result.next_eligible_at,600)
    def test_empty_duplicate_and_error_backoffs_are_bounded_and_recover(self):
        s=self.state()
        for i in range(20):s=self.run_batch(s,now=i*100000,raw_results=5)
        self.assertEqual(s.next_eligible_at-s.last_attempt_at,21600)
        self.assertEqual(health(s,now=s.last_attempt_at),'no_progress_backoff')
        cursor=(s.query_variant,s.page)
        for i in range(3):s=self.run_batch(s,now=3000000+i*300,error='Timeout')
        self.assertEqual((s.query_variant,s.page),cursor)
        self.assertEqual(health(s,now=s.last_attempt_at),'help_needed_repeated_failures')
        s=self.run_batch(s,now=4000000,new_observations=1,raw_results=1)
        self.assertEqual((s.failure_streak,s.no_progress_batches,s.last_error),(0,0,None))
        self.assertEqual(health(s,now=4000000),'healthy')
        self.assertEqual(s.total_failures,3)
        self.assertEqual(s.last_progress_at,4000000)
    def test_policy_failure_attempt_is_not_success_and_resets_old_cursor(self):
        s=self.state(query_variant=8,page=4,attempted_policy_version='v1',successful_policy_version='v1',last_success_at=100)
        s=self.run_batch(s,error='blocked')
        self.assertEqual((s.query_variant,s.page),(0,1))
        self.assertEqual(s.attempted_policy_version,'v2')
        self.assertEqual((s.attempts,s.total_failures),(1,1))
        self.assertEqual((s.successful_policy_version,s.last_success_at),('v1',100))
    def test_backfill_failures_cannot_starve_due_successful_lanes(self):
        failed=self.state(attempted_policy_version='v2',successful_policy_version='v1',last_attempt_at=900,failure_streak=4,next_eligible_at=9999)
        ready=replace(self.state(),lane_id='ready',attempted_policy_version='v2',successful_policy_version='v2',last_attempt_at=1)
        pending=replace(self.state(),lane_id='pending',attempted_policy_version='v1',last_attempt_at=10)
        picked,_,_=select_due([failed,ready,pending],now=1000,policy_version='v2',limit=2)
        self.assertEqual([s.lane_id for s in picked],['pending','ready'])
        # After a failed current-policy attempt its old success version gives no
        # perpetual backfill priority; the oldest due normal lane wins next.
        failed=replace(failed,next_eligible_at=0)
        picked,_,_=select_due([failed,ready],now=1000,policy_version='v2',limit=1)
        self.assertEqual(picked[0].lane_id,'ready')
    def test_source_round_robin_cursor_and_staleness(self):
        states=[replace(self.state(),source_key=k,lane_id=k) for k in ('a','b','c')]
        picks,cursor,_=select_due(states,now=0,policy_version='v2',limit=1,source_cursor=1)
        self.assertEqual(picks[0].source_key,'b');self.assertEqual(cursor,2)
        self.assertEqual(health(self.state(),now=36*3600),'help_needed_never_succeeded')
        self.assertEqual(health(self.state(last_success_at=10),now=36*3600+10),'help_needed_stale')
    def test_future_clock_quarantined_with_explicit_help_and_history_preserved(self):
        s=ScanState('future','facebook',0,attempted_policy_version='v2',
                    last_attempt_at=1000000,last_success_at=1000000,next_eligible_at=1000300)
        self.assertEqual(health(s,now=1000),'help_needed_clock_skew')
        picked,_,_=select_due([s],now=1000,policy_version='v2')
        self.assertEqual(picked,[])
        with self.assertRaisesRegex(ValueError,'quarantined'):
            self.run_batch(s,now=1000)
        self.assertEqual(s.last_success_at,1000000)
        self.assertEqual(health(replace(s,last_attempt_at=float('inf')),now=1000),'help_needed_invalid_timestamp')
        # A legitimate future due time does not quarantine an ordinary backoff.
        ordinary=self.run_batch(self.state(),now=1000,error='Timeout')
        self.assertEqual(health(ordinary,now=1000),'retry_backoff')
        # Once the trusted clock catches up, normal execution can resume.
        recovered=self.run_batch(s,now=1000300,raw_results=1,new_observations=1)
        self.assertEqual(health(recovered,now=1000300),'healthy')

    def test_single_slot_calls_persist_backfill_phase_even_after_failure(self):
        ready=replace(self.state(),lane_id='ready',attempted_policy_version='v2',
                      successful_policy_version='v2',last_attempt_at=1)
        pending=[replace(self.state(),lane_id=f'pending{i}',attempted_policy_version='v1',
                         last_attempt_at=10+i) for i in range(6)]
        states=[ready]+pending
        cursor,phases=0,{}
        sequence=[]
        for i in range(3):
            now=1000000+i*300
            picks,cursor,phases=select_due(states,now=now,policy_version='v2',limit=1,
                                         source_cursor=cursor,source_phases=phases)
            pick=picks[0];sequence.append(pick.lane_id)
            result=self.run_batch(pick,now=now,error='blocked' if i==0 else None,
                                  raw_results=1,new_observations=0 if i==0 else 1)
            states=[result if row.lane_id==pick.lane_id else row for row in states]
        self.assertEqual(sequence,['pending0','ready','pending1'])
        self.assertEqual(phases,{'facebook':1})
        self.assertEqual(next(x for x in states if x.lane_id=='pending0').successful_policy_version,'')
        supplied={'facebook':1}
        select_due(states,now=2000000,policy_version='v2',source_phases=supplied)
        self.assertEqual(supplied,{'facebook':1})  # Pure: caller state not mutated.

    def test_unbounded_future_due_time_is_explicit_help_not_silent_backoff(self):
        s=ScanState('future-due','facebook',990,
            attempted_policy_version='v2',last_attempt_at=999,last_success_at=999,
            next_eligible_at=1000+100*365*86400)
        self.assertEqual(health(s,now=1000),'help_needed_invalid_due_time')
        self.assertEqual(select_due([s],now=1000,policy_version='v2')[0],[])
        self.assertEqual(health(replace(s,next_eligible_at=999+21600),now=1000),'healthy')

    def test_tolerated_future_attempt_defers_until_completion_is_legal(self):
        s=ScanState('slight-skew','facebook',990,attempted_policy_version='v2',
                    last_attempt_at=1100,last_success_at=999,next_eligible_at=0)
        self.assertEqual(health(s,now=1000),'retry_clock_skew_deferred')
        self.assertEqual(select_due([s],now=1000,policy_version='v2')[0],[])
        selected,_,_=select_due([s],now=1100,policy_version='v2')
        self.assertEqual(len(selected),1)
        completed=self.run_batch(selected[0],now=1101,raw_results=1,new_observations=1)
        self.assertEqual(completed.last_success_at,1101)
        self.assertEqual(health(completed,now=1101),'healthy')

    def test_invalid_inputs(self):
        with self.assertRaises(ValueError):query_slot(self.state(),0)
        with self.assertRaises(ValueError):self.run_batch(self.state(),raw_results=-1)
        with self.assertRaises(ValueError):self.run_batch(self.state(last_attempt_at=900),now=1)

if __name__=='__main__':unittest.main()
