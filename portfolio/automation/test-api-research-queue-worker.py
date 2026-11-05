"""Real temporary SQLite/flock and pilot ledger; synthetic research/import only."""
import json,sqlite3,sys,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
BASE=Path(__file__).parent;sys.path.insert(0,str(BASE))
import api_research_pilot as p
import api_research_queue_worker as w

class Tests(unittest.TestCase):
    def setup(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup)
        self.root=Path(self.tmp.name)/'private';self.ledger=p.Ledger(self.root);self.addCleanup(self.ledger.db.close)
        self.research_calls=[];self.import_calls=[];self.verified=1;self.inserted=1
    def research(self,request_id):
        self.research_calls.append(request_id)
        # Actual persistent pilot reservation/mission lifecycle, no HTTP call.
        self.ledger.begin(request_id);call=self.ledger.reserve(request_id)
        usage={'input_tokens':1000,'output_tokens':100}
        proof={'version':'completed-usage-upper-v1','status':'completed','model':'gpt-6.1-sol','phase':'extract','search_requests':0,'tools_verified':True,'usage':usage}
        self.ledger.complete(call,usage,settled_upper_micro=p.usage_upper_micro(usage,proof),cost_proof=proof)
        directory=p.private_dir(self.root/request_id)
        report={'request_id':request_id,'mode':'grounded_recovery','status':'research_partial','verified':[
            {'record':{'side':'buyer','market':'Phoenix','category_key':'property_management'}} for _ in range(self.verified)],
            'native_primary_verified_count':self.verified,'outreach_sent':0,'offer_ready':False,'database_writes':False}
        path=directory/'report-private.json';p.write_private(path,report);self.ledger.finish(request_id,'research_partial',path)
        return {'request_id':request_id,'status':'research_partial','private_report':str(path)}
    def importer(self,report):
        self.import_calls.append(report['request_id'])
        return {'ok':True,'inserted':self.inserted,'provider_accepted':False,'outreach_sent':0}
    def once(self,**kwargs):
        return w.run_once(self.root,enabled=True,handoff_confirmed=True,research=self.research,importer=self.importer,**kwargs)
    def test_one_job_per_invocation_real_history_and_no_duplicate_mission(self):
        self.setup();first=self.once();second=self.once()
        self.assertEqual(first['completed_jobs'],1);self.assertEqual(second['completed_jobs'],2)
        self.assertEqual(len(set(self.research_calls)),2);self.assertEqual(self.import_calls,self.research_calls)
        self.assertEqual(second['lifetime_attempts'],2);self.assertEqual(second['inserted_inventory'],2)
        queue=w.Queue(self.root);self.addCleanup(queue.db.close)
        with self.assertRaises(sqlite3.IntegrityError):queue.db.execute('delete from jobs')
        with self.assertRaises(sqlite3.IntegrityError):queue.db.execute("update jobs set state='running'")
    def test_disabled_handoff_and_real_flock_prevent_any_job(self):
        self.setup()
        for enabled,handoff,reason in ((False,True,'explicit_queue_enable_required'),(True,False,'mac_driver_handoff_required')):
            result=w.run_once(self.root,enabled=enabled,handoff_confirmed=handoff,research=self.research,importer=self.importer)
            self.assertEqual(result['stop_reason'],reason)
        with w.worker_lock(self.root):
            with self.assertRaisesRegex(w.Held,'worker_already_running'):self.once()
        self.assertEqual(self.research_calls,[]);self.assertEqual(self.import_calls,[])
    def test_running_job_only_needs_help_when_no_live_worker_lock(self):
        self.setup();queue=w.Queue(self.root);self.addCleanup(queue.db.close)
        with w.worker_lock(self.root):
            queue.claim(self.ledger);status=queue.diagnostic(self.ledger)
            self.assertTrue(status['worker_active']);self.assertFalse(status['needs_help'])
            self.assertEqual(status['stop_reason'],'running_or_unresolved_job')
        status=queue.diagnostic(self.ledger)
        self.assertFalse(status['worker_active']);self.assertTrue(status['needs_help'])
        self.assertEqual(status['stop_reason'],'orphaned_running_job')

    def test_existing_external_missions_count_towards_forty_lifetime(self):
        self.setup()
        for index in range(40):
            request='synthetic-prior-manual-'+str(index);self.ledger.begin(request);self.ledger.finish(request,'research_partial')
        result=self.once();self.assertEqual(result['stop_reason'],'lifetime_job_limit');self.assertTrue(result['needs_help'])
        self.assertEqual(result['lifetime_attempts'],40);self.assertEqual(self.research_calls,[])
    def test_real_budget_guard_requires_six_available_and_preserves_uncertain_reserve(self):
        self.setup()
        for index in range(2):
            request='synthetic-uncertain-'+str(index);self.ledger.begin(request);self.ledger.reserve(request)
        result=self.once();self.assertEqual(result['stop_reason'],'insufficient_six_dollar_reserve');self.assertTrue(result['needs_help'])
        self.assertEqual(self.ledger.status()['reserved_usd'],6);self.assertEqual(self.research_calls,[])
    def test_crash_and_import_uncertainty_never_retry_or_create_new_job(self):
        self.setup();queue=w.Queue(self.root);self.addCleanup(queue.db.close)
        prior=queue.claim(self.ledger);self.assertIsNotNone(prior)
        result=self.once();self.assertEqual(result['stop_reason'],'prior_unfinished_job_no_retry')
        self.assertTrue(result['needs_help']);self.once();self.assertEqual(self.research_calls,[])
        # A separate private queue exercises actual research then uncertain import.
        self.setup()
        def uncertain(report):self.import_calls.append(report['request_id']);raise TimeoutError('PRIVATE_ERROR')
        result=w.run_once(self.root,enabled=True,handoff_confirmed=True,research=self.research,importer=uncertain)
        self.assertEqual(result['stop_reason'],'import_uncertain_no_retry');self.assertTrue(result['needs_help'])
        self.once();self.assertEqual(len(self.research_calls),1);self.assertEqual(len(self.import_calls),1)
        self.assertNotIn('PRIVATE_ERROR',json.dumps(result))
    def test_three_zero_progress_partial_reports_are_preserved_then_stop(self):
        self.setup();self.verified=0;self.inserted=0
        for index in range(3):result=self.once()
        self.assertEqual(len(self.research_calls),3);self.assertEqual(self.import_calls,[])
        self.assertEqual(result['stop_reason'],'consecutive_no_progress');self.assertTrue(result['needs_help'])
        self.assertEqual(result['consecutive_no_progress'],3)
        for request in self.research_calls:self.assertTrue((self.root/request/'report-private.json').is_file())
        self.once();self.assertEqual(len(self.research_calls),3)
    def test_duplicate_existing_request_and_wrong_scope_failclosed(self):
        self.setup();self.ledger.begin('bmc-vps-phoenix-property-0001')
        result=self.once();self.assertEqual(result['stop_reason'],'request_id_already_used_no_retry');self.assertEqual(self.research_calls,[])
        self.setup()
        def wrong_scope(request):
            result=self.research(request);path=Path(result['private_report']);report=json.loads(path.read_text())
            report['verified'][0]['record']['market']='Tucson';path.write_text(json.dumps(report));return result
        result=w.run_once(self.root,enabled=True,handoff_confirmed=True,research=wrong_scope,importer=self.importer)
        self.assertEqual(result['stop_reason'],'research_scope_changed');self.assertEqual(self.import_calls,[])

if __name__=='__main__':unittest.main()
