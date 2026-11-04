import ast,asyncio,json,unittest
from pathlib import Path
from types import SimpleNamespace
SOURCE=Path(__file__).parent/'api/app.py'
class Tx:
 async def __aenter__(self):return self
 async def __aexit__(self,*args):pass
class Conn(Tx):
 def __init__(self):self.writes=[]
 def transaction(self):return Tx()
 async def fetch(self,sql,*args):
  for clause in ["o.sent_at is null","o.opt_out=false","g.fit_score>=65","outreach_suppressions","o.status='queued'","g.target_id=any($1::text[])"]:assert clause in sql
  return [{'outreach_id':'eligible'},{'outreach_id':'bad-copy'}]
 async def fetchval(self,sql,*args):return 0
 async def execute(self,sql,*args):self.writes.append((sql,args))
class Tests(unittest.IsolatedAsyncioTestCase):
 def load(self,hold=True):
  self.conn=Conn();conn=self.conn
  class Pool:
   def acquire(self):return conn
  def copy(row,step):
   if row['outreach_id']=='bad-copy':raise ValueError('unsupported copy')
  class Error(Exception):pass
  ns=dict(require_admin=lambda key:None,OWNER_LAUNCH_HOLD=hold,OUTREACH_ENABLED=False,BUYER_OUTREACH_ENABLED=False,GROWTH_OUTREACH_ENABLED=False,HTTPException=lambda *args:Error(),Path=Path,json=json,__file__=str(SOURCE.resolve()),app=SimpleNamespace(state=SimpleNamespace(pool=Pool())),growth_outreach_message=copy,Header=lambda **k:None)
  tree=ast.parse(SOURCE.read_text());n=next(n for n in tree.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='authorize_reviewed_phoenix_launch');n.decorator_list=[];exec(compile(ast.Module(body=[n],type_ignores=[]),'actual_authorization','exec'),ns);return ns['authorize_reviewed_phoenix_launch']
 async def test_only_valid_current_copy_authorized_without_send_or_history_reset(self):
  result=await self.load()();self.assertEqual(result['approved_queued'],1);self.assertEqual(result['copy_held'],1);self.assertEqual(result['sent'],0);self.assertFalse(result['history_reset']);self.assertEqual(self.conn.writes,[("update outreach set owner_review_required=false where outreach_id=$1",('eligible',))])
 async def test_released_hold_rejects_before_database_write(self):
  with self.assertRaises(Exception):await self.load(False)()
  self.assertEqual(self.conn.writes,[])
if __name__=='__main__':unittest.main()
