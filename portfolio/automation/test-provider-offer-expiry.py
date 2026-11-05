"""Actual provider acceptance expiry guards; fake DB, no send functions reachable."""
import ast,json,unittest
from pathlib import Path
from datetime import datetime,timedelta,timezone
from fastapi import HTTPException
class SafeAcceptedTransition(Exception):pass
class Tests(unittest.IsolatedAsyncioTestCase):
 def setup(self,status='offered',expired=False,cas=True):
  self.reads=[];self.writes=[];self.cas_calls=[];self.cas=cas
  now=datetime.now(timezone.utc)
  self.row=dict(status=status,expires_at=now+timedelta(days=-1 if expired else 1),match_id='synthetic-match',lead_id='synthetic-lead',customer_name='Synthetic Customer',business_name='',email='customer@example.test',phone='',raw_payload={},service_key='pet_sitting')
  outer=self
  class Conn:
   async def fetchrow(self,sql,*args):
    outer.reads.append(sql)
    if 'from lead_matches' in sql:return outer.row
    return dict(business_name='Synthetic Provider',public_email='provider@example.test')
   async def fetchval(self,sql,*args):outer.cas_calls.append(sql);return 'synthetic-match' if outer.cas else None
   async def execute(self,sql,*args):outer.writes.append(sql);raise SafeAcceptedTransition()
  async def service(*args):return 'Pet Sitting'
  ns=dict(clean=lambda x:str(x or '').strip(),HTTPException=HTTPException,datetime=datetime,timezone=timezone,json=json,service_display_name=service)
  node=next(n for n in ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text()).body if isinstance(n,ast.AsyncFunctionDef) and n.name=='handle_vendor_response')
  exec(compile(ast.Module(body=[node],type_ignores=[]),'actual_provider_acceptance','exec'),ns)
  self.conn=Conn();self.fn=ns['handle_vendor_response'];self.p=dict(lead_id='synthetic-lead',vendor_id='synthetic-vendor',token='synthetic-token',response='accept')
 async def test_expired_offered_request_rejected_even_before_worker_changes_status(self):
  self.setup(expired=True)
  with self.assertRaises(HTTPException) as error:await self.fn(self.conn,self.p)
  self.assertEqual(error.exception.status_code,409);self.assertEqual(self.writes,[]);self.assertEqual(self.cas_calls,[])
  self.assertIn('for update of lm',self.reads[0]);self.assertIn('lm.expires_at>clock_timestamp()',self.reads[0])
 async def test_offer_expiring_after_read_cannot_mutate_lead_or_send(self):
  self.setup(cas=False)
  with self.assertRaises(HTTPException) as error:await self.fn(self.conn,self.p)
  self.assertEqual(error.exception.status_code,409);self.assertEqual(self.writes,[])
  self.assertIn("status='offered'",self.cas_calls[0]);self.assertIn('expires_at>clock_timestamp()',self.cas_calls[0]);self.assertIn('returning match_id',self.cas_calls[0])
 async def test_current_offer_proceeds_only_after_atomic_acceptance(self):
  self.setup()
  with self.assertRaises(SafeAcceptedTransition):await self.fn(self.conn,self.p)
  self.assertEqual(len(self.cas_calls),1);self.assertIn("status='provider_accepted'",self.writes[0])
 async def test_already_accepted_response_remains_idempotent_after_original_expiry(self):
  self.setup(status='accepted',expired=True);out=await self.fn(self.conn,self.p)
  self.assertTrue(out['idempotent']);self.assertEqual(out['status'],'accepted');self.assertEqual(self.writes,[]);self.assertEqual(self.cas_calls,[])
 async def test_naive_expired_timestamp_also_rejected(self):
  self.setup(expired=True);self.row['expires_at']=self.row['expires_at'].replace(tzinfo=None)
  with self.assertRaises(HTTPException):await self.fn(self.conn,self.p)
  self.assertEqual(self.writes,[])
if __name__=='__main__':unittest.main()
