"""Bounded reuse of the existing native scoped-journey compiler. Never releases."""
import json,uuid
from datetime import datetime,timezone
SUPPORTED=('commercial_cleaning','pressure_washing','tree_service','junk_hauling')
EVENT='autonomous_scoped_preparation'

async def prepare_one(conn,prepare,admin_key,frozen):
    from official_research import NATIVE_VERSIONS
    row=await conn.fetchrow("""select c.candidate_id,c.market,c.category_key from market_inventory_candidates c
      where c.side='vendor' and c.status='discovered' and c.closed_at is null
      and c.category_key=any($1::text[]) and c.evidence->>'researched_by'=any($2::text[])
      and nullif(c.public_email,'') is not null and not ('inventory:'||c.candidate_id::text=any($3::text[]))
      and not exists(select 1 from growth_outreach_targets g where lower(g.public_email)=lower(c.public_email)
        or g.target_id='inventory:'||c.candidate_id::text)
      and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(c.public_email))
      and not exists(select 1 from events e where e.entity_type='research_candidate' and e.entity_id=c.candidate_id::text
        and e.event_type=$4 and (e.payload->>'status'='draft_prepared' or e.created_at>now()-interval '24 hours'))
      order by case when c.market='Phoenix' then 0 else 1 end,c.last_verified_at desc nulls last,c.candidate_id limit 1""",
      list(SUPPORTED),list(NATIVE_VERSIONS),list(frozen),EVENT)
    if not row:return {'status':'idle','prepared':0,'supported_services':list(SUPPORTED),'outreach_sent':0}
    cid=str(row['candidate_id']);request_id='auto-prepare-'+uuid.uuid4().hex
    result=dict(request_id=request_id,market=row['market'],service_key=row['category_key'],checked_at=datetime.now(timezone.utc).isoformat(),outreach_sent=0,offer_ready=False)
    try:
        capsule=await prepare(request_id,cid,admin_key)
        if not isinstance(capsule,dict) or capsule.get('request_id')!=request_id or not capsule.get('ciphertext'):
            raise ValueError('invalid_compiler_receipt')
        result.update(status='draft_prepared',encrypted_owner_preview=capsule)
    except Exception as exc:
        # Record the failure, do not let one company block the queue. Compiler
        # owns rollback and suppression/history checks; no fallback fabricated data.
        result.update(status='requires_research',reason=str(getattr(exc,'detail','compiler_failed'))[:120])
    await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
      values('research_candidate',$1,$2,'vps_preparation_worker',$3::jsonb)""",cid,EVENT,json.dumps(result))
    return dict(status=result['status'],prepared=int(result['status']=='draft_prepared'),outreach_sent=0,offer_ready=False)

def install(app,require_admin,prepare,admin_key,frozen,hold_required):
    from fastapi import Header
    @app.post('/api/process-autonomous-preparation')
    async def process(x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not hold_required():return {'status':'preparation_held','outreach_sent':0}
        async with app.state.pool.acquire() as conn:
            if not await conn.fetchval('select pg_try_advisory_lock(20261105,703)'):return {'status':'busy'}
            try:return await prepare_one(conn,prepare,admin_key,frozen)
            finally:await conn.fetchval('select pg_advisory_unlock(20261105,703)')
