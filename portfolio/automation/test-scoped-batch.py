import json,runpy,sys,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'api'))
from scoped_batch import register_target
from scoped_dispatch import authorize_dispatch
W={'commercial_cleaning':'growth-cleaning-1','pressure_washing':'growth-pressure-1'}
def target():return runpy.run_path(str(Path(__file__).with_name('test-scoped-dispatch.py')))['target']()
class Conn:
 def __init__(self,prior=None,suppressed=False):self.prior=prior;self.suppressed=suppressed;self.writes=[]
 async def fetchval(self,sql,*args):return self.suppressed if 'outreach_suppressions' in sql else 'exploring'
 async def fetchrow(self,*args):return self.prior
 async def execute(self,sql,*args):self.writes.append((sql,args))
class Tests(unittest.IsolatedAsyncioTestCase):
 async def invoke(self,c,t=None,hold=lambda:True):return await register_target(c,t or target(),'secret','test-real-registration',W,lambda t,n:('commercial_cleaning','subject','text','html','https://example.test/'),hold)
 async def test_registration_creates_only_target_authorization_and_one_queued_row(self):
  c=Conn();t=target();r=await self.invoke(c,t);self.assertTrue(r['registered']);self.assertEqual(r['sent'],0)
  self.assertEqual(len(c.writes),3);self.assertIn('on conflict(cell_key) do nothing',c.writes[0][0]);data=json.loads(c.writes[1][1][2]);self.assertEqual(data['scoped_offer'],t['source_data']['scoped_offer']);self.assertIn('scoped_dispatch',data);self.assertIn("'email',0,'queued'",c.writes[2][0]);self.assertNotIn('sent_at',c.writes[2][0])
 async def test_suppression_or_unauthorized_history_never_writes(self):
  for c in [Conn(suppressed=True),Conn(prior=dict(status='sent',opt_out=False))]:
   with self.assertRaises(ValueError):await self.invoke(c)
   self.assertEqual(c.writes,[])
 async def test_idempotent_authorized_prior_send_is_never_reset(self):
  t=target();t['source_data']['scoped_dispatch']=authorize_dispatch(t,'secret','test-existing-auth',W[t['service_key']]);c=Conn(prior=dict(status='sent',opt_out=False));r=await self.invoke(c,t);self.assertTrue(r['already_registered']);self.assertEqual(c.writes,[])
 async def test_hold_off_never_writes(self):
  c=Conn()
  with self.assertRaises(ValueError):await self.invoke(c,hold=lambda:False)
  self.assertEqual(c.writes,[])
if __name__=='__main__':unittest.main()
