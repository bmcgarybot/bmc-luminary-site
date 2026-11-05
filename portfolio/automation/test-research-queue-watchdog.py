"""Read-only queue probe + existing alert dedup/recovery policy; no network/mail."""
import importlib.util,json,sys,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
BASE=Path(__file__).parent
spec=importlib.util.spec_from_file_location('watchdog',BASE/'ops-watchdog.py');watch=importlib.util.module_from_spec(spec);spec.loader.exec_module(watch)

class Tests(unittest.TestCase):
    def setup(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup);self.home=Path(self.tmp.name)
        self.queue=self.home/'.local/state/bmc-api-research/research-queue.sqlite3'
    def probe(self,value,rc=0):
        with patch.object(watch.pathlib.Path,'home',return_value=self.home),patch.object(watch,'run',return_value=(rc,json.dumps(value),'')) as run:
            result=watch.research_queue_check()
        return result,run
    def test_absent_queue_does_not_change_existing_checks_or_invoke_any_command(self):
        self.setup();result,run=self.probe({});self.assertIsNone(result);run.assert_not_called()
    def test_budget_lifetime_and_help_are_static_owner_checks_without_recovery(self):
        self.setup();self.queue.parent.mkdir(parents=True);self.queue.touch()
        for reason,needs in (('insufficient_six_dollar_reserve',False),('lifetime_job_limit',False),('consecutive_no_progress',True),('import_uncertain_no_retry',True)):
            result,run=self.probe({'scope':'Phoenix/property_management','needs_help':needs,'stop_reason':reason})
            self.assertFalse(result['ok']);self.assertEqual(result['detail'],reason)
            args,kwargs=run.call_args;self.assertEqual(args[0][-1],'--status');self.assertEqual(kwargs['timeout'],10)
            self.assertNotIn('--once',args[0]);self.assertEqual(watch.policy.repair_plan([result],{},10000,True),[])
    def test_running_and_ready_do_not_trigger_owner_help_or_false_alarm(self):
        self.setup();self.queue.parent.mkdir(parents=True);self.queue.touch()
        for reason in (None,'running_or_unresolved_job'):
            result,_=self.probe({'scope':'Phoenix/property_management','needs_help':False,'stop_reason':reason})
            self.assertTrue(result['ok'])
    def test_invalid_timeout_and_private_text_never_enter_owner_alert_detail(self):
        self.setup();self.queue.parent.mkdir(parents=True);self.queue.touch()
        result,_=self.probe({'scope':'Phoenix/property_management','needs_help':True,'stop_reason':'PRIVATE_CONTACT@example.test'})
        self.assertEqual(result['detail'],'queue_status_invalid');self.assertNotIn('PRIVATE',json.dumps(result))
        result,_=self.probe({},rc=99);self.assertEqual(result['detail'],'queue_status_unavailable')
    def test_existing_alert_dedup_and_recovery_not_customer_send(self):
        self.setup();self.queue.parent.mkdir(parents=True);self.queue.touch()
        check,_=self.probe({'scope':'Phoenix/property_management','needs_help':True,'stop_reason':'consecutive_no_progress'})
        state={};first=watch.policy.alert_decision([check],state,10000);self.assertTrue(first['send'])
        watch.policy.record_alert(state,first,10000,True)
        self.assertFalse(watch.policy.alert_decision([check],state,11000)['send'])
        recovered=dict(check,ok=True,detail='bounded_research_ready')
        self.assertTrue(watch.policy.alert_decision([recovered],state,12000)['send'])

if __name__=='__main__':unittest.main()
