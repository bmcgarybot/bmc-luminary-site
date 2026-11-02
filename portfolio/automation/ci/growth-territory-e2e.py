"""Isolated real-Postgres scope/sample/100-row delivery proof; fake email, no Stripe calls."""
import asyncio,os,uuid,json
import asyncpg
import app as api
if os.getenv('BMC_CI_TERRITORY_PROOF')!='1':raise RuntimeError('This proof requires an explicitly isolated CI database')
async def main():
    conn=await asyncpg.connect(api.DB_DSN)
    api.app.state.pool=await asyncpg.create_pool(api.DB_DSN,min_size=1,max_size=2)
    api.GROWTH_BUYER_CATEGORIES['pressure_washing']=['ci_territory']
    api.GROWTH_HIGH_VALUE_CATEGORIES['pressure_washing']={'ci_territory'}
    deliveries=[]
    async def fake_mail(*args,**kwargs):return True
    async def fake_once(*args,**kwargs):deliveries.append(args);return True
    api.send_mail=fake_mail;api.send_mail_once=fake_once
    prefixes='ci-territory-'
    try:
        for city in ('Flagstaff','Cottonwood'):
            await conn.execute("""insert into market_inventory_candidates(side,market,category_key,category_label,business_name,
              source_url,source_domain,public_phone,official_site,source_tier,verification_status,last_verified_at,last_seen_at,status,evidence)
              select 'buyer',$1,'ci_territory','Synthetic territory fixtures',
                case when g=1 then 'CI Territory Shared Company' else 'CI Territory '||$1||' '||g end,
                'https://ci-territory-'||lower($1)||'-'||g||'.example.com',
                'ci-territory-'||lower($1)||'-'||g||'.example.com','92855'||lpad(g::text,5,'0'),true,'direct','direct_evidence',now(),now(),'discovered',
                '{"artifact_files":["synthetic-ci-territory.json"],"researched_by":"assistant_manual_census"}'::jsonb
              from generate_series(1,80) g""",city)
        order_count=await conn.fetchval('select count(*) from orders')
        inquiry=dict(submission_id='ci-territory-scope',business_name='CI Territory Scope',contact_name='Synthetic owner',
          email='ci-territory-scope@example.invalid',market='Flagstaff',selected_markets=['Flagstaff','Cottonwood'],
          consent='yes',scope='Request a quote for a smaller commercial prospect pack.',requested_size='20')
        async with conn.transaction():quote=await api.handle_growth_scope_request(conn,inquiry)
        async with conn.transaction():repeat_quote=await api.handle_growth_scope_request(conn,inquiry)
        assert quote['status']=='scope_review' and repeat_quote['status']=='scope_review'
        assert await conn.fetchval('select count(*) from orders')==order_count
        assert await conn.fetchval("select count(*) from tasks where lead_id=(select lead_id from leads where submission_id='ci-territory-scope')")==1
        base=dict(form_type='growth_snapshot',service_key='pressure_washing',contact_name='Synthetic owner',market='Flagstaff',consent='yes')
        single=dict(base,submission_id='ci-territory-single',business_name='CI Territory Single',email='ci-territory-single@example.invalid')
        async with conn.transaction():a=await api.handle_growth_snapshot(conn,single)
        assert a['status']=='sample_ready' and not a['checkout_url'],a
        multi=dict(base,submission_id='ci-territory-multi',business_name='CI Territory Multi',email='ci-territory-multi@example.invalid',selected_markets=['Flagstaff','Cottonwood'])
        async with conn.transaction():b=await api.handle_growth_snapshot(conn,multi)
        assert b['status']=='sample_ready' and b['checkout_url'],b
        assert set(b['selected_markets'])=={'Flagstaff','Cottonwood'},b
        original={x['business_name'] for x in b['sample']};sid=uuid.UUID(b['sample_id'])
        saved=await conn.fetchrow('select * from growth_sample_requests where sample_id=$1',sid)
        assert set(saved['selected_markets'])=={'Flagstaff','Cottonwood'}
        async with conn.transaction():replay=await api.handle_growth_snapshot(conn,multi)
        assert {x['business_name'] for x in replay['sample']}==original
        try:
            async with conn.transaction():await api.handle_growth_snapshot(conn,dict(multi,selected_markets=['Flagstaff']))
            raise AssertionError('Replay changed purchased scope')
        except api.HTTPException as e:assert e.status_code==409
        alias=dict(multi,submission_id='ci-territory-overlap',market='Cottonwood',selected_markets=['Cottonwood'],email='ci-territory-alias@example.invalid')
        async with conn.transaction():held=await api.handle_growth_snapshot(conn,alias)
        assert held['status']=='already_claimed' and held['sample']==[],held
        # Test both a suppressed saved row and loss of regional capacity on checkout replay.
        sample=await conn.fetchrow('select * from growth_sample_prospects where sample_id=$1 limit 1',sid)
        key=api.growth_prospect_key(dict(sample))
        await conn.execute("insert into growth_prospect_suppressions(prospect_key,reason,source) values($1,'Synthetic review','ci-territory')",key)
        assert not await api.growth_sample_checkout(conn,multi['email'],sid,'pressure_washing')
        await conn.execute("delete from growth_prospect_suppressions where source='ci-territory'")
        ids=await conn.fetch("select candidate_id from market_inventory_candidates where category_key='ci_territory' and market='Cottonwood' and candidate_id not in(select candidate_id from growth_sample_prospects where sample_id=$1)",sid)
        await conn.execute("update market_inventory_candidates set closed_at=now() where candidate_id=any($1::uuid[])",[x['candidate_id'] for x in ids])
        assert not await api.growth_sample_checkout(conn,multi['email'],sid,'pressure_washing')
        await conn.execute("update market_inventory_candidates set closed_at=null where category_key='ci_territory'")
        oid=await conn.fetchval("""insert into orders(product_key,customer_email,amount_cents,payment_status,status,growth_sample_id)
          values('growth_pack_starter',$1,49900,'paid','ready_for_fulfillment',$2) returning order_id""",multi['email'],sid)
        await conn.execute("insert into tasks(order_id,service_key,task_type,status) values($1,'pressure_washing','fulfill_growth_pack','open')",oid)
        result=await api.process_growth_fulfillment(api.ADMIN_KEY)
        assert result['fulfilled']==1 and result['exceptions']==0,result
        final=await conn.fetch('select * from growth_order_prospects where order_id=$1',oid)
        assert len(final)==100 and len({x['business_name'] for x in final})==100
        assert original<={x['business_name'] for x in final}
        assert {x['market'] for x in final}=={'Flagstaff','Cottonwood'}
        assert len(deliveries)==1
        again=await api.process_growth_fulfillment(api.ADMIN_KEY)
        assert again['fulfilled']==0 and len(deliveries)==1,again
        print('PASS regional scope persists, thin single-city offer blocked, replay immutable, overlap claims held, suppression/capacity rechecked, 100 unique actual-city rows include original five, one fake delivery')
    finally:
        await conn.execute("delete from tasks where order_id in(select order_id from orders where customer_email like 'ci-territory-%@example.invalid')")
        await conn.execute("delete from orders where customer_email like 'ci-territory-%@example.invalid'")
        await conn.execute("delete from tasks where lead_id in(select lead_id from leads where submission_id like 'ci-territory-%')")
        await conn.execute("delete from leads where submission_id like 'ci-territory-%'")
        await conn.execute("delete from growth_prospect_exposures where recipient_key like 'ci-territory-%@example.invalid'")
        await conn.execute("delete from growth_sample_requests where submission_id like 'ci-territory-%'")
        await conn.execute("delete from market_inventory_candidates where category_key='ci_territory'")
        await conn.execute("delete from growth_prospect_suppressions where source='ci-territory'")
        await conn.close();await api.app.state.pool.close()
asyncio.run(main())
