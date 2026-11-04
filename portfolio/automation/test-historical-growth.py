"""Read-only historical membership, private encryption and bounded IMAP; no IO."""
import asyncio,copy,json,runpy,sys,unittest,uuid
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import historical_growth as h
class Context:
 def __init__(self,value=None):self.value=value
 async def __aenter__(self):return self.value
 async def __aexit__(self,*a):pass
class Conn:
 def __init__(self):
  self.calls=[];self.transactions=[];self.protected=[]
  self.rows=[dict(outreach_id=str(uuid.uuid4()),target_id='historical-target',sent_at='2026-10-29T00:00:00Z',status='sent',opt_out=False,replied_at=None,reply_type=None,owner_review_required=True,historical_review_recorded_at='2026-10-30T04:00:00Z',wave='old-wave',subject='Synthetic subject',business_name='Synthetic Historical Contractor',public_email='historical@example.test',market='Phoenix',service_key='commercial_cleaning',source_url='https://historical.example/',website='',suppression_reason='historical review',suppression_source='migration',historical_total=1)]
 def transaction(self,**kw):self.transactions.append(kw);return Context(self)
 async def fetch(self,sql,*args):
  self.calls.append((sql,args));assert sql.lstrip().startswith('select')
  if sql==h.MEMBERSHIP_SQL:return copy.deepcopy(self.rows)
  if 'from growth_outreach_targets' in sql:return self.protected
  if 'from events' in sql:return [dict(event_id=4,occurred_at='synthetic-date',actor='mail-monitor',payload={'classification':'other','email':'historical@example.test'})]
  if 'market_inventory_candidates' in sql:return [dict(candidate_id='00000000-0000-4000-8000-000000000001',business_name='Synthetic Historical Contractor',public_email='historical@example.test',source_url='https://historical.example/',market='Phoenix',category_key='commercial_cleaning',evidence={})]
  raise AssertionError(sql)
 async def fetchrow(self,sql,*args):self.calls.append((sql,args));assert sql.lstrip().startswith('select');return dict(sample_count=1,order_count=0)
 async def execute(self,*a):raise AssertionError('Historical review cannot write')
class App:
 def __init__(self,conn):self.routes={};self.state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(conn)))
 def post(self,path):
  def deco(fn):self.routes[path]=fn;return fn
  return deco
class Box:
 def __init__(self,fail=False,mismatch=False):self.calls=[];self.sender='';self.fail=fail;self.mismatch=mismatch
 def login(self,*a):pass
 def select(self,*a,**k):self.calls.append(('select',a,k));return 'OK',[]
 def uid(self,cmd,*args):
  self.calls.append((cmd,args))
  if cmd=='search':self.sender=args[-1].strip('"');return 'OK',[b' '.join(str(i).encode() for i in range(1,51))]
  if 'HEADER' in args[-1]:return 'OK',[(b'head',('From: '+('stranger@example.test' if self.mismatch else self.sender)+'\r\nSubject: Synthetic question\r\n\r\n').encode())]
  if self.fail:return 'NO',[]
  return 'OK',[(b'body',('From: '+self.sender+'\r\nSubject: Synthetic question\r\n\r\n').encode()+b'x'*30000)]
 def logout(self):self.calls.append(('logout',))
