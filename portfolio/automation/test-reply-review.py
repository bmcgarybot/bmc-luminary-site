"""Offline reply monitoring contracts; never connects to mail or sends messages."""
import asyncio,json,sys,unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import AsyncMock,patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import reply_review as r

class Context:
 def __init__(self,value=None):self.value=value
 async def __aenter__(self):return self.value
 async def __aexit__(self,*args):pass
class Conn:
 def __init__(self):self.events=[];self.calls=[];self.transactions=[]
 def transaction(self,**kw):self.transactions.append(kw);return Context(self)
 async def fetchrow(self,sql,*args):return {'target_id':'known'} if args[0]=='known@example.com' and args[1] in (None,'known') else None
 async def fetchval(self,sql,digest):return any(x['inbound_digest']==digest for x in self.events)
 async def execute(self,sql,*args):
  self.calls.append((sql,args))
  if 'insert into events' in sql:self.events.append(json.loads(args[1]))
 async def fetch(self,sql):
  self.calls.append((sql,()))
  if 'from events' in sql:return [{'event_id':1,'occurred_at':'today','entity_id':'known','payload':self.events[0]}] if self.events else []
  return [{'target_id':'known','public_email':'known@example.com'}]
class App:
 def __init__(self,conn):self.routes={};self.state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(conn)))
 def post(self,path):
  def deco(fn):self.routes[path]=fn;return fn
  return deco
class Mailbox:
 def __init__(self,fail=False):self.calls=[];self.fail=fail
 def login(self,*args):pass
 def select(self,*args,**kw):self.calls.append(('select',args,kw));return 'OK',[]
 def uid(self,command,*args):
  self.calls.append((command,args))
  if command=='search':return 'OK',[b' '.join(str(i).encode() for i in range(1,31))]
  if 'HEADER' in args[1]:return 'OK',[(b'header',b'From: known@example.com\r\nSubject: Question\r\n\r\n')]
  if self.fail:return 'NO',[]
  return 'OK',[(b'body',b'From: known@example.com\r\nSubject: Question\r\nContent-Type: text/plain\r\n\r\n'+b'x'*30000)]
 def logout(self):self.calls.append(('logout',))
