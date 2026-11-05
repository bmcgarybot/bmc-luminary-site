import sys,tempfile,unittest,sqlite3
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent))
import api_research_pilot as p
import api_research_queue_worker as q
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
if __name__=='__main__':unittest.main()
