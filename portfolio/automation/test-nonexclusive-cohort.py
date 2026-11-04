#!/usr/bin/env python3
"""The nine reviewed buyers can receive nonexclusive packs without duplicate resale."""
import ast,re,unittest
from datetime import datetime,timezone
from pathlib import Path
source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
names={'clean','growth_prospect_key','growth_contact_key','growth_exposure_filter'}
nodes=[n for n in source.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
ns=dict(re=re,datetime=datetime,timezone=timezone,GROWTH_NONEXCLUSIVE_COHORT_IDS=tuple('fixture:'+str(i) for i in range(9)),GROWTH_FREE_DISTINCT_90D=2,GROWTH_ALL_DISTINCT_90D=3,GROWTH_ALL_DISTINCT_LIFETIME=8,GROWTH_FREE_COOLDOWN_DAYS=0,GROWTH_PAID_COOLDOWN_DAYS=30)
exec(compile(ast.Module(body=nodes,type_ignores=[]),'production_nonexclusive_filter','exec'),ns)
class Connection:
 def __init__(self):self.history=[];self.blocked=[]
 async def fetch(self,query,*args):
  if 'from growth_prospect_suppressions' in query:return [{'prospect_key':k} for k in self.blocked]
  if 'from growth_outreach_targets' in query:return [{'email':f'cohort{i}@example.test'} for i in range(9)]
  if 'from growth_prospect_exposures' in query:return self.history
  raise AssertionError(query)
 def record(self,rows,who,kind):
  for r in rows:self.history.append(dict(prospect_key=ns['growth_prospect_key'](r),contact_key=ns['growth_contact_key'](r),recipient_key=f'cohort{who}@example.test',recipient_business_key=f'business:cohort{who}',delivery_kind=kind,created_at=datetime.now(timezone.utc)))
class Tests(unittest.IsolatedAsyncioTestCase):
 def setup(self):
  conn=Connection();rows=[dict(business_name=f'Prospect {i:03}',market='Phoenix',public_phone=f'928555{i:04}',public_email='') for i in range(125)]
  samples={i:rows[i*5:i*5+5] for i in range(9)}
  for i in range(9):conn.record(samples[i],i,'free')
  return conn,rows,samples
 async def select(self,conn,rows,who,kind='paid',business=None):
  return await ns['growth_exposure_filter'](conn,rows,f'cohort{who}@example.test',kind,business or f'business:cohort{who}')
 async def test_all_nine_100_packs_after_all_45_free_samples(self):
  conn,rows,samples=self.setup()
  for i in range(9):
   eligible=await self.select(conn,rows,i);self.assertGreaterEqual(len(eligible)+5,125)
   final=samples[i]+eligible[:95];self.assertEqual(len({r['business_name'] for r in final}),100);conn.record(final,i,'paid')
 async def test_all_nine_smaller_packs_and_then_75_upgrades(self):
  conn,rows,samples=self.setup();small={}
  for i in range(9):
   eligible=await self.select(conn,rows,i);small[i]=samples[i]+eligible[:20];conn.record(small[i],i,'paid')
  for i in range(9):
   eligible=await self.select(conn,rows,i);self.assertGreaterEqual(len(eligible),75)
   final=small[i]+eligible[:75];self.assertEqual(len({r['business_name'] for r in final}),100);conn.record(final,i,'paid')
 async def test_suppression_same_customer_and_other_customers_remain_protected(self):
  conn,rows,samples=self.setup();blocked=rows[100];conn.blocked=[ns['growth_contact_key'](blocked)]
  eligible=await self.select(conn,rows,0);self.assertNotIn(blocked,eligible)
  self.assertTrue(all(r not in samples[0] for r in eligible))
  alias=await self.select(conn,samples[0],1,business='business:cohort0');self.assertEqual(alias,[])
  outsider=await ns['growth_exposure_filter'](conn,rows[:45],'outsider@example.test','paid','business:outsider');self.assertEqual(outsider,[])
 async def test_free_sample_distinct_recipient_limit_still_applies(self):
  conn,rows,samples=self.setup();conn.record([rows[0]],1,'free')
  self.assertEqual(await self.select(conn,[rows[0]],2,'free'),[])

class ReviewedPoolTests(unittest.IsolatedAsyncioTestCase):
 async def run_selection(self,reviewed=True,missing=False):
  handler=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='handle_growth_snapshot')
  relevant=[i for i,n in enumerate(handler.body) if isinstance(n,ast.Assign) and any(isinstance(t,ast.Name) and t.id in ('rows','reviewed') for t in n.targets)]
  finish=next(i for i,n in enumerate(handler.body) if isinstance(n,ast.If) and isinstance(n.test,ast.Name) and n.test.id=='reviewed')
  probe=ast.parse('async def probe(conn,p,target_id,service_key,territory,email_addr,business): pass').body[0]
  probe.body=handler.body[min(relevant):finish+1]+[ast.parse('return rows,sample').body[0]]
  ast.fix_missing_locations(probe)
  class Error(Exception):
   def __init__(self,status,detail):self.status_code=status
  class ReviewConnection:
   async def fetchrow(self,*args):return {'candidate_ids':[str(i) for i in range(125,130)]} if reviewed else None
  available=[{'candidate_id':str(i),'business_name':f'Account {i}'} for i in range(130) if not(missing and i==126)]
  captured={}
  async def select(conn,service,territory,ideal,exclusions,**kwargs):captured.update(kwargs);captured['ideal']=ideal;captured['exclusions']=exclusions;return available[:kwargs['limit']]
  async def rotate(conn,rows,*args):return rows[:5]
  space=dict(ns,market="Phoenix",HTTPException=Error,growth_qualified_territory_candidates=select,growth_select_rotated_sample=rotate,growth_recipient_business_key=lambda v:'business:recipient',GROWTH_SAMPLE_MIN_RESERVE=125)
  exec(compile(ast.Module(body=[probe],type_ignores=[]),'production_claim_selection','exec'),space)
  result=await space['probe'](ReviewConnection(),{'ideal_customer':'Office','exclusions':'Residential'},'fixture:review','commercial_cleaning',['Phoenix'],'buyer@example.test','Recipient')
  return result,captured
 async def test_reviewed_five_survive_growth_beyond_the_125_reserve(self):
  (rows,sample),filters=await self.run_selection()
  self.assertEqual([r['candidate_id'] for r in sample],[str(i) for i in range(125,130)])
  self.assertEqual(filters['recipient_key'],'buyer@example.test');self.assertEqual(filters['delivery_kind'],'free')
  self.assertEqual(filters['ideal'],'Office');self.assertEqual(filters['exclusions'],'Residential')
 async def test_unreviewed_requests_keep_bounded_default_and_unavailable_original_is_not_substituted(self):
  (rows,sample),_=await self.run_selection(reviewed=False);self.assertEqual(len(rows),125)
  self.assertEqual(len(sample),5)
  try:await self.run_selection(missing=True)
  except Exception as exc:self.assertEqual(exc.status_code,409)
  else:self.fail('An unavailable reviewed prospect must not be silently replaced')

if __name__=='__main__':unittest.main()
