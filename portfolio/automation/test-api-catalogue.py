import sys,tempfile,unittest,json
from pathlib import Path
from types import SimpleNamespace
sys.path.insert(0,str(Path(__file__).parent));sys.path.insert(0,str(Path(__file__).parent/'api'))
import api_catalogue_research as c
class Tests(unittest.TestCase):
 def test_whole_catalogue_and_round_robin(self):
  import sqlite3
  self.assertEqual(len(c.catalogue()),54)
  with tempfile.TemporaryDirectory() as d:
   root=Path(d);self.assertEqual(len(c.queue_status(root,seed=False)),54);self.assertFalse((root/'catalogue.sqlite3').exists())
   rows=c.queue_status(root);first=[r[0] for r in rows[:6]]
   db=sqlite3.connect(root/'catalogue.sqlite3')
   for k in first:db.execute('update lanes set attempts=1 where service=?',(k,))
   db.commit();db.close();self.assertFalse(set(first)&{r[0] for r in c.queue_status(root)[:6]})
 def test_every_batch_fits_existing_api_bound(self):
  values=list(c.catalogue().values())
  for i in range(0,len(values),6):
   request=c.request_for(values[i:i+6],[]);self.assertLessEqual(len(json.dumps(request).encode()),8000)
   self.assertEqual(request['max_tool_calls'],2)
 def test_source_quote_not_in_page_is_not_verified(self):
  value={'business_name':'Joe','service_quote':'Handyman','location_quote':'Phoenix','contact_quote':'6025551234'}
  r=SimpleNamespace(document='<p>Joe Handyman Phoenix</p>',content_sha256='a'*64,fetched_at='2026-11-05T18:00:00Z')
  out=c.inspect(value,r);self.assertEqual(out['evidence_status'],'research_incomplete');self.assertIn('contact_quote',out['missing_checks']);self.assertFalse(out['offer_ready'])
if __name__=='__main__':unittest.main()
