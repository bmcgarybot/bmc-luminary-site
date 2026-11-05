import sys,tempfile,unittest,sqlite3
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent))
import api_research_pilot as p
import api_research_queue_worker as q
from datetime import datetime,timezone,timedelta
class Tests(unittest.TestCase):
 def test_authorized_total_preserves_costs_and_removes_old_attempt_stop(self):
  with tempfile.TemporaryDirectory() as t:
   ledger=p.Ledger(Path(t));queue=q.Queue(Path(t))
   for n in range(40):ledger.begin('synthetic-mission-'+str(n))
   ledger.reserve('synthetic-mission-0');before=list(ledger.db.execute('select * from reservations'))
   self.assertEqual(queue.diagnostic(ledger)['stop_reason'],'lifetime_job_limit')
   ledger.authorize_budget_50();ledger.authorize_budget_50()
   self.assertEqual(ledger.status()['cap_usd'],50);self.assertEqual(ledger.status()['available_usd'],47)
   self.assertEqual(list(ledger.db.execute('select * from reservations')),before)
   self.assertIsNone(queue.diagnostic(ledger)['stop_reason']);self.assertIsNone(queue.diagnostic(ledger)['lifetime_job_limit'])
   with self.assertRaises(sqlite3.IntegrityError):ledger.db.execute('delete from owner_budget_authorizations')
   queue.db.close();ledger.db.close()
 def test_no_progress_backs_off_without_permanent_halt_under_authorized_budget(self):
  with tempfile.TemporaryDirectory() as t:
   ledger=p.Ledger(Path(t));queue=q.Queue(Path(t));ledger.authorize_budget_50()
   finished=(datetime.now(timezone.utc)-timedelta(minutes=31)).isoformat()
   for n in range(3):
    queue.db.execute("insert into jobs(job_no,request_id,state,created,finished,verified,inserted) values(?,?,'no_progress',?,?,0,0)",(n+1,'synthetic-'+str(n),finished,finished))
   self.assertIsNone(queue.diagnostic(ledger)['stop_reason'])
   rid=queue.claim(ledger);self.assertIsNotNone(rid)
   queue.finish(rid,'no_progress',reason='no_verified_sources')
   self.assertEqual(queue.diagnostic(ledger)['stop_reason'],'no_progress_cooldown')
   self.assertIsNotNone(queue.diagnostic(ledger)['next_attempt_at'])
   self.assertIsNone(queue.claim(ledger));self.assertEqual(len(queue.rows()),4)
   queue.db.close();ledger.db.close()
if __name__=='__main__':unittest.main()