CONFIG={'IMAP_HOST':'mail.invalid','IMAP_USER':'private-user','IMAP_PASSWORD':'private-password','WATCHDOG_EMAIL':'owner@example.com'}
class Tests(unittest.IsolatedAsyncioTestCase):
 def setUp(self):
  self.conn=Conn();self.app=App(self.conn);self.send=AsyncMock(return_value=True)
  self.rec=r.install(self.app,lambda key:None,'secret',CONFIG,self.send)
 async def test_human_dedup_private_bounds_and_no_customer_send(self):
  result=await self.rec(self.conn,'message-1','known@example.com','Question? '+('é'*15000),'other','subject','known')
  self.assertEqual(result['owner_alert'],'submitted');self.assertLessEqual(len(self.conn.events[0]['body'].encode()),12000)
  duplicate=await self.rec(self.conn,'message-1','known@example.com','different','other','subject','known')
  self.assertTrue(duplicate['duplicate']);self.assertEqual(len(self.conn.events),1);self.send.assert_awaited_once()
  args=self.send.await_args.args;self.assertEqual(args[1],'owner@example.com');self.assertTrue(args[0].startswith('owner-reply-review:'))
  self.assertIn('UNTRUSTED EMAIL DATA',args[3]);self.assertIn('owner_reply_input_needed',' '.join(c[0] for c in self.conn.calls))
  for sql,args in self.conn.calls:
   if 'insert into exceptions' in sql:self.assertNotIn('Question?',str(args))
 async def test_unknown_sender_cannot_alert(self):
  result=await self.rec(self.conn,'id','stranger@example.com','refund','other','',None)
  self.assertFalse(result['recorded']);self.send.assert_not_awaited()
 async def test_machine_optout_skip_alert_but_human_issue_escalates(self):
  for i,kind in enumerate(('opt_out','automated','delivery_failure')):
   result=await self.rec(self.conn,str(i),'known@example.com','Automatic reply: unavailable',kind,'',None)
   self.assertFalse(result['needs_owner_input']);self.assertFalse(result['recorded'])
  self.send.assert_not_awaited()
  await self.rec(self.conn,'refund','known@example.com','Please refund the overcharge','opt_out','',None)
  self.send.assert_awaited_once()
 async def test_missing_owner_and_failed_alert_have_private_safe_exception(self):
  record=r.install(App(self.conn),lambda key:None,'secret',{},self.send)
  out=await record(self.conn,'missing','known@example.com','private complaint','other','',None)
  self.assertEqual(out['owner_alert'],'unconfigured');self.send.assert_not_awaited()
  self.send.side_effect=RuntimeError('private-password private complaint')
  out=await self.rec(self.conn,'failed','known@example.com','private complaint','other','',None)
  self.assertEqual(out['owner_alert'],'needs_review')
  self.assertNotIn('private-password',str(self.conn.calls))
 async def test_encrypted_export_readonly_and_no_alert(self):
  await self.rec(self.conn,'review','known@example.com','Question?','other','',None);self.send.reset_mock()
  with patch('reply_review.scan_known_replies',return_value={'status':'readonly_scan_complete','records':[]}) as scan,patch('owner_research_export.seal_export',side_effect=lambda payload,key:{'ciphertext':'sealed'}) as seal:
   app=App(self.conn);r.install(app,lambda key:self.assertEqual(key,'admin'),'secret',CONFIG,self.send)
   result=await app.routes['/api/admin/reply-review-export']('request_123','admin')
   self.assertEqual(result,{'ciphertext':'sealed'});self.assertIn('UNTRUSTED',seal.call_args.args[0]['scope']);scan.assert_called_once()
  self.assertIn({'readonly':True,'isolation':'repeatable_read'},self.conn.transactions)
  self.assertTrue(any('limit 20' in sql for sql,_ in self.conn.calls));self.send.assert_not_awaited()
 async def test_export_rejects_before_any_private_read(self):
  def deny(key):raise PermissionError('denied')
  app=App(self.conn);r.install(app,deny,'secret',CONFIG,self.send)
  with patch('reply_review.scan_known_replies') as scan:
   with self.assertRaises(PermissionError):await app.routes['/api/admin/reply-review-export']('request_123','wrong')
   scan.assert_not_called()
  self.assertEqual(self.conn.calls,[]);self.send.assert_not_awaited()
 def test_mismatched_body_sender_is_not_exported_and_still_bounded(self):
  box=Mailbox();original=box.uid
  def uid(command,*args):
   if command=='fetch' and 'HEADER' not in args[1]:
    box.calls.append((command,args));return 'OK',[(b'body',b'From: stranger@example.com\r\n\r\nmalicious')]
   return original(command,*args)
  box.uid=uid
  out=r.scan_known_replies(CONFIG,[{'target_id':'known','public_email':'known@example.com'}],lambda *a,**k:box)
  self.assertEqual(out['records'],[])
  self.assertEqual(len([x for x in box.calls if x[0]=='fetch' and 'HEADER' not in x[1][1]]),5)
 def test_readonly_peek_and_actual_body_attempt_cap(self):
  for fail in (False,True):
   box=Mailbox(fail);out=r.scan_known_replies(CONFIG,[{'target_id':'known','public_email':'known@example.com'}],lambda *a,**k:box)
   self.assertEqual(box.calls[0],('select',('INBOX',),{'readonly':True}))
   bodies=[x for x in box.calls if x[0]=='fetch' and x[1][1]=='(BODY.PEEK[]<0.20000>)']
   self.assertEqual(len(bodies),5);self.assertLessEqual(out['headers_read'],20)
   for item in out['records']:self.assertLessEqual(item['raw_bytes_returned'],20000);self.assertLessEqual(len(item['body'].encode()),12000)
   self.assertFalse(any(x[0] in ('store','close','expunge') for x in box.calls))
 def test_unknown_and_automatic_headers_never_fetch_body(self):
  for header in (b'From: stranger@example.com\r\n\r\n',b'From: known@example.com\r\nAuto-Submitted: auto-replied\r\n\r\n'):
   box=Mailbox();original=box.uid
   def uid(command,*args):
    if command=='fetch':box.calls.append((command,args));return 'OK',[(b'header',header)]
    return original(command,*args)
   box.uid=uid
   out=r.scan_known_replies(CONFIG,[{'target_id':'known','public_email':'known@example.com'}],lambda *a,**k:box)
   self.assertEqual(out['records'],[]);self.assertEqual(out['headers_read'],20)
   self.assertTrue(all('HEADER' in x[1][1] for x in box.calls if x[0]=='fetch'))
 def test_safe_failure_does_not_expose_credentials(self):
  def fail(*a,**k):raise RuntimeError('private-password')
  out=r.scan_known_replies(CONFIG,[{'target_id':'known','public_email':'known@example.com'}],fail)
  self.assertEqual(out['status'],'readonly_scan_unavailable');self.assertNotIn('private-password',str(out))
 def test_classification_questions_payment_and_positive(self):
  for kind in ('other','question','payment','refund','complaint','negotiation'):self.assertTrue(r.needs_input(kind,'Please review'))
  self.assertFalse(r.needs_input('positive','Yes please'));self.assertTrue(r.needs_input('positive','How much?'))
class QuotedIntentTests(unittest.TestCase):
    def test_prior_campaign_price_question_does_not_create_owner_request(self):
        self.assertFalse(r.needs_input('positive','Yes please\n\nOn Tuesday Brett wrote:\nWhat price for the upgrade?','Five commercial prospects'))
    def test_new_purchase_question_does_require_owner_input(self):
        self.assertTrue(r.needs_input('positive','Yes, I am interested in the smaller pack.','Re: Five commercial prospects'))

if __name__=='__main__':unittest.main()
