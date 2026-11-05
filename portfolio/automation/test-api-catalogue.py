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
 def test_complete_private_packet_and_preserved_budget(self):
  import api_research_pilot as pilot
  from official_research import FetchedPageReceipt
  from datetime import datetime,timezone
  import hashlib
  with tempfile.TemporaryDirectory() as d:
   ledger=pilot.Ledger(Path(d));ledger.authorize_budget_50()
   key=sorted(c.catalogue())[0];url='https://synthetic.example/'
   value=dict(service_key=key,business_name='Synthetic',source_url=url,service_quote='Auto glass',location_quote='Phoenix',contact_quote='6025551234',suggested_prospect_types='Fleet operators',proposed_offer='Proposed research sample',missing_information='Paid reserve',record_role='recipient')
   response={'status':'completed','usage':{'input_tokens':1000,'output_tokens':500},'output':[{'type':'web_search_call','status':'completed','action':{'sources':[{'url':url}]}},{'type':'message','content':[{'type':'output_text','text':json.dumps({'candidates':[value]})}]}]}
   raw=b'<p>Synthetic Auto glass Phoenix 6025551234</p>'
   receipt=FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),datetime.now(timezone.utc).isoformat(),200,'text/html',())
   result=c.run_catalogue(ledger,'synthetic-catalogue-001',{'OPENAI_API_KEY':'fixture','OPENAI_BILLING_ATTESTED':'true'},api=lambda *a:response,fetch=lambda u:receipt)
   self.assertEqual(result['records'],1);self.assertEqual(result['preparation_packets'],1)
   report=json.loads(Path(result['private_report']).read_text());self.assertFalse(report['preparation_packets'][0]['customer_ready'])
   self.assertEqual(sum(row[1]>0 for row in c.queue_status(Path(d))),6)
   self.assertLess(ledger.status()['reserved_usd'],1)
   import sqlite3
   db=sqlite3.connect(Path(d)/'catalogue.sqlite3');db.execute('update lanes set attempts=1');db.commit();db.close()
   calls=[]
   def again(request,*args):calls.append(request);return response
   c.run_catalogue(ledger,'synthetic-catalogue-002',{'OPENAI_API_KEY':'fixture','OPENAI_BILLING_ATTESTED':'true'},api=again,fetch=lambda u:receipt)
   self.assertIn(url,calls[0]['input'])
   db=sqlite3.connect(Path(d)/'catalogue.sqlite3');self.assertEqual(db.execute('select count(*) from source_records').fetchone()[0],1);db.close();ledger.db.close()
if __name__=='__main__':unittest.main()
