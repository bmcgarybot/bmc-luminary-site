import sys,json,unittest
from pathlib import Path
from unittest.mock import AsyncMock
sys.path.insert(0,str(Path(__file__).parent/'api'))
from autonomous_preparation import prepare_one
class Tests(unittest.IsolatedAsyncioTestCase):
 async def test_success_saves_private_compiler_result_without_authorizing(self):
  conn=AsyncMock();conn.fetchrow.return_value={'candidate_id':'00000000-0000-0000-0000-000000000001','market':'Phoenix','category_key':'tree_service'}
  async def compiler(rid,cid,key):return {'request_id':rid,'ciphertext':'synthetic-encrypted-fixture'}
  result=await prepare_one(conn,compiler,'test-key',{'inventory:original'})
  self.assertEqual(result['prepared'],1);self.assertFalse(result['offer_ready']);self.assertEqual(result['outreach_sent'],0)
  saved=json.loads(conn.execute.call_args.args[-1]);self.assertIn('encrypted_owner_preview',saved)
  self.assertNotIn('approve',conn.execute.call_args.args[0]);self.assertNotIn('outreach',conn.execute.call_args.args[0])
 async def test_compiler_failure_recorded_without_stopping_next_company(self):
  conn=AsyncMock();conn.fetchrow.return_value={'candidate_id':'00000000-0000-0000-0000-000000000001','market':'Prescott','category_key':'pressure_washing'}
  compiler=AsyncMock(side_effect=ValueError('private facts must not appear'))
  result=await prepare_one(conn,compiler,'test-key',set())
  self.assertEqual(result['status'],'requires_research');self.assertNotIn('private facts',str(conn.execute.call_args))
  self.assertEqual(conn.execute.await_count,1)
 async def test_no_candidate_does_not_invoke_compiler(self):
  conn=AsyncMock();conn.fetchrow.return_value=None;compiler=AsyncMock()
  self.assertEqual((await prepare_one(conn,compiler,'key',set()))['status'],'idle');compiler.assert_not_awaited();conn.execute.assert_not_awaited()
if __name__=='__main__':unittest.main()
