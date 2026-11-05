import json,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
import api_research_relay_worker as r
class Tests(unittest.TestCase):
 def setup(self):
  t=tempfile.TemporaryDirectory();self.addCleanup(t.cleanup);p=Path(t.name)/'private';r.pilot.private_dir(p)
  (p/'openai.env').write_text('synthetic=true');(p/'openai.env').chmod(0o600)
  l=r.pilot.Ledger(p);l.db.close();return p
 def test_disabled_has_no_api_or_state_writes(self):
  p=self.setup();self.assertEqual(r.run_due(p,run=lambda *a,**k:self.fail('not enabled'))['status'],'relay_research_disabled')
  self.assertFalse((p/'relay-research.json').exists())
 def test_enable_uses_existing_timer_and_preserves_cadence_and_cap(self):
  p=self.setup()
  with patch.object(r,'timer_active',return_value=True):
   a=r.enable(p);self.assertTrue(a['driver_ready']);self.assertEqual(a['queue']['budget']['cap_usd'],10)
   value=r.read_state(p);value['next_run_after']=999;r.save_state(p,value);r.enable(p)
   self.assertEqual(r.read_state(p)['next_run_after'],999)
  self.assertEqual((p/'relay-research.json').stat().st_mode&0o777,0o600)
  with patch.object(r,'timer_active',return_value=True):self.assertFalse(r.disable(p)['driver_enabled'])
  self.assertEqual(r.read_state(p)['next_run_after'],999)
 def test_timer_tick_runs_once_then_waits_five_minutes_without_sudo(self):
  p=self.setup();calls=[]
  with patch.object(r,'timer_active',return_value=True):r.enable(p)
  def run(directory,**kw):calls.append(kw);return {'status':'research_queue_status','completed_jobs':1}
  self.assertEqual(r.run_due(p,run=run,clock=lambda:10)['completed_jobs'],1)
  self.assertEqual(r.run_due(p,run=run,clock=lambda:309)['status'],'relay_research_not_due')
  r.run_due(p,run=run,clock=lambda:310)
  self.assertEqual(calls,[{'enabled':True,'handoff_confirmed':True}]*2)
 def test_failure_is_recorded_and_does_not_spin_or_break_relay(self):
  p=self.setup()
  with patch.object(r,'timer_active',return_value=True):r.enable(p)
  def fail(*a,**k):raise RuntimeError('PRIVATE DATA')
  result=r.run_due(p,run=fail,clock=lambda:5);self.assertEqual(result['status'],'relay_research_needs_help')
  self.assertNotIn('PRIVATE DATA',json.dumps(r.read_state(p)));self.assertEqual(r.read_state(p)['next_run_after'],305)
  with patch.object(r,'timer_active',return_value=False),self.assertRaises(r.pilot.Held):r.enable(p)
 def test_source_fix_resume_records_history_without_running_research(self):
  p=self.setup()
  with patch.object(r,'timer_active',return_value=True):
   r.enable(p);ledger=r.pilot.Ledger(p);queue=r.worker.Queue(p)
   for i in range(3):
    request=queue.claim(ledger);queue.finish(request,'no_progress',reason='no_verified_sources')
   before=queue.db.execute('select * from jobs').fetchall()
   result=r.resume_source_fix(p)
   self.assertEqual(result['recovery']['status'],'source_fix_recovery_recorded')
   self.assertEqual(result['queue']['queue_jobs'],3);self.assertIsNone(result['queue']['stop_reason'])
   self.assertEqual(queue.db.execute('select * from jobs').fetchall(),before)
   ledger.db.close();queue.db.close()

if __name__=='__main__':unittest.main()