CONFIG=dict(IMAP_HOST='mail.invalid',IMAP_USER='private-user',IMAP_PASSWORD='private-secret',IMAP_FOLDER='INBOX')
class Tests(unittest.IsolatedAsyncioTestCase):
 async def test_exact_sql_membership_frozen_ledger_native_diagnostic_and_actual_reply_events(self):
  conn=Conn();before=copy.deepcopy(conn.rows);out=await h.collect(conn,'secret',['original-nine-fixture'])
  self.assertEqual(out['historical_total'],1);self.assertEqual(conn.rows,before);self.assertFalse(out['reentry_authorized']);self.assertFalse(out['ledger_changed'])
  self.assertIn("o.entity_type='growth_customer'",h.MEMBERSHIP_SQL);self.assertIn("o.campaign='growth_sales'",h.MEMBERSHIP_SQL)
  self.assertIn("o.sent_at<'2026-10-30T03:50:30Z'",h.MEMBERSHIP_SQL);self.assertIn('o.historical_review_recorded_at is not null',h.MEMBERSHIP_SQL);self.assertIn('limit 25',h.MEMBERSHIP_SQL)
  row=out['historical_ledger'][0];self.assertEqual(row['actual_outreach_reply_events'][0]['event_id'],4);self.assertEqual(row['sample_order_counts']['sample_count'],1)
  self.assertEqual(row['matching_native_candidates'][0]['candidate_id'],'00000000-0000-4000-8000-000000000001');self.assertFalse(row['matching_native_candidates'][0]['native_proof_currently_valid'])
  native_sql=next(sql for sql,_ in conn.calls if 'market_inventory_candidates' in sql);self.assertIn("$1<>''",native_sql);self.assertIn('lower(business_name)=lower($2) and market=$3',native_sql)
 async def test_original_and_current_signed_profiles_excluded_without_erasing_history(self):
  conn=Conn();fixture=runpy.run_path(str(Path(__file__).with_name('test-auto-scoped-offer.py')))['Tests']();fixture.setup()
  conn.protected=[dict(target_id='original',public_email='original@example.test',business_name='Synthetic Original',market='Phoenix'),fixture.target]
  conn.rows[0].update(public_email=fixture.target['public_email'],target_id='old-alias-not-current-id')
  out=await h.collect(conn,'synthetic-secret',['original']);self.assertTrue(out['historical_ledger'][0]['reentry_membership_excluded']);self.assertEqual(out['reentry_membership_target_ids'],[]);self.assertEqual(len(out['historical_ledger']),1)
  conn.rows[0].update(public_email='original@example.test');out=await h.collect(conn,'synthetic-secret',['original']);self.assertEqual(out['reentry_membership_target_ids'],[])
 async def test_encrypted_admin_export_readonly_and_no_clear_response_or_secrets(self):
  conn=Conn();app=App(conn)
  def admin(key):
   if key!='admin':raise PermissionError('denied')
  endpoint=h.install(app,admin,'secret',[],CONFIG)
  with patch.object(h,'inbox_review',return_value={'status':'not_configured','absence_proven':False}) as inbox,patch.object(h,'seal_export',return_value={'ciphertext':'sealed'}) as seal:
   with self.assertRaises(PermissionError):await endpoint('request_fixture','wrong')
   self.assertEqual(conn.calls,[])
   out=await endpoint('request_fixture','admin');self.assertEqual(out,{'ciphertext':'sealed'});self.assertEqual(conn.transactions,[dict(readonly=True,isolation='repeatable_read')]);self.assertIn('UNTRUSTED DATA',seal.call_args.args[0]['scope'])
   self.assertNotIn('private-secret',json.dumps(seal.call_args.args[0],default=str));inbox.assert_called_once()
 def test_imap_exact7_readonly_peek_max35_and_partial_bytes(self):
  box=Box();senders=[f'history{i}@example.test' for i in range(8)]
  out=h.inbox_review(CONFIG,senders,lambda *a,**k:box)
  self.assertEqual(box.calls[0],('select',('INBOX',),dict(readonly=True)));self.assertEqual(len(out['senders']),7);self.assertEqual(out['body_fetch_attempts'],35);self.assertTrue(out['truncated']);self.assertFalse(out['absence_proven'])
  for item in out['senders']:
   self.assertEqual(item['body_fetch_attempts'],5)
   for row in item['records']:self.assertLessEqual(row['raw_bytes_returned'],20000);self.assertLessEqual(len(row['body'].encode()),12000);self.assertTrue(row['body_may_be_partial']);self.assertEqual(row['data_trust'],'UNTRUSTED_EMAIL_DATA')
  self.assertTrue(all('BODY.PEEK' in x[1][-1] for x in box.calls if x[0]=='fetch'));self.assertFalse(any(x[0] in ('store','close','expunge') for x in box.calls))
 def test_search_substring_match_does_not_collect_other_sender(self):
  box=Box(mismatch=True);out=h.inbox_review(CONFIG,['historical@example.test'],lambda *a,**k:box)
  self.assertEqual(out['body_fetch_attempts'],0);self.assertEqual(out['senders'][0]['records'],[]);self.assertEqual(out['senders'][0]['header_fetch_attempts'],20);self.assertTrue(out['truncated'])
 def test_failed_fetch_or_connection_never_claims_absence_or_leaks_secret(self):
  box=Box(fail=True);out=h.inbox_review(CONFIG,['historical@example.test'],lambda *a,**k:box)
  self.assertEqual(out['body_fetch_attempts'],5);self.assertEqual(out['status'],'partial_scan_error');self.assertFalse(out['absence_proven'])
  def fail(*a,**k):raise RuntimeError('private-secret private-user')
  out=h.inbox_review(CONFIG,['historical@example.test'],fail);self.assertEqual(out['status'],'scan_unavailable_or_interrupted');self.assertNotIn('private-secret',str(out));self.assertFalse(out['absence_proven'])
 def test_shared_deadline_stops_before_next_operation_and_bounds_logout(self):
  clock=[0.0];timeouts=[];factory_timeouts=[]
  box=Box();box.sock=SimpleNamespace(settimeout=lambda value:timeouts.append(value))
  def login(*args):clock[0]=98.0
  def select(*args,**kwargs):
   box.calls.append(('select',args,kwargs));clock[0]=101.0;return 'OK',[]
  box.login=login;box.select=select
  def factory(*args,**kwargs):factory_timeouts.append(kwargs['timeout']);return box
  with patch.object(h,'monotonic',side_effect=lambda:clock[0]):out=h.inbox_review(CONFIG,['historical@example.test'],factory)
  self.assertEqual(out['status'],'deadline_partial');self.assertTrue(out['deadline_exceeded']);self.assertTrue(out['operation_timed_out']);self.assertTrue(out['partial']);self.assertTrue(out['truncated']);self.assertFalse(out['absence_proven'])
  self.assertEqual(factory_timeouts,[15]);self.assertEqual(timeouts,[15,2,1]);self.assertFalse(any(x[0]=='search' for x in box.calls));self.assertEqual(box.calls[-1],('logout',))
 def test_socket_timeout_preserves_partial_records_and_never_claims_absence(self):
  box=Box();original=box.uid;timeouts=[];box.sock=SimpleNamespace(settimeout=lambda value:timeouts.append(value))
  body_attempts=[0]
  def uid(command,*args):
   if command=='fetch' and 'HEADER' not in args[-1]:
    body_attempts[0]+=1
    if body_attempts[0]==2:raise TimeoutError('private-secret server details')
   return original(command,*args)
  box.uid=uid
  with patch.object(h,'monotonic',return_value=0):out=h.inbox_review(CONFIG,['historical@example.test'],lambda *a,**k:box)
  self.assertEqual(out['status'],'operation_timeout_partial');self.assertFalse(out['deadline_exceeded']);self.assertTrue(out['truncated']);self.assertTrue(out['partial']);self.assertEqual(len(out['senders'][0]['records']),1)
  self.assertFalse(out['absence_proven']);self.assertNotIn('private-secret',str(out));self.assertTrue(all(0<x<=15 for x in timeouts));self.assertEqual(timeouts[-1],1)
if __name__=='__main__':unittest.main()
