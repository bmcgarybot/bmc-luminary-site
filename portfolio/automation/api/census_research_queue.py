"""Persistent owner-private census SOURCE PROPOSALS, never native promotion.

Only this module's queue table is writable. Enrollment requires owner hold/all
outreach off through a trusted bool callback. Background source GET research is
independent of outreach flags and cannot change them or send customer messages.
"""
import asyncio
import json
import re
import uuid

from census_research_api import SELECT_SQL, raw_source_key, validate_body, review_row
from owner_research_export import seal_export
from official_research import VENDOR_TERMS

MAX_FAILURES=3
MAX_BYTES=500_000
MAX_PROPOSAL_BYTES=90_000
CLAIM_SQL="""with due as (
 select job_id from census_research_jobs
 where failure_streak<3 and status in ('queued','retry_wait','proposal_ready') and next_attempt_at<=now()
 order by priority desc,next_attempt_at,created_at,job_id
 for update skip locked limit 2)
 update census_research_jobs j set status='running',attempts=j.attempts+1,
 lease_token=gen_random_uuid(),lease_until=now()+interval '5 minutes',updated_at=now()
 from due where j.job_id=due.job_id returning j.*"""
EXPIRE_SQL="""with expired as (
 select job_id,lease_token from census_research_jobs
 where status='running' and lease_until<=now()
 order by lease_until,job_id for update skip locked limit 2),
 audit as (update census_research_attempts a set status='lease_expired',error_code='lease_expired',completed_at=now()
 from expired e where a.job_id=e.job_id and a.lease_token=e.lease_token and a.completed_at is null and a.status='running'
 returning a.lease_token)
 update census_research_jobs j set status=case when j.failure_streak+1>=3 then 'needs_review' else 'retry_wait' end,
 failure_streak=j.failure_streak+1,last_error=case when j.failure_streak+1>=3 then 'lease_exhausted' else 'lease_expired' end,
 next_attempt_at=case when j.failure_streak+1<3 then now()+(300 * power(2,least(j.failure_streak,2))) * interval '1 second' else j.next_attempt_at end,
 lease_token=null,lease_until=null,last_completed_at=now(),updated_at=now(),
 proposal=jsonb_build_object('status','source_review_held','gate_reason','lease_expired',
 'candidate_id',j.candidate_id::text,'raw_source_key',j.source_key,'native_record_written',false,'provider_accepted',false,'offer_ready',false)
 from expired e where j.job_id=e.job_id and j.lease_token=e.lease_token and j.status='running'
 returning j.job_id,j.status"""
ATTEMPT_INSERT_SQL="""insert into census_research_attempts(job_id,lease_token,attempt_no,started_at,status)
 values($1,$2,$3,now(),'running')"""
ATTEMPT_COMPLETE_SQL="""update census_research_attempts set completed_at=now(),status=$3,error_code=$4,proposal=$5::jsonb
 where job_id=$1 and lease_token=$2 and completed_at is null and status='running'"""
INSERT_SQL="""insert into census_research_jobs(candidate_id,source_key,requested_service,status)
 values($1,$2,$3,'queued') on conflict(candidate_id,requested_service) do nothing
 returning job_id,status,attempts,next_attempt_at"""
EXISTING_SQL="""select job_id,status,attempts,next_attempt_at from census_research_jobs
 where candidate_id=$1 and requested_service=$2"""
CAS_SQL="""update census_research_jobs set status=$3,last_error=$4,proposal=$5::jsonb,
 next_attempt_at=case when $3='retry_wait' then now()+($6::int * interval '1 second')
 when $3='proposal_ready' then now()+interval '7 days' else next_attempt_at end,failure_streak=$7,
 lease_token=null,lease_until=null,last_completed_at=now(),updated_at=now()
 where job_id=$1 and lease_token=$2 and status='running' and lease_until>now()
 returning job_id"""
STATUS_SQL="""select status,count(*) jobs,max(attempts) max_attempts,
 count(*) filter(where status='running' and lease_until<=now()) expired_leases,
 min(created_at) oldest_created_at,max(updated_at) last_updated_at,
 max(last_completed_at) last_completed_at
 from census_research_jobs group by status order by status"""
EXPORT_SQL="""select job_id,candidate_id,source_key,requested_service,status,attempts,last_error,
 proposal,created_at,updated_at,last_completed_at from census_research_jobs
 where job_id=any($1::uuid[]) order by created_at,job_id limit 5"""

