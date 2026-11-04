"""CI-only actual PostgreSQL queue leasing/audits/concurrency; synthetic source work.

Run in API container: BMC_CI_CENSUS_QUEUE=1 and DATABASE_URL. Scheduler must be
idle in this disposable CI database; test refuses a nonempty census job queue.
"""
import asyncio,json,os,sys,uuid
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import AsyncMock,patch
sys.path.insert(0,str(Path(__file__).parent/'api'))


async def main():
    if os.environ.get('BMC_CI_CENSUS_QUEUE')!='1':
        raise RuntimeError('Explicit CI-only BMC_CI_CENSUS_QUEUE=1 required; never run on production')
    dsn=os.environ.get('DATABASE_URL')
    if not dsn:raise RuntimeError('CI DATABASE_URL required')
    import asyncpg
    import census_research_queue as q
    token=uuid.uuid4().hex;market='CI Census Queue Café & '+token
    pool=await asyncpg.create_pool(dsn,min_size=1,max_size=6)
    app=SimpleNamespace(state=SimpleNamespace(pool=pool));candidate_ids=[];job_ids=[];expected_raw={}
    search=AsyncMock(side_effect=AssertionError('Network/search forbidden'))
    phase='parallel';reviewed=[];barrier=asyncio.Event();closed_id=None;held_id=None
    async def row_snapshot(conn,cid):
        return await conn.fetchval('select to_jsonb(t)::text from market_inventory_candidates t where candidate_id=$1',cid)
    async def customer_snapshot(conn):
        out={}
        for table in ('orders','growth_owner_previews','growth_sample_requests','growth_sample_prospects','growth_purchase_offers',
                      'growth_prospect_exposures','outreach','vendors','buyers'):
            if await conn.fetchval('select to_regclass($1)',table):
                rows=await conn.fetch('select to_jsonb(t)::text value from '+table+' t order by to_jsonb(t)::text')
                out[table]=[row['value'] for row in rows]
        return out
    async def audits(conn,job):
        return [row['value'] for row in await conn.fetch('select to_jsonb(a)::text value from census_research_attempts a where job_id=$1 order by attempt_no',job)]
    async def review(row,service,*args):
        assert row['market']==market and row['candidate_id'] in candidate_ids
        assert service=='pressure_washing';reviewed.append(row['candidate_id'])
        if phase=='parallel':
            if len(reviewed)==4:barrier.set()
            await asyncio.wait_for(barrier.wait(),10)
        if phase=='raw_drift' and row['candidate_id']==held_id:
            # Actual concurrent raw change after source work starts, before CAS.
            async with pool.acquire() as conn:
                await conn.execute("update market_inventory_candidates set evidence=evidence||'{\"qualification_hold\":true}'::jsonb where candidate_id=$1",held_id)
                expected_raw[held_id]=await row_snapshot(conn,held_id)
        return dict(status='source_proposal_only',candidate_id=str(row['candidate_id']),raw_source_key=row['source_key'],requested_service=service,
                    parsed_facts=dict(business_name=row['business_name'],category_key=service,market=market),
                    native_record_written=False,provider_accepted=False,offer_ready=False)
    async def isolate_due(conn,job):
        await conn.execute("update census_research_jobs set next_attempt_at=now()+interval '30 days' where job_id=any($1::uuid[])",job_ids)
        await conn.execute("update census_research_jobs set next_attempt_at=now()-interval '1 second' where job_id=$1",job)
    async def claim_one(conn,job):
        async with conn.transaction():
            claimed=await conn.fetch(q.CLAIM_SQL)
            assert len(claimed)==1 and claimed[0]['job_id']==job,claimed
            item=claimed[0]
            await conn.execute(q.ATTEMPT_INSERT_SQL,item['job_id'],item['lease_token'],item['attempts'])
        return item
    try:
        async with pool.acquire() as conn:
            assert await conn.fetchval('select to_regclass($1)','census_research_jobs'),'queue schema migration missing'
            assert await conn.fetchval('select to_regclass($1)','census_research_attempts'),'attempt audit schema migration missing'
            assert await conn.fetchval('select count(*) from census_research_jobs')==0,'Disposable CI census queue must start empty'
            before_customers=await customer_snapshot(conn)
            # Also guard native rows outside fixtures against any source promotion.
            before_native=[row['value'] for row in await conn.fetch("select to_jsonb(t)::text value from market_inventory_candidates t where evidence->>'researched_by'='vps_primary_site_v1' order by candidate_id")]
            for index in range(6):
                name='CI Café & Queue '+token+' '+str(index);source='https://queue-fixture.example/'+token+'/'+str(index)
                raw=dict(side='vendor',market=market,category_key='commercial_cleaning',business_name=name,source_url=source)
                cid=await conn.fetchval("""insert into market_inventory_candidates(side,market,category_key,category_label,business_name,
                    source_url,source_domain,official_site,evidence,status) values('vendor',$1,'commercial_cleaning','Commercial cleaning',$2,$3,
                    'queue-fixture.example',true,$4::jsonb,'discovered') returning candidate_id""",
                    market,name,source,json.dumps(dict(researched_by='assistant_manual_census',artifact_files=['synthetic-'+token+'.json'],synthetic_fixture=token)))
                candidate_ids.append(cid)
                added=await conn.fetchrow(q.INSERT_SQL,cid,q.raw_source_key(raw),'pressure_washing');job_ids.append(added['job_id'])
                await conn.execute('update census_research_jobs set priority=$2 where job_id=$1',added['job_id'],100-index)
                expected_raw[cid]=await row_snapshot(conn,cid)
        with patch.object(q,'review_row',side_effect=review):
            # Two real workers must each claim<=2 and persist disjoint leases/audits.
            parallel=await asyncio.gather(q.process(app,'synthetic-ci-secret',search),q.process(app,'synthetic-ci-secret',search))
            assert [item['claimed'] for item in parallel]==[2,2],parallel
            assert sum(item['proposal_ready'] for item in parallel)==4 and len(reviewed)==len(set(reviewed))==4,parallel
            async with pool.acquire() as conn:
                assert await conn.fetchval('select count(*) from census_research_attempts where job_id=any($1::uuid[])',job_ids)==4
                assert await conn.fetchval('select count(distinct lease_token) from census_research_attempts where job_id=any($1::uuid[])',job_ids)==4
                assert await conn.fetchval("select count(*) from census_research_jobs where job_id=any($1::uuid[]) and status='proposal_ready' and attempts=1 and failure_streak=0",job_ids)==4
                old_audits={job:await audits(conn,job) for job in job_ids[:4]}
                await conn.execute("update census_research_jobs set next_attempt_at=now()+interval '30 days' where job_id=any($1::uuid[])",job_ids)
            phase='controlled'
            # Actual CAS SQL must reject a stale token without touching job/audit.
            async with pool.acquire() as conn:
                await isolate_due(conn,job_ids[0]);claimed=await claim_one(conn,job_ids[0])
                before=await conn.fetchval('select to_jsonb(j)::text from census_research_jobs j where job_id=$1',job_ids[0])
                before_audit=await audits(conn,job_ids[0])
                stale=await conn.fetchval(q.CAS_SQL,job_ids[0],uuid.uuid4(),'proposal_ready',None,'{}',0,0)
                assert stale is None
                assert await conn.fetchval('select to_jsonb(j)::text from census_research_jobs j where job_id=$1',job_ids[0])==before
                assert await audits(conn,job_ids[0])==before_audit
                await conn.execute("update census_research_jobs set lease_until=now()-interval '1 second' where job_id=$1",job_ids[0])
            # Expired running audit is completed once; backoff grows, third ends held.
            for failure in (1,2,3):
                result=await q.process(app,'synthetic-ci-secret',search)
                assert result['expired_leases_processed']==1 and result['claimed']==0,result
                async with pool.acquire() as conn:
                    job=await conn.fetchrow('select * from census_research_jobs where job_id=$1',job_ids[0])
                    assert job['failure_streak']==failure and job['lease_token'] is None,dict(job)
                    latest=await conn.fetchrow('select * from census_research_attempts where job_id=$1 order by attempt_no desc limit 1',job_ids[0])
                    assert latest['status']=='lease_expired' and latest['completed_at'] is not None,dict(latest)
                    if failure<3:
                        assert job['status']=='retry_wait'
                        delay=await conn.fetchval('select extract(epoch from ($1::timestamptz-now()))',job['next_attempt_at'])
                        expected_delay=300*2**(failure-1);assert expected_delay-10<delay<=expected_delay,(delay,failure)
                        await isolate_due(conn,job_ids[0]);await claim_one(conn,job_ids[0])
                        await conn.execute("update census_research_jobs set lease_until=now()-interval '1 second' where job_id=$1",job_ids[0])
                    else:assert job['status']=='needs_review' and job['last_error']=='lease_exhausted'
                    assert (await audits(conn,job_ids[0]))[0]==old_audits[job_ids[0]][0],'Old completed proposal audit changed'
            # Weekly due proposal refresh increments total attempts and resets streak.
            async with pool.acquire() as conn:
                await isolate_due(conn,job_ids[1])
                await conn.execute('update census_research_jobs set failure_streak=2 where job_id=$1',job_ids[1])
            refreshed=await q.process(app,'synthetic-ci-secret',search)
            assert refreshed['claimed']==refreshed['proposal_ready']==1,refreshed
            async with pool.acquire() as conn:
                job=await conn.fetchrow('select * from census_research_jobs where job_id=$1',job_ids[1])
                assert job['attempts']==2 and job['failure_streak']==0 and job['status']=='proposal_ready'
                delay=await conn.fetchval('select extract(epoch from ($1::timestamptz-now()))',job['next_attempt_at'])
                assert 7*86400-10<delay<=7*86400,delay
                assert (await audits(conn,job_ids[1]))[0]==old_audits[job_ids[1]][0],'Prior refresh audit overwritten'
            # One raw row closed before claim; another held during mocked source work.
            closed_id,held_id=candidate_ids[4:6];phase='raw_drift';reviews_before=len(reviewed)
            async with pool.acquire() as conn:
                await conn.execute('update market_inventory_candidates set closed_at=now() where candidate_id=$1',closed_id)
                expected_raw[closed_id]=await row_snapshot(conn,closed_id)
                await conn.execute("update census_research_jobs set next_attempt_at=now()-interval '1 second' where job_id=any($1::uuid[])",job_ids[4:6])
            held=await q.process(app,'synthetic-ci-secret',search)
            assert held['claimed']==held['needs_review']==2 and held['proposal_ready']==0,held
            assert reviewed[reviews_before:]==[held_id],'Closed raw row reached source research'
            async with pool.acquire() as conn:
                for job in job_ids[4:6]:
                    record=await conn.fetchrow('select * from census_research_jobs where job_id=$1',job)
                    assert record['last_error']=='raw_census_snapshot_changed_or_held' and record['status']=='needs_review',dict(record)
                    history=await conn.fetchrow('select * from census_research_attempts where job_id=$1',job)
                    assert history['status']=='needs_review' and history['completed_at'] is not None
        search.assert_not_awaited()
        for item in parallel+[refreshed,held]:
            assert item['native_records_written']==item['providers_accepted']==item['customer_orders_created']==item['outreach_sent']==0
        async with pool.acquire() as conn:
            for cid in candidate_ids:assert await row_snapshot(conn,cid)==expected_raw[cid],'Worker mutated raw census row'
            assert await customer_snapshot(conn)==before_customers,'Customer/approval/order/outreach/provider state changed'
            after_native=[row['value'] for row in await conn.fetch("select to_jsonb(t)::text value from market_inventory_candidates t where evidence->>'researched_by'='vps_primary_site_v1' order by candidate_id")]
            assert after_native==before_native,'Native records changed'
        print('PASS actual PostgreSQL: parallel bounded SKIPLOCKED leases/no duplicate audits; stale CAS; three expiry failures/backoff; weekly refresh/reset with immutable history; raw closure/concurrent hold; no native/customer/outreach mutations')
    finally:
        async with pool.acquire() as conn:
            if job_ids:
                await conn.execute('delete from census_research_attempts where job_id=any($1::uuid[])',job_ids)
                await conn.execute('delete from census_research_jobs where job_id=any($1::uuid[])',job_ids)
            if candidate_ids:await conn.execute('delete from market_inventory_candidates where candidate_id=any($1::uuid[]) and market=$2',candidate_ids,market)
        await pool.close()

if __name__=='__main__':asyncio.run(main())
