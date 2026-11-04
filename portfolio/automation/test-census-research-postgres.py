"""Real PostgreSQL Unicode census-key/read-only endpoint integration, CI only.

Run inside API container with BMC_CI_CENSUS_REVIEW=1 and DATABASE_URL.
Fresh source bytes are synthetic; no search, network, orders or messages.
"""
import asyncio,copy,hashlib,json,os,sys,uuid
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import AsyncMock,patch
sys.path.insert(0,str(Path(__file__).parent/'api'))


async def main():
    if os.environ.get('BMC_CI_CENSUS_REVIEW')!='1':
        raise RuntimeError('Explicit CI-only BMC_CI_CENSUS_REVIEW=1 required; never run on production')
    dsn=os.environ.get('DATABASE_URL')
    if not dsn:raise RuntimeError('CI DATABASE_URL required')
    import asyncpg
    from fastapi import FastAPI
    import census_research_api as api
    token=uuid.uuid4().hex;market='CI Census Café & Market '+token;company='CI Café & Pressure Cleaning '+token
    source='https://census-fixture.example/'+token;phone='6025550100';cid=None
    pool=await asyncpg.create_pool(dsn,min_size=1,max_size=2)
    raw=dict(side='vendor',market=market,category_key='commercial_cleaning',business_name=company,source_url=source)
    source_key=api.raw_source_key(raw);captured=[];reads=[];transactions=[];fetched=[]
    class GuardedConnection:
        def __init__(self,conn):self.conn=conn
        def transaction(self,**kwargs):
            assert kwargs==dict(isolation='repeatable_read',readonly=True),kwargs
            transactions.append(kwargs);return self.conn.transaction(**kwargs)
        async def fetch(self,query,*args):
            assert query==api.SELECT_SQL,'Endpoint used unexpected SQL'
            assert await self.conn.fetchval('show transaction_read_only')=='on'
            assert await self.conn.fetchval('show transaction_isolation')=='repeatable read'
            reads.append((query,args));return await self.conn.fetch(query,*args)
        async def execute(self,*args):raise AssertionError('API execute forbidden')
        async def fetchrow(self,*args):raise AssertionError('API fetchrow forbidden')
        async def fetchval(self,*args):raise AssertionError('API fetchval forbidden')
    class Acquisition:
        async def __aenter__(self):
            self.ctx=pool.acquire();self.conn=await self.ctx.__aenter__();return GuardedConnection(self.conn)
        async def __aexit__(self,*args):return await self.ctx.__aexit__(*args)
    class GuardedPool:
        def acquire(self):return Acquisition()
    class Request:
        def __init__(self,keys):self.keys=keys
        async def body(self):return json.dumps(dict(source_keys=self.keys,requested_service='pressure_washing')).encode()
    def admin(key):
        if key!='synthetic-ci-admin':raise ValueError('CI admin required')
    search=AsyncMock(side_effect=AssertionError('Search/network forbidden'))
    app=FastAPI();app.state.pool=GuardedPool()
    api.install(app,admin,'synthetic-ci-secret',lambda:True,search)
    endpoint=next(route.endpoint for route in app.routes if getattr(route,'path','')=='/api/admin/research-census-review')
    real_seal=api.seal_export
    def capture(payload,request_id):
        captured.append(copy.deepcopy(payload))
        result=real_seal(payload,request_id)  # Actual pinned owner public key and crypto; no private key.
        assert result['request_id']==request_id and result.get('ciphertext') and result.get('wrapped_key')
        assert company not in json.dumps(result)
        return result
    def fetch(url):
        assert url==source;fetched.append(url)
        entity={'@type':'CleaningService','name':company,'url':source,'telephone':phone,
            'description':'Commercial pressure washing for storefronts and offices.',
            'address':{'streetAddress':'100 Synthetic Main Street','addressLocality':market,'addressRegion':'AZ','postalCode':'86301'}}
        raw_bytes=('<script type="application/ld+json">'+json.dumps(entity,ensure_ascii=False)+'</script>').encode()
        return api.FetchedPageReceipt(requested_url=source,final_url=source,raw_bytes=raw_bytes,
            content_sha256=hashlib.sha256(raw_bytes).hexdigest(),fetched_at=datetime.now(timezone.utc).isoformat(),
            http_status=200,content_type='text/html',redirect_chain=())
    async def snapshots(conn):
        result={}
        for table in ('orders','growth_owner_previews','growth_sample_requests','growth_sample_prospects',
                      'growth_purchase_offers','growth_prospect_exposures','outreach','vendors','buyers'):
            if await conn.fetchval('select to_regclass($1)',table):
                rows=await conn.fetch('select to_jsonb(t)::text value from '+table+' t order by to_jsonb(t)::text')
                result[table]=[row['value'] for row in rows]
        return result
    try:
        async with pool.acquire() as conn:
            before_customers=await snapshots(conn)
            cid=await conn.fetchval('''insert into market_inventory_candidates(side,market,category_key,category_label,
                business_name,source_url,source_domain,public_phone,official_site,evidence,status)
                values('vendor',$1,'commercial_cleaning','Commercial cleaning',$2,$3,'census-fixture.example',$4,true,$5::jsonb,'discovered') returning candidate_id''',
                market,company,source,phone,json.dumps({'researched_by':'assistant_manual_census','artifact_files':['synthetic-'+token+'.json'],'synthetic_fixture':token}))
            actual=await conn.fetchrow('select jsonb_build_array(side,market,category_key,business_name,source_url)::text serialized,'+api.KEY_SQL+' source_key from market_inventory_candidates where candidate_id=$1',cid)
            expected_json=json.dumps([raw[k] for k in ('side','market','category_key','business_name','source_url')],ensure_ascii=False,separators=(', ',': '))
            assert actual['serialized']==expected_json,(actual['serialized'],expected_json)
            assert actual['source_key']==source_key,actual
            before_raw=await conn.fetchval('select to_jsonb(t)::text from market_inventory_candidates t where candidate_id=$1',cid)
        with patch.object(api,'fetch_page_receipt',side_effect=fetch),patch.object(api,'seal_export',side_effect=capture):
            sealed=await endpoint(Request([source_key]),'ci-census-review-'+token,'synthetic-ci-admin')
            assert len(captured)==1 and len(fetched)==1
            proposal=captured[0]['proposals'][0]
            assert proposal['candidate_id']==str(cid) and proposal['raw_source_key']==source_key,proposal
            assert proposal['status']=='source_proposal_only' and proposal['requested_service']=='pressure_washing',proposal
            facts=proposal['parsed_facts']
            assert facts['business_name']==company and facts['market']==market and facts['category_key']=='pressure_washing',facts
            assert facts['physical_address']=='100 Synthetic Main Street, '+market+', AZ 86301',facts
            assert proposal['native_record_written'] is False and proposal['provider_accepted'] is False and proposal['offer_ready'] is False
            missing='0'*64
            if missing==source_key:missing='1'*64
            await endpoint(Request([missing]),'ci-census-missing-'+token,'synthetic-ci-admin')
            assert len(fetched)==1,'Missing natural key fetched a source'
            assert captured[1]['proposals'][0]['gate_reason']=='exact_unheld_census_key_not_unique_or_not_found'
        search.assert_not_awaited();assert len(reads)==len(transactions)==2
        async with pool.acquire() as conn:
            after_raw=await conn.fetchval('select to_jsonb(t)::text from market_inventory_candidates t where candidate_id=$1',cid)
            assert after_raw==before_raw,'Raw manual census record/category/source changed'
            assert await snapshots(conn)==before_customers,'Customer/order/approval/outreach/provider/exposure state changed'
            assert await conn.fetchval("select category_key from market_inventory_candidates where candidate_id=$1",cid)=='commercial_cleaning'
        print('PASS actual PostgreSQL: UnicodeCafé/ampersand raw_source_key matches jsonb-array SHA; exact rawID pressure proposal/read-only tx; missingkey nofetch; raw/customer/history unchanged; real owner-key encryption')
    finally:
        async with pool.acquire() as conn:
            if cid is not None:
                await conn.execute('delete from market_inventory_candidates where candidate_id=$1 and market=$2',cid,market)
        await pool.close()

if __name__=='__main__':asyncio.run(main())