ATTEMPT_EXPORT_SQL="""with history as (
 select job_id,lease_token,attempt_no,started_at,completed_at,status,error_code,proposal,
 row_number() over(partition by job_id order by attempt_no desc) audit_pos
 from census_research_attempts where job_id=any($1::uuid[]))
 select job_id,lease_token,attempt_no,started_at,completed_at,status,error_code,proposal
 from history where audit_pos<=3 order by job_id,attempt_no"""


def static_held(job,reason):
    return dict(status='source_review_held',candidate_id=str(job['candidate_id']),raw_source_key=job['source_key'],
                requested_service=job['requested_service'],gate_reason=reason,
                native_record_written=False,provider_accepted=False,offer_ready=False)


def matching_raw(rows,job):
    matches=[dict(row) for row in rows if row.get('source_key')==job['source_key'] and str(row.get('candidate_id'))==str(job['candidate_id'])]
    if len(matches)!=1:return None
    row=matches[0]
    try:
        if raw_source_key(row)!=job['source_key']:return None
    except (ValueError,TypeError,KeyError):return None
    return row


def disposition(proposal,failure_streak):
    """Only explicitly transient transport failures retry; no forced held retry."""
    if proposal.get('status')=='source_proposal_only':return 'proposal_ready',None,0,0
    failures=failure_streak+1
    reason=proposal.get('gate_reason','research_unavailable')
    transient=(reason in ('search_unavailable','research_unavailable') or
               (reason=='fetch_unavailable' and proposal.get('fetch_failure_reason') in ('timeout','fetch_unavailable')))
    if transient and failures<MAX_FAILURES:return 'retry_wait','transient_research_unavailable',300*(2**(failures-1)),failures
    if transient:return 'needs_review','consecutive_failure_limit_reached',0,failures
    # Reasons originate in trusted review_row/static_held only; bound defensively.
    if not isinstance(reason,str) or not re.fullmatch('[a-z0-9_]{1,100}',reason):reason='research_gate_held'
    return 'needs_review',reason,0,failures


async def read_raw(conn,keys):
    async with conn.transaction(isolation='repeatable_read',readonly=True):
        return [dict(row) for row in await conn.fetch(SELECT_SQL,keys)]


async def process(app,secret,search):
    """Claims persist before source work; no connection held during source HTTP."""
    async with app.state.pool.acquire() as conn:
        async with conn.transaction():
            expired=[dict(row) for row in await conn.fetch(EXPIRE_SQL)]
            jobs=[dict(row) for row in await conn.fetch(CLAIM_SQL)]
            for job in jobs:await conn.execute(ATTEMPT_INSERT_SQL,job['job_id'],job['lease_token'],job['attempts'])
        rows=await read_raw(conn,[job['source_key'] for job in jobs]) if jobs else []
    semaphore=asyncio.Semaphore(2)
    async def run(job):
        if job['requested_service'] not in VENDOR_TERMS:return job,static_held(job,'unsupported_requested_service')
        raw=matching_raw(rows,job)
        if raw is None:return job,static_held(job,'raw_census_snapshot_changed_or_held')
        async with semaphore:
            try:
                proposal=await review_row(raw,job['requested_service'],search,secret)
                if not isinstance(proposal,dict):raise ValueError('invalid_proposal')
                if len(json.dumps(proposal,default=str).encode())>MAX_PROPOSAL_BYTES:
                    proposal=static_held(job,'proposal_size_exceeded')
            except Exception:
                proposal=static_held(job,'research_unavailable')
        return job,proposal
    completed=await asyncio.gather(*(run(job) for job in jobs))
    result=dict(ok=True,enabled=True,claimed=len(jobs),expired_leases_processed=len(expired),proposal_ready=0,
                needs_review=sum(row['status']=='needs_review' for row in expired),retry_wait=sum(row['status']=='retry_wait' for row in expired),
                stale_results_discarded=0,native_records_written=0,providers_accepted=0,
                customer_orders_created=0,outreach_sent=0)
    for job,proposal in completed:
        async with app.state.pool.acquire() as conn:
            # Recheck the raw snapshot immediately before committing proposal;
            # concurrent raw closure/hold/key changes cannot promote this result.
            async with conn.transaction():
                current=[dict(row) for row in await conn.fetch(SELECT_SQL,[job['source_key']])]
                if matching_raw(current,job) is None:proposal=static_held(job,'raw_census_snapshot_changed_or_held')
                status,error,delay,failures=disposition(proposal,job['failure_streak'])
                written=await conn.fetchval(CAS_SQL,job['job_id'],job['lease_token'],status,error,
                                            json.dumps(proposal,default=str),delay,failures)
                if written:await conn.execute(ATTEMPT_COMPLETE_SQL,job['job_id'],job['lease_token'],status,error,json.dumps(proposal,default=str))
        if written:result[status]+=1
        else:result['stale_results_discarded']+=1
    return result


