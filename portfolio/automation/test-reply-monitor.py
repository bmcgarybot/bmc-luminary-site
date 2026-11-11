"""Focused mailbox coverage regression; no real email connections."""
import asyncio, importlib.util, unittest
from pathlib import Path
from unittest.mock import AsyncMock, patch
spec=importlib.util.spec_from_file_location('reply_tests',Path(__file__).with_name('test-reply-review.py'))
fixture=importlib.util.module_from_spec(spec);spec.loader.exec_module(fixture)
import reply_monitor as m

class Conn(fixture.Conn):
 def __init__(self):super().__init__();self.positions={}
 async def fetchval(self,sql,*args):
  if 'pg_try_advisory' in sql:return True
  return await super().fetchval(sql,*args)
 async def fetchrow(self,sql,*args):
  if 'reply_monitor_positions' in sql:return self.positions.get(args[0])
  return await super().fetchrow(sql,*args)
 async def execute(self,sql,*args):
  if 'insert into reply_monitor_positions' in sql:self.positions[args[0]]={'uidvalidity':args[2],'last_uid':args[3]}
  return await super().execute(sql,*args)
class Box:
 def __init__(self):self.folder=None;self.selections=[];self.fetches=[]
 def login(self,*args):pass
 def list(self):return 'OK',[b'(\\HasNoChildren) "." "INBOX"',b'(\\Junk) "." "INBOX.Spam"']
 def select(self,folder,readonly=False):self.folder=folder;self.selections.append(readonly);return 'OK',[]
 def response(self,name):return name,[b'1']
 def uid(self,command,*args):
  if command=='search':return 'OK',[b'1 2 3' if self.folder=='INBOX' else b'1']
  self.fetches.append(args)
  sender='admin@nazscleaners.com' if self.folder=='INBOX.Spam' else { '1':'alternate-reply@example.test','2':'contact@bmcservicenetwork.com','3':'robot@example.test'}[args[0]]
  auto='Auto-Submitted: auto-replied\r\n' if self.folder=='INBOX' and args[0]=='3' else ''
  return 'OK',[(b'body',('From: '+sender+'\r\n'+auto+'Subject: Interested\r\n\r\nYes please').encode())]
 def logout(self):pass
class Tests(unittest.IsolatedAsyncioTestCase):
 async def test_all_sender_inbox_spam_readonly_and_uid_progress(self):
  conn=Conn();app=fixture.App(conn);send=AsyncMock(return_value=True)
  rec=fixture.r.install(app,lambda key:None,'secret',dict(fixture.CONFIG,SMTP_FROM='contact@bmcservicenetwork.com',SMTP_REPLY_TO='contact@bmcservicenetwork.com'),send)
  m.install(app,lambda key:None,dict(fixture.CONFIG,IMAP_ENABLED=True,SMTP_FROM='contact@bmcservicenetwork.com'),rec)
  box=Box()
  with patch('reply_monitor.imaplib.IMAP4_SSL',return_value=box),patch('reply_monitor.seal_export',side_effect=lambda payload,key:payload):
   out=await app.routes['/api/admin/reply-monitor-cycle']('monitor_123',False,'admin')
   self.assertEqual(out['processed'],4);self.assertEqual(out['new_reviews'],2)
   self.assertEqual({x['sender'] for x in conn.events},{'admin@nazscleaners.com','alternate-reply@example.test'})
   self.assertTrue(all(box.selections));self.assertTrue(all(x[1]=='(BODY.PEEK[])' for x in box.fetches))
   self.assertEqual(send.await_count,2);self.assertTrue(all(c.args[1]=='owner@example.com' for c in send.await_args_list))
   again=await app.routes['/api/admin/reply-monitor-cycle']('monitor_124',False,'admin')
   self.assertEqual(again['processed'],0);self.assertEqual(send.await_count,2)
 async def test_notification_test_does_not_create_customer_review(self):
  conn=Conn();app=fixture.App(conn);send=AsyncMock(return_value=True)
  config=dict(fixture.CONFIG,SMTP_FROM='contact@bmcservicenetwork.com',SMTP_REPLY_TO='contact@bmcservicenetwork.com')
  rec=fixture.r.install(app,lambda key:None,'secret',config,send)
  out=await rec(conn,'monitor-test:123','monitor-test@example.invalid','Test','notification_test','Test',None,monitor_all=True)
  self.assertEqual(out['owner_alert'],'submitted');self.assertFalse(out['recorded']);self.assertEqual(conn.events,[])
  self.assertEqual(send.await_args.args[1],'owner@example.com');self.assertEqual(send.await_args.args[2],'BMC notification delivery test')
 async def test_denied_admin_never_connects(self):
  app=fixture.App(Conn())
  def deny(key):raise PermissionError('denied')
  m.install(app,deny,fixture.CONFIG,AsyncMock())
  with patch('reply_monitor.imaplib.IMAP4_SSL') as imap:
   with self.assertRaises(PermissionError):await app.routes['/api/admin/reply-monitor-cycle']('monitor_123',False,'wrong')
   imap.assert_not_called()
if __name__=='__main__':unittest.main()
