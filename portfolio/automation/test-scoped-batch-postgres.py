"""Real scoped registration SQL against isolated LIKE-public clones only.

CI: BMC_CI_SCOPED_BATCH=1 DATABASE_URL=... python test-scoped-batch-postgres.py
Also supports docker compose exec -T ops_api python < this-file.
No app import, network, SMTP, public data writes, or production operations.
"""
import asyncio
import copy
import json
import os
import sys
import unittest
import uuid
from pathlib import Path

for directory in (Path(__file__).resolve().parent/'api',Path('/app')):
    if directory.is_dir():sys.path.insert(0,str(directory))

DSN=os.environ.get('DATABASE_URL') if os.environ.get('BMC_CI_SCOPED_BATCH')=='1' else None
SECRET='synthetic-scoped-batch-ci-only'
WAVES={'commercial_cleaning':'ci-scoped-commercial-cleaning'}
TABLES=('growth_experiment_cells','growth_outreach_targets','outreach',
        'outreach_suppressions','growth_owner_previews')


def current_copy(target,step):
    assert step==1
    return ('commercial_cleaning','Synthetic subject','Synthetic reviewed 25-company offer copy')


@unittest.skipUnless(DSN,'Explicit BMC_CI_SCOPED_BATCH=1 and DATABASE_URL required')
class Postgres(unittest.IsolatedAsyncioTestCase):
    async def asyncSetUp(self):
        import asyncpg
        self.schema='ci_scoped_batch_'+uuid.uuid4().hex
        self.admin=await asyncpg.connect(DSN)
        self.pool=None
        try:
            await self.admin.execute('create schema '+self.schema)
            for table in TABLES:
                await self.admin.execute('create table '+self.schema+'.'+table+' (like public.'+table+' including all)')
            async def setup(conn):await conn.execute('set search_path to '+self.schema+',public')
            self.pool=await asyncpg.create_pool(DSN,min_size=1,max_size=2,setup=setup)
            await self.seed_legacy()
        except BaseException:
            if self.pool:await self.pool.close()
            await self.admin.execute('drop schema if exists '+self.schema+' cascade')
            await self.admin.close()
            raise

    async def asyncTearDown(self):
        if self.pool:await self.pool.close()
        await self.admin.execute('drop schema '+self.schema+' cascade')
        await self.admin.close()

    async def seed_legacy(self):
        """Nine synthetic original targets, sent history, and frozen reviewed five."""
        self.legacy=[]
        async with self.pool.acquire() as conn:
            for i in range(9):
                target='ci-original-nine-'+str(i);self.legacy.append(target)
                await conn.execute("""insert into growth_outreach_targets
                    (target_id,business_name,public_email,source_url,market,service_key,source_kind,source_data)
                    values($1,$2,$3,'https://legacy.example.test/','Phoenix','commercial_cleaning','legacy',$4::jsonb)""",
                    target,'Synthetic Legacy '+str(i),'legacy-'+str(i)+'@example.test',json.dumps({'original_nine':True,'frozen_marker':i}))
                await conn.execute("""insert into outreach(entity_type,entity_id,campaign,wave,channel,sequence_step,status,sent_at,owner_review_required)
                    values('growth_customer',$1,'growth_sales','ci-original-wave','email',2,'sent',now()-interval '1 day',false)""",target)
                await conn.execute("""insert into growth_owner_previews(target_id,version,selected_markets,candidate_ids,sample_payload,business_name,service_key)
                    values($1,'official-pdf-v2',array['Phoenix'],$2::uuid[],$3::jsonb,$4,'commercial_cleaning')""",
                    target,[uuid.uuid4() for _ in range(5)],json.dumps([{'business_name':'Frozen Synthetic '+str(j)} for j in range(5)]),'Synthetic Legacy '+str(i))

    async def seed_target(self):
        from official_research import parse_record
        from scoped_growth import prepare_profile,signature
        cid=uuid.uuid4();target='inventory:'+str(cid);name='Synthetic Cleaning '+cid.hex
        recipient={'candidate_id':str(cid),'business_name':name,'market':'Phoenix','side':'vendor',
                   'category_key':'commercial_cleaning','category_label':'Commercial cleaning'}
        entity={'@type':'CleaningService','name':name,'url':'https://fixture.example.test/'+cid.hex,
            'description':'Commercial cleaning and janitorial services for offices','telephone':'6025550100',
            'email':'fixture-'+cid.hex+'@example.test','address':{'streetAddress':'100 Main Street',
                'addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
        recipient.update(parse_record(recipient,entity['url'],'<script type="application/ld+json">'+json.dumps(entity)+'</script>','a'*64,SECRET))
        ids=[str(uuid.uuid4()) for _ in range(25)]
        rows=[{'business_name':'Synthetic Office '+str(i)} for i in range(25)]
        packet={'status':'held_packet_compiled','pack_count':25,'outreach_held':True,'offer_ready':False,
            'recipient':recipient,'binding':{'scope':{'source_url':recipient['source_url'],
                'category_keys':['insurance_professional'],'observed_sector_phrases':['office cleaning']},'candidate_ids':ids},
            'artifacts':{5:{'rows':rows[:5]},25:{'rows':rows}}}
        profile=prepare_profile(packet,target,SECRET);profile.pop('signature');profile['state']='approved';profile['signature']=signature(profile,SECRET)
        data={'preserved_metadata':'unchanged','scoped_offer':profile}
        async with self.pool.acquire() as conn:
            await conn.execute("""insert into growth_outreach_targets
                (target_id,business_name,public_email,public_phone,source_url,market,service_key,source_kind,status,source_data)
                values($1,$2,$3,$4,$5,'Phoenix','commercial_cleaning','scoped_native_held','contactable',$6::jsonb)""",
                target,name,recipient['public_email'],recipient['public_phone'],recipient['source_url'],json.dumps(data))
            await conn.execute("""insert into growth_owner_previews(target_id,version,selected_markets,candidate_ids,sample_payload,business_name,service_key)
                values($1,'official-pdf-v2',array['Phoenix'],$2::uuid[],$3::jsonb,$4,'commercial_cleaning')""",
                target,[uuid.UUID(x) for x in ids[:5]],json.dumps(rows[:5]),name)
        return target

    async def snapshots(self,conn):
        return {table:[r['value'] for r in await conn.fetch('select to_jsonb(t)::text value from '+table+' t order by to_jsonb(t)::text')]
                for table in TABLES}

    async def invoke(self,conn,target,hold=lambda:True):
        from scoped_batch import register_target
        # Mirrors intended controller transaction + target lock; never commit a
        # partially updated dispatch token when the second hold check changes.
        async with conn.transaction():
            row=dict(await conn.fetchrow('select * from growth_outreach_targets where target_id=$1 for update',target))
            return await register_target(conn,row,SECRET,'ci-request-'+uuid.uuid4().hex,WAVES,current_copy,hold)

    async def test_register_correct_wave_token_queued_once_and_repeat_preserves_everything(self):
        from scoped_dispatch import dispatch_for_target
        target=await self.seed_target()
        async with self.pool.acquire() as conn:
            before=await self.snapshots(conn)
            result=await self.invoke(conn,target)
            self.assertEqual(result,{'registered':True,'already_registered':False,'sent':0})
            row=dict(await conn.fetchrow('select * from growth_outreach_targets where target_id=$1',target))
            self.assertEqual(dispatch_for_target(row,SECRET,WAVES),WAVES['commercial_cleaning'])
            data=json.loads(row['source_data']) if isinstance(row['source_data'],str) else row['source_data']
            self.assertEqual(data['preserved_metadata'],'unchanged')
            self.assertEqual(data['scoped_dispatch']['profile_signature'],data['scoped_offer']['signature'])
            outreach=await conn.fetchrow('select * from outreach where entity_id=$1',target)
            self.assertEqual(outreach['wave'],WAVES['commercial_cleaning']);self.assertEqual(outreach['status'],'queued')
            self.assertEqual(outreach['sequence_step'],0);self.assertFalse(outreach['owner_review_required']);self.assertIsNone(outreach['sent_at'])
            self.assertEqual(outreach['target_market'],'Phoenix');self.assertEqual(outreach['target_service_key'],'commercial_cleaning')
            after=await self.snapshots(conn)
            self.assertEqual(after['growth_owner_previews'],before['growth_owner_previews'])
            for old in before['outreach']:self.assertIn(old,after['outreach'])
            prior_target=next(json.loads(v) for v in before['growth_outreach_targets'] if json.loads(v)['target_id']==target)
            self.assertEqual(data['scoped_offer'],prior_target['source_data']['scoped_offer'])
            legacy_after=[v for v in after['growth_outreach_targets'] if 'ci-original-nine-' in v]
            self.assertEqual(legacy_after,[v for v in before['growth_outreach_targets'] if 'ci-original-nine-' in v])
            again=await self.invoke(conn,target)
            self.assertEqual(again,{'registered':False,'already_registered':True,'sent':0})
            self.assertEqual(await self.snapshots(conn),after)
            # A previously sent authorized row must not be requeued or reset.
            await conn.execute("update outreach set status='sent',sequence_step=3,sent_at=now(),next_followup_at=now()+interval '2 days' where entity_id=$1",target)
            sent=await self.snapshots(conn)
            self.assertTrue((await self.invoke(conn,target))['already_registered'])
            self.assertEqual(await self.snapshots(conn),sent)
            self.assertEqual(await conn.fetchval('select count(*) from outreach where entity_id=$1',target),1)

    async def test_suppressed_and_historical_candidates_have_no_writes(self):
        target=await self.seed_target()
        async with self.pool.acquire() as conn:
            email=await conn.fetchval('select public_email from growth_outreach_targets where target_id=$1',target)
            await conn.execute("insert into outreach_suppressions(email,reason,source) values($1,'synthetic suppression','ci')",email.upper())
            before=await self.snapshots(conn)
            with self.assertRaisesRegex(ValueError,'contact_suppressed'):await self.invoke(conn,target)
            self.assertEqual(await self.snapshots(conn),before)
            await conn.execute('delete from outreach_suppressions where email=$1',email.upper())
            await conn.execute("""insert into outreach(entity_type,entity_id,campaign,wave,status,sent_at)
                values('growth_customer',$1,'growth_sales','ci-unrelated-history','sent',now()-interval '2 days')""",target)
            before=await self.snapshots(conn)
            with self.assertRaisesRegex(ValueError,'historical_contact'):await self.invoke(conn,target)
            self.assertEqual(await self.snapshots(conn),before)

    async def test_hold_flips_after_insert_rolls_back_cell_token_and_outreach(self):
        target=await self.seed_target();calls=[]
        def hold():calls.append(1);return len(calls)==1
        async with self.pool.acquire() as conn:
            before=await self.snapshots(conn)
            with self.assertRaisesRegex(ValueError,'preparation_hold_changed'):await self.invoke(conn,target,hold)
            self.assertEqual(len(calls),2)
            self.assertEqual(await self.snapshots(conn),before)

    async def test_false_initial_hold_writes_nothing(self):
        target=await self.seed_target()
        async with self.pool.acquire() as conn:
            before=await self.snapshots(conn)
            with self.assertRaisesRegex(ValueError,'preparation_hold_required'):await self.invoke(conn,target,lambda:False)
            self.assertEqual(await self.snapshots(conn),before)


if __name__=='__main__':unittest.main()
