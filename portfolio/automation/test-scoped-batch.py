import copy,json,runpy,sys,unittest,uuid
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
 async def test_inert_queued_rows_adopt_one_uuid_archive_and_supersede_others(self):
  t=target();ids=[uuid.uuid4(),uuid.uuid4()]
  plans=[dict(outreach_id=x,entity_id=t['target_id'],entity_type='growth_customer',campaign='growth_sales',
    status='queued',sent_at=None,replied_at=None,reply_type=None,opt_out=False,created_at=str(i),body='Prior planned body') for i,x in enumerate(ids)]
  before=copy.deepcopy(plans)
  class QueueConn(Conn):
   async def fetchrow(self,*args):return plans[0]
   async def fetch(self,*args):return plans
   async def fetchval(self,sql,*args):
    if 'from outreach o where o.outreach_id=$1' in sql:return True
    return await super().fetchval(sql,*args)
  c=QueueConn();r=await self.invoke(c,t)
  self.assertTrue(r['registered']);self.assertEqual(plans,before)
  self.assertFalse(any('insert into outreach(' in sql for sql,args in c.writes))
  adopted=[args[0] for sql,args in c.writes if sql.startswith('update outreach set wave=')]
  self.assertEqual(adopted,[ids[0]])
  superseded=[args[0] for sql,args in c.writes if sql.startswith("update outreach set status='superseded'")]
  self.assertEqual(superseded,[ids[1]])
  archives=[json.loads(args[2])['prior_planned_row'] for sql,args in c.writes if sql.startswith('insert into events')]
  self.assertEqual({p['outreach_id'] for p in archives},set(str(x) for x in ids))
 async def test_queued_durable_attempt_never_adopted_or_written(self):
  t=target();plan=dict(outreach_id=uuid.uuid4(),entity_id=t['target_id'],entity_type='growth_customer',
   campaign='growth_sales',status='queued',opt_out=False)
  class AttemptConn(Conn):
   async def fetchrow(self,*args):return plan
   async def fetch(self,*args):return [plan]
   async def fetchval(self,sql,*args):
    if 'from outreach o where o.outreach_id=$1' in sql:return False
    return await super().fetchval(sql,*args)
  c=AttemptConn()
  with self.assertRaises(ValueError):await self.invoke(c,t)
  self.assertEqual(c.writes,[])
if __name__=='__main__':unittest.main()
