#!/usr/bin/env python3
"""Handler SQL integration against disposable real PostgreSQL (no Stripe/mail).
Signature verification is deliberately stubbed here; the HTTP CI smoke suite
exercises the production signature verifier with synthetic signed payloads.
CI requires PAYMENT_TEST_DATABASE_URL; absence is a deliberate local skip.
"""
import ast
import asyncio
import json
import os
from pathlib import Path
from types import SimpleNamespace
import unittest
import uuid
import sys
sys.path.insert(0,str(Path(__file__).parent/"api"))
import growth_offers
from datetime import timedelta
from datetime import datetime, timezone

DSN=os.environ.get('PAYMENT_TEST_DATABASE_URL')

@unittest.skipUnless(DSN,'PAYMENT_TEST_DATABASE_URL is required for PostgreSQL integration')
class PaymentPostgres(unittest.IsolatedAsyncioTestCase):
    async def asyncSetUp(self):
        import asyncpg
        self.schema='payment_test_'+uuid.uuid4().hex
        self.admin=await asyncpg.connect(DSN)
        await self.admin.execute('create schema '+self.schema)
        # asyncpg resets session settings on release. Reapply isolation on every
        # acquisition, including handler and scalar-query connections.
        async def setup(conn):
            await conn.execute('set search_path to '+self.schema+',public')
            self.assertEqual(await conn.fetchval('select current_schema()'),self.schema)
        self.pool=await asyncpg.create_pool(DSN,min_size=1,max_size=5,setup=setup)
        async with self.pool.acquire() as conn:
            await conn.execute(Path(__file__).with_name('schema.sql').read_text())
        source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        names={'stripe_webhook','stripe_product_key','stripe_email','nested','record_revenue','clean','bind_growth_purchase_offer'}
        nodes=[n for n in source.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef)) and n.name in names]
        for n in nodes: n.decorator_list=[]
        async def event(*args): pass
        self.ns=dict(Request=object,Header=lambda **kw:None,json=json,uuid=uuid,datetime=datetime,timezone=timezone,
            verify_stripe_signature=lambda *args:None,event=event,HTTPException=RuntimeError,growth_offers=growth_offers,
            app=SimpleNamespace(state=SimpleNamespace(pool=self.pool)))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'production_payment_handler','exec'),self.ns)

    async def test_interest_first_readiness_aggregate_queries_use_real_schema(self):
        from interest_first import (CAMPAIGN, INVENTORY_CONTACT_MATRIX_SQL,
          NORMALIZED_VENDOR_CONTACT_MATRIX_SQL, STAGED_INTEREST_MATRIX_SQL)
        async with self.pool.acquire() as conn:
            inventory=await conn.fetch(INVENTORY_CONTACT_MATRIX_SQL)
            normalized=await conn.fetch(NORMALIZED_VENDOR_CONTACT_MATRIX_SQL)
            staged=await conn.fetch(STAGED_INTEREST_MATRIX_SQL,CAMPAIGN)
        self.assertIsInstance(inventory,list)
        self.assertIsInstance(normalized,list)
        self.assertIsInstance(staged,list)

    async def test_interest_contact_research_has_additive_schema(self):
        from interest_contact_research import CANDIDATE_SQL as CONTACT_RESEARCH_CANDIDATES
        async with self.pool.acquire() as conn:
            candidates=await conn.fetch(CONTACT_RESEARCH_CANDIDATES,4)
            status=await conn.fetch("select candidate_id,status,attempts,next_attempt_at from interest_first_contact_research limit 2")
        self.assertEqual(candidates,[])
        self.assertEqual(status,[])

    async def test_interest_first_readonly_candidate_query_executes_on_real_schema(self):
        from interest_first import CANDIDATE_SQL
        async with self.pool.acquire() as conn:
            rows=await conn.fetch(CANDIDATE_SQL,25)
        self.assertEqual(rows,[])

    async def test_business_metrics_use_real_schema_and_distinguish_unknown_delivery(self):
        from ops_metrics import business_metrics
        async with self.pool.acquire() as conn:
            await conn.execute("insert into mail_observations(message_key,direction,status,payload_sha256) values('test-mail','outbound','smtp_accepted','hash')")
            metrics=await business_metrics(conn)
        self.assertEqual(metrics["mail"]["smtp_accepted"],1)
        self.assertEqual(metrics["orders"]["paid_orders"],0)
        self.assertIsNone(metrics["limits"]["inbox_delivery"])
        self.assertEqual(metrics["paid_amounts_by_currency"],[])
    async def test_mail_observation_survives_business_rollback_and_deduplicates_receipt(self):
        source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        nodes=[n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name in ('record_mail_observation','record_api_operation')]
        ns=dict(app=SimpleNamespace(state=SimpleNamespace(delivery_pool=self.pool)))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'production_metrics','exec'),ns)
        async with self.pool.acquire() as conn:
            tx=conn.transaction();await tx.start()
            await ns['record_mail_observation']('inbound:hash','inbound','received','hash','positive')
            await tx.rollback()
        await ns['record_mail_observation']('inbound:hash','inbound','received','hash')
        self.assertEqual(await self.scalar('select count(*) from mail_observations'),1)
        self.assertEqual(await self.scalar('select classification from mail_observations'),'positive')
        await ns['record_api_operation']('/api/fixture',200,12)
        await ns['record_api_operation']('/api/fixture',500,25)
        self.assertEqual(await self.scalar('select requests from api_operation_metrics'),2)
        self.assertEqual(await self.scalar('select failures from api_operation_metrics'),1)
        self.assertIsNotNone(await self.scalar('select last_success_at from api_operation_metrics'))

    async def test_growth_receipt_summary_includes_all_offer_tiers(self):
        source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        fn=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='growth_runtime_status')
        query=next(n.value for n in ast.walk(fn) if isinstance(n,ast.Constant) and isinstance(n.value,str) and 'as paid_orders' in n.value)
        async with self.pool.acquire() as conn:
            await conn.execute("insert into services(service_key,display_name) values('growth_pack','Growth')")
            tiers={'growth_pack_starter':49900,'growth_pack_premium':74900,'growth_pack_25':14900,'growth_upgrade_75':35000,'growth_strategy_addon':25000,'unrelated':90000}
            for key,amount in tiers.items():
                await conn.execute("insert into products(product_key,service_key,display_name,billing_type) values($1,'growth_pack',$1,'one_time')",key)
                await conn.execute("insert into orders(product_key,amount_cents,payment_status) values($1,$2,'paid')",key,amount)
            await conn.execute("insert into orders(product_key,amount_cents,payment_status) values('growth_pack_25',14900,'unpaid')")
            row=await conn.fetchrow(query)
        self.assertEqual(row['paid_orders'],5)
        self.assertEqual(row['revenue_cents'],199700)

    async def test_scoped_cohort_diagnostics_include_held_and_opted_out_without_mutation(self):
        source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        fn=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='growth_runtime_status')
        queries=[n.value for n in ast.walk(fn) if isinstance(n,ast.Constant) and isinstance(n.value,str)]
        targets=next(q for q in queries if 'target_id=any($1::text[])' in q)
        outreach=next(q for q in queries if 'entity_id=any($1::text[])' in q)
        async with self.pool.acquire() as conn:
            for ident,held,optout in [('held',True,False),('opted',True,True),('other',False,False)]:
                await conn.execute("insert into growth_outreach_targets(target_id,business_name,public_email,market,service_key) values($1,$1,$2,'Phoenix','commercial_cleaning')",ident,ident+'@example.test')
                await conn.execute("insert into outreach(entity_type,entity_id,campaign,wave,status,owner_review_required,opt_out) values('growth_customer',$1,'growth_sales','growth-cleaning-1','queued',$2,$3)",ident,held,optout)
            scope=['held','opted']
            statuses=await conn.fetch(targets,scope);details=await conn.fetch(outreach,scope)
            self.assertEqual(sum(r['records'] for r in statuses),2)
            self.assertEqual(sum(r['records'] for r in details),2)
            self.assertTrue(all(r['owner_review_required'] for r in details))
            self.assertEqual(sum(r['records'] for r in details if r['opt_out']),1)
            self.assertEqual(await conn.fetchval('select count(*) from outreach where owner_review_required=true'),2)
            self.assertEqual(await conn.fetchval('select count(*) from orders'),0)

    async def test_native_primary_research_is_durable_and_never_sends_or_accepts_providers(self):
        import official_research as module
        from unittest.mock import patch
        routes={}
        class App:
            state=SimpleNamespace(pool=self.pool)
            def post(self,path):
                def register(fn):routes[path]=fn;return fn
                return register
        async def search(*args):raise AssertionError('Direct source does not need a discovery search')
        with patch.dict(sys.modules,{'fastapi':SimpleNamespace(Header=lambda **kwargs:None)}):
            module.install(App(),lambda key:None,search,['Phoenix'],'test-secret')
        cid=uuid.uuid4()
        async with self.pool.acquire() as conn:
            await conn.execute("""insert into market_inventory_candidates(candidate_id,side,market,category_key,category_label,business_name,source_url,source_domain,public_phone,official_site,status,evidence)
              values($1,'buyer','Phoenix','dental','Dental practice','Desert Dental','https://desertdental.example/contact','desertdental.example','6025550111',true,'discovered','{}')""",cid)
        entity={'@type':'Dentist','name':'Desert Dental','url':'https://desertdental.example/contact','telephone':'6025550111','address':{'streetAddress':'100 Central Avenue','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
        document='<script type="application/ld+json">'+json.dumps(entity)+'</script>'
        with patch.object(module,'fetch_page',return_value=('https://desertdental.example/contact',document,'a'*64)) as fetch:
            outcomes=await asyncio.gather(routes['/api/process-official-research']('fixture'),routes['/api/process-official-research']('fixture'))
            self.assertEqual(sum(o['inspected'] for o in outcomes),1);self.assertEqual(fetch.call_count,1)
            self.assertEqual(sum(o['verified'] for o in outcomes),1)
        async with self.pool.acquire() as conn:
            native=dict(await conn.fetchrow("select * from market_inventory_candidates where evidence->>'researched_by'='vps_primary_site_v1'"))
            self.assertTrue(module.auto_evidence_valid(native,'test-secret'))
            self.assertEqual(await conn.fetchval("select count(*) from official_research_jobs where status='verified'"),1)
            self.assertEqual(await conn.fetchval('select count(*) from outreach'),0)
            self.assertEqual(await conn.fetchval('select count(*) from orders'),0)
            self.assertEqual(await conn.fetchval("select count(*) from vendors where status in ('pilot','active')"),0)
        self.assertEqual((await routes['/api/process-official-research']('fixture'))['inspected'],0)
        # A same-URL discovery becomes the verified row itself. It must renew
        # when due instead of being permanently excluded by its native tag.
        async with self.pool.acquire() as conn:
            await conn.execute("update market_inventory_candidates set last_verified_at=now()-interval '31 days' where candidate_id=$1",cid)
            await conn.execute("update official_research_jobs set next_attempt_at=now()-interval '1 minute' where candidate_id=$1",cid)
        with patch.object(module,'fetch_page',return_value=('https://desertdental.example/contact',document,'b'*64)) as fetch:
            outcome=await routes['/api/process-official-research']('fixture')
            self.assertEqual(outcome['inspected'],1);self.assertEqual(outcome['verified'],1);self.assertEqual(fetch.call_count,1)
        async with self.pool.acquire() as conn:
            native=dict(await conn.fetchrow("select * from market_inventory_candidates where candidate_id=$1",cid))
            self.assertTrue(module.auto_evidence_valid(native,'test-secret'))
            evidence=json.loads(native['evidence']) if isinstance(native['evidence'],str) else native['evidence']
            self.assertEqual(evidence['vps_verification']['content_sha256'],'b'*64)
            self.assertEqual(await conn.fetchval("select attempts from official_research_jobs where candidate_id=$1",cid),2)
        self.assertEqual((await routes['/api/process-official-research']('fixture'))['inspected'],0)


    async def seed_bound_offer(self):
        obj=await self.seed_growth()
        oid=uuid.uuid4()
        async with self.pool.acquire() as conn:
            await conn.execute("insert into products(product_key,service_key,display_name,billing_type) values('growth_pack_25','growth_pack','25 prospects','one_time')")
            await conn.execute("""insert into growth_purchase_offers(offer_id,sample_id,product_key,email,payload,payload_sha256,status,approved_at,expires_at)
              values($1,$2,'growth_pack_25','owner@example.com','{}','fixture','approved',now(),now()+interval '1 day')""",oid,uuid.UUID(int=1))
        # Evidence validation has independent qualification tests; this isolates
        # real transaction, payment binding, replay and task ownership behavior.
        async def evidence(conn,offer):return {}
        self.ns['growth_offer_payload_current']=evidence
        obj.update(metadata={'product_key':'growth_pack_25'},amount_total=14900,client_reference_id='growth_offer_'+str(oid))
        return obj,oid
    async def test_bound_offer_paid_once_and_no_generic_intake(self):
        obj,oid=await self.seed_bound_offer()
        await asyncio.gather(self.send('evt_offer_a','checkout.session.completed',obj),self.send('evt_offer_b','checkout.session.async_payment_succeeded',obj))
        self.assertEqual(await self.scalar("select count(*) from tasks where task_type='fulfill_growth_offer'"),1)
        self.assertEqual(await self.scalar('select count(*) from tasks'),1)
        self.assertEqual(await self.scalar('select status from growth_purchase_offers'),'paid')
        self.assertEqual(await self.scalar('select sum(amount_cents) from revenue_events'),14900)
        self.assertEqual(await self.scalar('select status from orders'),'ready_for_fulfillment')
    async def test_sample_engagement_is_not_an_inbound_email_reply(self):
        from ops_metrics import business_metrics
        async with self.pool.acquire() as conn:
            await conn.execute("""insert into outreach(entity_type,entity_id,campaign,wave,status,replied_at,reply_type)
              values('growth_customer','sample-only','growth_sales','growth-cleaning-1','sample_requested',now(),'sample_requested')""")
            metrics=await business_metrics(conn)
            self.assertEqual(metrics['outreach']['replies'],0)
            self.assertEqual(metrics['outreach']['sample_engagements'],1)
            await conn.execute("""insert into events(entity_type,entity_id,event_type,payload)
              values('growth_customer','sample-only','outreach_reply','{"classification":"positive"}'::jsonb)""")
            metrics=await business_metrics(conn)
            self.assertEqual(metrics['outreach']['replies'],1)
            self.assertEqual(metrics['outreach']['sample_engagements'],1)

    async def test_offer_invitations_exclude_outside_cohort_and_changed_recipient(self):
        obj,oid=await self.seed_bound_offer()
        async with self.pool.acquire() as conn:
            await conn.execute("update products set active=true,payment_link_url='https://buy.stripe.com/fixture' where product_key='growth_pack_25'")
            await conn.execute("insert into growth_outreach_targets(target_id,business_name,public_email,market,service_key) values('other-target','Other company','owner@example.com','Phoenix','commercial_cleaning')")
            await conn.execute("update growth_sample_requests set source_target_id='other-target'")
        source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='process_growth_offer_invitations');node.decorator_list=[]
        async def no_mail(*args,**kwargs):raise AssertionError('Unreleased recipient must never send')
        ns=dict(app=SimpleNamespace(state=SimpleNamespace(pool=self.pool)),Header=lambda **kw:None,require_admin=lambda key:None,
          OWNER_LAUNCH_HOLD=False,GROWTH_OUTREACH_ENABLED=True,GROWTH_OUTREACH_TARGET_IDS=('released-target',),ADMIN_KEY='synthetic-test-key',send_mail_once=no_mail)
        exec(compile(ast.Module(body=[node],type_ignores=[]),'production_offer_worker','exec'),ns)
        self.assertEqual((await ns['process_growth_offer_invitations']('fixture'))['sent'],0)
        ns['GROWTH_OUTREACH_TARGET_IDS']=('other-target',)
        async with self.pool.acquire() as conn:
            await conn.execute("update growth_outreach_targets set public_email='changed@example.com'")
        self.assertEqual((await ns['process_growth_offer_invitations']('fixture'))['sent'],0)
        self.assertIsNone(await self.scalar('select invited_at from growth_purchase_offers'))

    async def test_bound_offer_wrong_amount_quarantined(self):
        obj,oid=await self.seed_bound_offer();obj['amount_total']=100
        await self.send('evt_offer_bad','checkout.session.completed',obj)
        self.assertEqual(await self.scalar('select status from orders'),'payment_review')
        self.assertEqual(await self.scalar('select count(*) from tasks'),0)
        self.assertEqual(await self.scalar('select status from growth_purchase_offers'),'approved')
    async def test_second_checkout_for_same_offer_cannot_deliver_twice(self):
        obj,oid=await self.seed_bound_offer()
        await self.send('evt_offer_first','checkout.session.completed',obj)
        obj.update(id='cs_second',payment_intent='pi_second')
        await self.send('evt_offer_second','checkout.session.completed',obj)
        self.assertEqual(await self.scalar("select count(*) from tasks where task_type='fulfill_growth_offer'"),1)
        self.assertEqual(await self.scalar("select count(*) from orders where status='payment_review'"),1)
    async def test_refund_before_offer_checkout_never_fulfills(self):
        obj,oid=await self.seed_bound_offer()
        await self.send('evt_offer_refund','refund.created',self.refund())
        await self.send('evt_offer_after_refund','checkout.session.completed',obj)
        self.assertEqual(await self.scalar('select status from orders'),'payment_review')
        self.assertEqual(await self.scalar('select count(*) from tasks'),0)

    async def asyncTearDown(self):
        await self.pool.close()
        await self.admin.execute('drop schema '+self.schema+' cascade')
        await self.admin.close()
    async def send(self,event_id,kind,obj):
        payload=json.dumps(dict(id=event_id,type=kind,data=dict(object=obj))).encode()
        class Request:
            async def body(self): return payload
        return await self.ns['stripe_webhook'](Request(),None)
    def checkout(self):
        return dict(id='cs_fixture',payment_intent='pi_fixture',mode='payment',payment_status='paid',amount_total=49900,currency='usd',customer_details=dict(email='owner@example.com'))
    def refund(self,status='succeeded',rid='re_one',amount=1000):
        return dict(id=rid,payment_intent='pi_fixture',status=status,amount=amount,currency='usd')
    async def scalar(self,sql):
        async with self.pool.acquire() as conn: return await conn.fetchval(sql)
    async def seed_growth(self):
        async with self.pool.acquire() as conn:
            await conn.execute("insert into services(service_key,display_name) values('growth_pack','Growth')")
            await conn.execute("insert into products(product_key,service_key,display_name,billing_type) values('growth_pack_starter','growth_pack','Growth','one_time')")
            for i in (1,2):
                await conn.execute("""insert into growth_sample_requests(sample_id,submission_id,business_name,contact_name,email,provider_service_key,market,status)
                  values($1,$2,'Fixture','Owner','owner@example.com','pressure_washing',$3,'delivered')""",uuid.UUID(int=i),'ci-payment-sample-'+str(i),'Market '+str(i))
        obj=self.checkout(); obj['metadata']={'product_key':'growth_pack_starter'}
        return obj
    async def test_invalid_explicit_reference_cannot_select_other_territory(self):
        obj=await self.seed_growth(); obj['client_reference_id']='growth_'+uuid.UUID(int=99).hex
        await self.send('evt_checkout','checkout.session.completed',obj)
        self.assertEqual(await self.scalar('select status from orders'),'paid_needs_intake')
        self.assertIsNone(await self.scalar('select growth_sample_id from orders'))
        self.assertEqual(await self.scalar('select sum(amount_cents) from revenue_events'),49900)
    async def test_ambiguous_missing_reference_requires_intake(self):
        obj=await self.seed_growth()
        await self.send('evt_checkout','checkout.session.completed',obj)
        self.assertEqual(await self.scalar('select status from orders'),'paid_needs_intake')
        self.assertEqual(await self.scalar("select count(*) from growth_sample_requests where status='delivered'"),2)
    async def test_explicit_sample_without_saved_five_is_held(self):
        obj=await self.seed_growth(); obj['client_reference_id']='growth_'+uuid.UUID(int=1).hex
        await self.send('evt_checkout','checkout.session.completed',obj)
        self.assertIsNone(await self.scalar('select growth_sample_id from orders'))
        self.assertEqual(await self.scalar("select count(*) from exceptions where type='growth_payment_scope_review'"),1)
    async def test_concurrent_checkout_receipt_once(self):
        await asyncio.gather(self.send('evt_a','checkout.session.completed',self.checkout()),self.send('evt_b','checkout.session.async_payment_succeeded',self.checkout()))
        self.assertEqual(await self.scalar('select count(*) from orders'),1)
        self.assertEqual(await self.scalar('select sum(amount_cents) from revenue_events'),49900)
    async def test_pending_failed_then_success_and_retry(self):
        await self.send('evt_checkout','checkout.session.completed',self.checkout())
        async with self.pool.acquire() as conn:
            await conn.execute("insert into tasks(order_id,task_type,status) select order_id,'fulfill_growth_pack','queued' from orders")
        await self.send('evt_pending','refund.created',self.refund('pending'))
        self.assertEqual(await self.scalar('select sum(amount_cents) from revenue_events'),49900)
        self.assertEqual(await self.scalar('select status from tasks'),'blocked')
        await self.send('evt_failed','refund.failed',self.refund('failed'))
        self.assertEqual(await self.scalar('select sum(amount_cents) from revenue_events'),49900)
        await asyncio.gather(self.send('evt_success','refund.updated',self.refund()),self.send('evt_success_retry','refund.created',self.refund()))
        await self.send('evt_late_checkout','checkout.session.completed',self.checkout())
        self.assertEqual(await self.scalar('select sum(amount_cents) from revenue_events'),48900)
        self.assertEqual(await self.scalar('select payment_status from orders'),'partially_refunded')
    async def test_out_of_order_refund_blocks_checkout(self):
        await self.send('evt_refund','refund.created',self.refund())
        await self.send('evt_checkout','checkout.session.completed',self.checkout())
        self.assertEqual(await self.scalar('select payment_status from orders'),'refund_review')
        self.assertEqual(await self.scalar('select sum(amount_cents) from revenue_events'),48900)
    async def test_separate_partial_refunds_accumulate(self):
        await self.send('evt_checkout','checkout.session.completed',self.checkout())
        await asyncio.gather(self.send('evt_r1','refund.created',self.refund()),self.send('evt_r2','refund.updated',self.refund(rid='re_two',amount=2000)))
        self.assertEqual(await self.scalar('select sum(amount_cents) from revenue_events'),46900)

if __name__=='__main__': unittest.main()
