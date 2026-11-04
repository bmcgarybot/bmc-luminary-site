"""Offline queue state/SQL contract fixtures; not real PostgreSQL lease proof."""
import asyncio,copy,json,sys,unittest,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
from fastapi import FastAPI,HTTPException
import census_research_queue as q
from census_research_api import raw_source_key

class Request:
 def __init__(self,value):self.value=value
 async def body(self):return json.dumps(self.value).encode()

class Tests(unittest.IsolatedAsyncioTestCase):
 def setup(self,enabled=True):
  self.now=datetime.now(timezone.utc);self.jobs={};self.audit={};self.raw=[];self.sql=[];self.active=0;self.held=True;self.reviewed=[];self.lock=asyncio.Lock();outer=self
  for i in range(3):
   row=dict(candidate_id=uuid.uuid4(),side='vendor',market='Prescott',category_key='pressure_washing',category_label='Pressure washing',business_name='Private Synthetic '+str(i),source_url='https://fixture'+str(i)+'.example/',source_domain='fixture'+str(i)+'.example',public_email='private@fixture'+str(i)+'.example',public_phone='9285550111',official_site=True,evidence={'researched_by':'assistant_manual_census'},status='discovered',closed_at=None)
   row['source_key']=raw_source_key(row);self.raw.append(row)
  class Tx:
   async def __aenter__(self):
    await outer.lock.acquire();self.snapshot=copy.deepcopy((outer.jobs,outer.audit))
   async def __aexit__(self,typ,*args):
    if typ:outer.jobs,outer.audit=self.snapshot
    outer.lock.release()
  class Conn:
   def transaction(self,**kwargs):outer.sql.append(('transaction',kwargs));return Tx()
   async def fetch(self,sql,*args):
    outer.sql.append((sql,args))
    if sql==q.SELECT_SQL:
     return [dict(row,source_key=raw_source_key(row)) for row in outer.raw if raw_source_key(row) in args[0] and row['side']=='vendor' and row['status']=='discovered' and row['closed_at'] is None and row['evidence'].get('researched_by')=='assistant_manual_census' and not row['evidence'].get('qualification_hold')]
    if sql==q.CLAIM_SQL:
     due=[job for job in outer.jobs.values() if job['failure_streak']<3 and job['status'] in ('queued','retry_wait','proposal_ready') and job['next_attempt_at']<=outer.now]
     due.sort(key=lambda x:(-x['priority'],x['next_attempt_at'],x['created_at'],str(x['job_id'])))
     result=[]
     for job in due[:2]:
      job.update(status='running',attempts=job['attempts']+1,lease_token=uuid.uuid4(),lease_until=outer.now+timedelta(minutes=5));result.append(copy.deepcopy(job))
     return result
    if sql==q.EXPIRE_SQL:
     result=[]
     for job in outer.jobs.values():
      if job['status']=='running' and job['lease_until']<=outer.now:
       old=outer.audit.get(job['lease_token'])
       if old and old['completed_at'] is None:old.update(status='lease_expired',error_code='lease_expired',completed_at=outer.now)
       failures=job['failure_streak']+1
       job.update(status='needs_review' if failures>=3 else 'retry_wait',failure_streak=failures,last_error='lease_exhausted' if failures>=3 else 'lease_expired',lease_token=None,lease_until=None,proposal={'status':'source_review_held','gate_reason':'lease_expired'})
       if failures<3:job['next_attempt_at']=outer.now+timedelta(seconds=300*2**(failures-1))
       result.append({'job_id':job['job_id'],'status':job['status']})
       if len(result)==2:break
     return result
    if sql==q.ATTEMPT_EXPORT_SQL:return [copy.deepcopy(item) for item in outer.audit.values() if item['job_id'] in args[0]]
    if sql==q.STATUS_SQL:
     return [dict(status=status,jobs=sum(job['status']==status for job in outer.jobs.values()),max_attempts=3,expired_leases=0,oldest_created_at=outer.now,last_updated_at=outer.now,last_completed_at=outer.now,proposal='PRIVATE SHOULD NOT LEAK') for status in sorted({x['status'] for x in outer.jobs.values()})]
    if sql==q.EXPORT_SQL:return [copy.deepcopy(job) for job in outer.jobs.values() if job['job_id'] in args[0]][:5]
    raise AssertionError(sql)
   async def fetchrow(self,sql,*args):
    outer.sql.append((sql,args));candidate,key,service=(args[0],args[1],args[2]) if sql==q.INSERT_SQL else (args[0],None,args[1])
    existing=next((job for job in outer.jobs.values() if job['candidate_id']==candidate and job['requested_service']==service),None)
    if sql==q.INSERT_SQL:
     if existing:return None
     job=dict(job_id=uuid.uuid4(),candidate_id=candidate,source_key=key,requested_service=service,status='queued',attempts=0,failure_streak=0,priority=0,lease_token=None,lease_until=None,next_attempt_at=outer.now,last_error=None,proposal=None,created_at=outer.now,updated_at=outer.now,last_completed_at=None)
     outer.jobs[job['job_id']]=job;return copy.deepcopy(job)
    if sql==q.EXISTING_SQL:return copy.deepcopy(existing)
    raise AssertionError(sql)
   async def execute(self,sql,*args):
    outer.sql.append((sql,args))
    if sql==q.ATTEMPT_INSERT_SQL:
     jid,token,attempt=args;assert token not in outer.audit
     outer.audit[token]=dict(job_id=jid,lease_token=token,attempt_no=attempt,started_at=outer.now,completed_at=None,status='running',error_code=None,proposal=None)
    elif sql==q.ATTEMPT_COMPLETE_SQL:
     jid,token,status,error,proposal=args;item=outer.audit[token]
     if item['job_id']==jid and item['completed_at'] is None and item['status']=='running':item.update(status=status,error_code=error,proposal=json.loads(proposal),completed_at=outer.now)
    else:raise AssertionError(sql)
   async def fetchval(self,sql,*args):
    outer.sql.append((sql,args));assert sql==q.CAS_SQL
    jid,token,status,error,proposal,delay,failures=args;job=outer.jobs[jid]
    if job['status']!='running' or job['lease_token']!=token or job['lease_until']<=outer.now:return None
    job.update(status=status,last_error=error,proposal=json.loads(proposal),lease_token=None,lease_until=None,last_completed_at=outer.now,failure_streak=failures)
    if status=='retry_wait':job['next_attempt_at']=outer.now+timedelta(seconds=delay)
    elif status=='proposal_ready':job['next_attempt_at']=outer.now+timedelta(days=7)
    return jid
  class Acquire:
   async def __aenter__(self):outer.active+=1;return Conn()
   async def __aexit__(self,*args):outer.active-=1
  class Pool:
   def acquire(self):return Acquire()
  self.app=FastAPI();self.app.state.pool=Pool()
  def admin(key):
   if key!='admin':raise HTTPException(403,'Forbidden')
  async def search(*args):raise AssertionError('real source work forbidden in fixture')
  q.install(self.app,admin,'synthetic-secret',lambda:self.held,search,enabled=enabled)
  self.routes={route.path:route.endpoint for route in self.app.routes if hasattr(route,'endpoint')}
 async def enroll(self,indexes=(0,),service='pressure_washing'):
  return await self.routes['/api/admin/queue-census-research'](Request(dict(source_keys=[self.raw[i]['source_key'] for i in indexes],requested_service=service)),'admin')
 async def worker(self,proposal=None,callback=None):
  async def review(row,service,search,secret):
   self.assertEqual(self.active,0,'connection held during network phase');self.reviewed.append(row['candidate_id'])
   if callback:return await callback(row)
   return dict(proposal or {'status':'source_proposal_only','private_name':row['business_name']})
  with patch.object(q,'review_row',side_effect=review):return await self.routes['/api/process-census-research']('admin')
 def due(self):
  for job in self.jobs.values():
   if job['status']=='retry_wait':job['next_attempt_at']=self.now-timedelta(seconds=1)
 def assert_safe_sql(self):
  for sql,args in self.sql:
   lower=sql.lower()
   for forbidden in ['update market_inventory_candidates','insert into market_inventory_candidates','orders','growth_owner_previews','outreach','insert into vendors','update vendors']:
    self.assertNotIn(forbidden,lower)
 async def test_idempotent_enrollment_preserves_running_backoff_attempts_and_held(self):
  self.setup();first=await self.enroll((0,1));self.assertTrue(all(x['newly_queued'] for x in first['jobs']))
  job=next(iter(self.jobs.values()));job.update(status='needs_review',attempts=3,last_error='structured_hold',proposal={'private':'prior'})
  other=list(self.jobs.values())[1];other.update(status='running',attempts=2,lease_token=uuid.uuid4(),lease_until=self.now+timedelta(minutes=5),next_attempt_at=self.now+timedelta(hours=1))
  before=copy.deepcopy(self.jobs);again=await self.enroll((0,1));self.assertFalse(any(x['newly_queued'] for x in again['jobs']));self.assertEqual(self.jobs,before)
  self.held=False
  with self.assertRaises(HTTPException):await self.enroll()
  self.assert_safe_sql()
 async def test_worker_max2_independent_of_outreach_hold_no_connection_or_raw_mutation(self):
  self.setup();await self.enroll((0,1));await self.enroll((2,));before=copy.deepcopy(self.raw);self.held=False
  result=await self.worker();self.assertEqual((result['claimed'],result['proposal_ready']),(2,2));self.assertEqual(self.raw,before)
  self.assertEqual(sum(j['status']=='queued' for j in self.jobs.values()),1);self.assertNotIn('Private Synthetic',json.dumps(result));self.assert_safe_sql()
 async def test_known_holds_stop_transients_retry3_and_enroll_never_forces_retry(self):
  self.setup();await self.enroll();held={'status':'source_review_held','gate_reason':'fetch_unavailable','fetch_failure_reason':'http_403'}
  result=await self.worker(held);self.assertEqual(result['needs_review'],1);self.assertEqual((await self.worker())['claimed'],0)
  await self.enroll();self.assertEqual((await self.worker())['claimed'],0)
  self.setup();await self.enroll();transient={'status':'source_review_held','gate_reason':'fetch_unavailable','fetch_failure_reason':'timeout'}
  for attempt in range(1,4):
   result=await self.worker(transient);job=next(iter(self.jobs.values()));self.assertEqual(job['attempts'],attempt)
   self.assertEqual(job['status'],'retry_wait' if attempt<3 else 'needs_review')
   if attempt<3:
    self.assertEqual((job['next_attempt_at']-self.now).total_seconds(),300*2**(attempt-1));self.assertEqual((await self.worker())['claimed'],0);self.due()
  self.assertEqual((await self.worker())['claimed'],0)
 async def test_expired_lease_retry_token_cas_discards_stale_and_exhaustion_terminal(self):
  self.setup();await self.enroll();job=next(iter(self.jobs.values()));old=uuid.uuid4();job.update(status='running',attempts=7,failure_streak=0,lease_token=old,lease_until=self.now-timedelta(seconds=1))
  self.audit[old]=dict(job_id=job['job_id'],lease_token=old,attempt_no=7,started_at=self.now-timedelta(minutes=6),completed_at=None,status='running',proposal=None)
  result=await self.worker();self.assertEqual(result['claimed'],0);self.assertEqual(job['status'],'retry_wait');self.assertEqual(self.audit[old]['status'],'lease_expired')
  self.due()
  async def changed(row):
   job['lease_token']=uuid.uuid4();job['proposal']={'newer':'retain'};return {'status':'source_proposal_only'}
  result=await self.worker(callback=changed);self.assertEqual(result['stale_results_discarded'],1);self.assertEqual(job['proposal'],{'newer':'retain'});self.assertNotEqual(job['lease_token'],old)
  job.update(status='running',attempts=8,failure_streak=2,lease_until=self.now-timedelta(seconds=1));result=await self.worker();self.assertEqual(result['claimed'],0);self.assertEqual(job['status'],'needs_review');self.assertEqual(job['last_error'],'lease_exhausted')
 async def test_successful_weekly_refresh_no_lifetime_cap_and_immutable_attempt_proofs(self):
  self.setup();await self.enroll();job=next(iter(self.jobs.values()));job['attempts']=9
  await self.worker();self.assertEqual(job['attempts'],10);self.assertEqual(job['failure_streak'],0)
  self.assertEqual(job['next_attempt_at'],self.now+timedelta(days=7));proof=copy.deepcopy(self.audit)
  self.assertEqual((await self.worker())['claimed'],0)
  self.now+=timedelta(days=7,seconds=1);await self.worker()
  self.assertEqual(job['attempts'],11);self.assertEqual(job['status'],'proposal_ready')
  for token,old in proof.items():self.assertEqual(self.audit[token],old)
  self.assertEqual(len(self.audit),2)
 async def test_raw_key_changed_closed_hold_and_service_tamper_never_fetch(self):
  for change in ['key','closed','hold','service']:
   self.setup();await self.enroll();job=next(iter(self.jobs.values()))
   if change=='key':self.raw[0]['business_name']='changed'
   elif change=='closed':self.raw[0]['closed_at']=self.now
   elif change=='hold':self.raw[0]['evidence']['qualification_hold']=True
   else:job['requested_service']='unmapped'
   result=await self.worker();self.assertEqual(result['needs_review'],1);self.assertEqual(self.reviewed,[])
 async def test_raw_hold_added_during_fetch_blocks_proposal_and_history_no_stale_proof(self):
  self.setup();await self.enroll()
  async def during(row):
   self.raw[0]['evidence']['qualification_hold']=True
   return {'status':'source_proposal_only','private_name':'must not persist stale evidence'}
  out=await self.worker(callback=during);self.assertEqual(out['needs_review'],1)
  job=next(iter(self.jobs.values()));self.assertEqual(job['proposal']['gate_reason'],'raw_census_snapshot_changed_or_held')
  self.assertNotIn('must not persist',json.dumps(job,default=str))
  completed=next(iter(self.audit.values()));self.assertEqual(completed['status'],'needs_review');self.assertIsNotNone(completed['completed_at'])
  self.assertEqual(completed['proposal'],job['proposal'])
 async def test_concurrent_workers_disjoint_claims_and_disabled_no_claim(self):
  self.setup();await self.enroll((0,1));await self.enroll((2,))
  results=await asyncio.gather(self.worker(),self.worker());self.assertEqual(sum(r['claimed'] for r in results),3);self.assertEqual(len(set(self.reviewed)),3)
  self.setup(enabled=False);await self.enroll();out=await self.worker();self.assertFalse(out['enabled']);self.assertEqual(self.reviewed,[]);self.assertEqual(next(iter(self.jobs.values()))['attempts'],0)
 async def test_status_counts_only_and_export_actual_owner_cipher_request_binding(self):
  self.setup();await self.enroll();await self.worker();status=await self.routes['/api/admin/census-research-queue-status']('admin')
  self.assertNotIn('PRIVATE',json.dumps(status,default=str));self.assertNotIn('Private Synthetic',json.dumps(status,default=str))
  jid=str(next(iter(self.jobs)));output=await self.routes['/api/admin/export-census-research-queue'](Request({'job_ids':[jid]}),'ci-queue-export-001','admin')
  self.assertEqual(output['request_id'],'ci-queue-export-001');self.assertIn('ciphertext',output);self.assertNotIn('Private Synthetic',json.dumps(output));self.assert_safe_sql()
 async def test_input_limits_missing_raw_and_admin(self):
  self.setup();endpoint=self.routes['/api/admin/queue-census-research']
  for body in [dict(source_keys=[x['source_key'] for x in self.raw],requested_service='pressure_washing'),dict(source_keys=[self.raw[0]['source_key']],requested_service='pressure_washing',source_url='https://caller.example'),dict(source_keys=['a'*64],requested_service='pressure_washing')]:
   with self.assertRaises(HTTPException):await endpoint(Request(body),'admin')
  with self.assertRaises(HTTPException):await self.routes['/api/process-census-research']('invalid')
  self.assertEqual(self.jobs,{})
 def test_sql_contract_has_bounded_locks_cas_and_no_reset_clause(self):
  self.assertIn('for update skip locked limit 2',q.CLAIM_SQL.lower());self.assertIn("interval '5 minutes'",q.CLAIM_SQL)
  self.assertIn('lease_token=$2',q.CAS_SQL);self.assertIn('lease_until>now()',q.CAS_SQL)
  self.assertIn('do nothing',q.INSERT_SQL.lower());self.assertNotIn('do update',q.INSERT_SQL.lower())
  self.assertIn('j.failure_streak+1>=3',q.EXPIRE_SQL);self.assertIn('lease_exhausted',q.EXPIRE_SQL)
  self.assertNotIn('attempts<3',q.CLAIM_SQL);self.assertIn('failure_streak<3',q.CLAIM_SQL)
if __name__=='__main__':unittest.main()