def install(app,require_admin,secret,hold_required,search,enabled=True):
    from fastapi import Request, Header, HTTPException
    async def body(request):
        raw=await request.body()
        if len(raw)>2048:raise HTTPException(413,'request_too_large')
        try:return json.loads(raw)
        except (ValueError,UnicodeError):raise HTTPException(422,'invalid_json_body')

    @app.post('/api/admin/queue-census-research')
    async def enroll(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if hold_required() is not True:raise HTTPException(409,'owner_hold_and_all_outreach_off_required')
        try:keys,service=validate_body(await body(request))
        except (ValueError,TypeError):raise HTTPException(422,'invalid_census_queue_request')
        async with app.state.pool.acquire() as conn:
            rows=await read_raw(conn,keys)
            selected=[]
            for key in keys:
                matches=[row for row in rows if row['source_key']==key]
                if len(matches)!=1 or matching_raw(matches,dict(candidate_id=matches[0]['candidate_id'],source_key=key)) is None:
                    raise HTTPException(409,'exact_unheld_manual_census_key_required')
                selected.append(matches[0])
            async with conn.transaction():
                if hold_required() is not True:raise HTTPException(409,'owner_hold_and_all_outreach_off_required')
                jobs=[]
                for row in selected:
                    added=await conn.fetchrow(INSERT_SQL,row['candidate_id'],row['source_key'],service)
                    existing=added or await conn.fetchrow(EXISTING_SQL,row['candidate_id'],service)
                    if not existing:raise HTTPException(409,'queue_job_unavailable')
                    jobs.append(dict(job_id=str(existing['job_id']),status=existing['status'],attempts=existing['attempts'],newly_queued=bool(added)))
        return dict(ok=True,jobs=jobs,proposal_only=True,research_enabled=bool(enabled),outreach_sent=0)

    @app.post('/api/process-census-research')
    async def worker(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not enabled:return dict(ok=True,enabled=False,claimed=0,outreach_sent=0,native_records_written=0)
        return await process(app,secret,search)

    @app.post('/api/admin/census-research-queue-status')
    async def status(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        async with app.state.pool.acquire() as conn:
            async with conn.transaction(isolation='repeatable_read',readonly=True):
                rows=await conn.fetch(STATUS_SQL)
        # Explicit field whitelist: no names, contacts, source URLs or proposals.
        return dict(ok=True,research_enabled=bool(enabled),proposal_only=True,counts=[{key:row[key] for key in
            ('status','jobs','max_attempts','expired_leases','oldest_created_at','last_updated_at','last_completed_at')} for row in rows])

    @app.post('/api/admin/export-census-research-queue')
    async def export(request:Request,request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not re.fullmatch('[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id):raise HTTPException(400,'invalid_request_id')
        data=await body(request)
        if not isinstance(data,dict) or set(data)!={'job_ids'} or not isinstance(data['job_ids'],list) or not 1<=len(data['job_ids'])<=5:
            raise HTTPException(422,'one_to_five_distinct_job_ids_required')
        try:
            ids=[uuid.UUID(value) for value in data['job_ids'] if isinstance(value,str)]
            if len(ids)!=len(data['job_ids']) or len(set(ids))!=len(ids):raise ValueError('invalid_ids')
        except (ValueError,TypeError,AttributeError):raise HTTPException(422,'invalid_job_ids')
        async with app.state.pool.acquire() as conn:
            async with conn.transaction(isolation='repeatable_read',readonly=True):
                rows=[dict(row) for row in await conn.fetch(EXPORT_SQL,ids)]
                history=[dict(row) for row in await conn.fetch(ATTEMPT_EXPORT_SQL,ids)]
        for row in rows+history:
            if isinstance(row.get('proposal'),str):row['proposal']=json.loads(row['proposal'])
        for row in rows:row['recent_attempts']=[item for item in history if item['job_id']==row['job_id']]
        payload=dict(request_id=request_id,scope='Private source proposals only; not native verification, accepted providers, demand, packets or release',jobs=rows)
        if len(json.dumps(payload,default=str).encode())>MAX_BYTES:raise HTTPException(413,'capsule_size_exceeded')
        sealed=seal_export(payload,request_id)
        if len(json.dumps(sealed).encode())>MAX_BYTES:raise HTTPException(413,'capsule_size_exceeded')
        return sealed
