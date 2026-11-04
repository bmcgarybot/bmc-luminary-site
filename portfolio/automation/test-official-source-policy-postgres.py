"""Actual PostgreSQL source-policy selection/claim/failure integration.

Run inside CI API container with DATABASE_URL and BMC_CI_SOURCE_RECHECK=1.
Synthetic unique market; deterministic patched research, no network/server/send.
"""
import asyncio,copy,json,os,sys,uuid
from pathlib import Path
from unittest.mock import patch

# Container COPY exposes module directly; workspace runner uses api directory.
sys.path.insert(0,str(Path(__file__).parent/'api'))
import asyncpg
from fastapi import FastAPI
import official_research as r

async def main():
    if os.environ.get('BMC_CI_SOURCE_RECHECK')!='1':
        raise RuntimeError('Explicit CI-only BMC_CI_SOURCE_RECHECK=1 required; never run on production')
    url=os.environ.get('DATABASE_URL')
    if not url:raise RuntimeError('CI DATABASE_URL required')
    token=uuid.uuid4().hex
    market='CI Source Policy Market '+token
    pool=await asyncpg.create_pool(url,min_size=1,max_size=2)
    app=FastAPI();app.state.pool=pool
    inspected=[];searches=[];ids={};before_candidates={}
    async def search(query,page,limit):
        searches.append((query,page,limit));return []
    async def inspect(row,urls,secret):
        assert row['market']==market
        inspected.append(row['candidate_id'])
        assert urls==[], 'blocked URL must not be fetched directly'
        return None,'synthetic_no_official_site'
    def admin(value):
        if value!='ci-only':raise ValueError('invalid synthetic admin')
    r.install(app,admin,search,[market],'synthetic-ci-key',enabled=True)
    endpoint=next(route.endpoint for route in app.routes if getattr(route,'path','')=='/api/process-official-research')
    async def snapshots(conn):
        # Only read actual frozen/customer tables; test never writes these.
        out={}
        for table in ['orders','growth_owner_previews','growth_sample_requests']:
            exists=await conn.fetchval('select to_regclass($1)',table)
            if exists:
                # A database row snapshot catches updates as well as row-count changes.
                rows=await conn.fetch('select to_jsonb(t)::text value from '+table+' t order by to_jsonb(t)::text')
                out[table]=[row['value'] for row in rows]
        return out
    try:
        async with pool.acquire() as conn:
            assert await conn.fetchval("select count(*) from information_schema.columns where table_name='official_research_jobs' and column_name='source_policy_version'"), 'source-policy migration not loaded'
            frozen_before=await snapshots(conn)
            fixtures=[('urgent_verified','https://www.solvhealth.com/ci/'+token,'solvhealth.com','verified',30),
                      ('new_blocked','https://www.hotelscombined.com/ci/'+token,'hotelscombined.com',None,0),
                      ('review_backoff','https://www.sobernation.com/ci/'+token,'sobernation.com','needs_review',24),
                      ('running_lease','https://www.solvhealth.com/ci-running/'+token,'solvhealth.com','running',1),
                      ('old_raw','https://ci-unrelated.example/'+token,'ci-unrelated.example','verified',30)]
            for i,(key,source,domain,status,delay) in enumerate(fixtures):
                evidence={'researched_by':r.VERSION,'synthetic_fixture':token} if key!='old_raw' else {'researched_by':'assistant_manual_census','synthetic_fixture':token}
                cid=await conn.fetchval("""insert into market_inventory_candidates(side,market,category_key,category_label,business_name,
                    source_url,source_domain,status,evidence,last_verified_at,official_site,updated_at)
                    values('vendor',$1,'commercial_cleaning','Commercial cleaning',$2,$3,$4,'discovered',$5::jsonb,now(),true,
                           now()-($6::int * interval '1 minute')) returning candidate_id""",
                    market,'CI synthetic '+key+' '+token,source,domain,json.dumps(evidence),i)
                ids[key]=cid
                if status:
                    await conn.execute("""insert into official_research_jobs(candidate_id,market,status,attempts,last_attempt_at,next_attempt_at,source_policy_version)
                        values($1,$2,$3,7,now()-interval '1 hour',now()+($4::int * interval '1 hour'),'old-test-policy')""",cid,market,status,delay)
            before_candidates={row['candidate_id']:row['value'] for row in await conn.fetch('select candidate_id,to_jsonb(t)::text value from market_inventory_candidates t where market=$1',market)}
            jobs_before={row['candidate_id']:dict(row) for row in await conn.fetch('select * from official_research_jobs where market=$1',market)}
        with patch.object(r,'inspect_source_pages',side_effect=inspect),patch.object(r,'fetch_page',side_effect=AssertionError('network forbidden')),patch.object(r,'fetch_page_receipt',side_effect=AssertionError('network forbidden')):
            first=await endpoint('ci-only')
            assert first['inspected']==1 and first['needs_review']==1 and first['verified']==0, first
            assert inspected==[ids['urgent_verified']],inspected
            second=await endpoint('ci-only')
            assert second['inspected']==1 and second['needs_review']==1,second
            assert inspected==[ids['urgent_verified'],ids['new_blocked']],inspected
            third=await endpoint('ci-only')
            assert third['inspected']==0,third
        assert len(searches)==2,searches
        async with pool.acquire() as conn:
            jobs={row['candidate_id']:dict(row) for row in await conn.fetch('select * from official_research_jobs where market=$1',market)}
            for key,attempts in [('urgent_verified',8),('new_blocked',1)]:
                job=jobs[ids[key]]
                assert job['status']=='needs_review' and job['attempts']==attempts,job
                assert job['source_policy_version']==first['source_policy_version'],job
                assert job['error_code']=='synthetic_no_official_site',job
                remaining=await conn.fetchval('select extract(epoch from ($1::timestamptz-now()))',job['next_attempt_at'])
                assert 23*3600<remaining<=24*3600,remaining
            for key in ['review_backoff','running_lease','old_raw']:
                assert jobs[ids[key]]==jobs_before[ids[key]],(key,jobs[ids[key]],jobs_before[ids[key]])
            after={row['candidate_id']:row['value'] for row in await conn.fetch('select candidate_id,to_jsonb(t)::text value from market_inventory_candidates t where market=$1',market)}
            assert after==before_candidates,'raw/native candidates mutated on failure'
            assert await snapshots(conn)==frozen_before,'frozen previews/customer history/order mutation'
        for outcome in [first,second,third]:
            assert outcome['outreach_sent']==outcome['providers_accepted']==outcome['customer_orders_created']==0
        print('PASS actual PostgreSQL: future verified blocked source rechecked once; second blocked source advances; needs-review/running/backoff preserved; candidates/frozen/customer tables unchanged; zero external actions')
    finally:
        async with pool.acquire() as conn:
            # Only fixture IDs/unique test market; foreign-key cascade removes jobs.
            await conn.execute('delete from official_research_jobs where market=$1',market)
            await conn.execute('delete from market_inventory_candidates where market=$1',market)
        await pool.close()

if __name__=='__main__':asyncio.run(main())
