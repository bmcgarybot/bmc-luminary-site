"""Protected target no-op must not stage outreach; AST and actual PostgreSQL CI.

PG uses isolated clones of the migrated table contract, no public table writes.
Run in API container with BMC_CI_SCOPED_STAGE=1 and DATABASE_URL.
"""
import ast,asyncio,copy,json,os,re,sys,unittest,uuid
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'api'))
SOURCE=Path(__file__).parent/'api/app.py'
if not SOURCE.exists():SOURCE=Path(__file__).parent/'app.py'

def loader():
    tree=ast.parse(SOURCE.read_text());node=next(n for n in tree.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='stage_growth_service')
    async def qualified(*args,**kwargs):return [{}]*125
    ns=dict(HTTPException=RuntimeError,GROWTH_SERVICE_LABELS={'commercial_cleaning':'Cleaning'},
        GROWTH_WAVES={'commercial_cleaning':'growth-cleaning-1'},GROWTH_SAMPLE_MIN_RESERVE=125,
        growth_qualified_candidates=qualified,contractor_priority=lambda *args:0,ADMIN_KEY='synthetic',
        clean=lambda value:str(value or '').strip(),OWNER_LAUNCH_HOLD=True,OUTREACH_ENABLED=False,
        BUYER_OUTREACH_ENABLED=False,GROWTH_OUTREACH_ENABLED=False,json=json)
    exec(compile(ast.Module(body=[node],type_ignores=[]),'actual_protected_scoped_staging','exec'),ns)
    return ns['stage_growth_service']

class Behavior(unittest.IsolatedAsyncioTestCase):
    async def invoke(self,protected):
        target='inventory:'+str(uuid.uuid4());calls=[]
        row=dict(target_id=target,business_name='Synthetic Cleaning',public_email='fixture@example.test',market='Phoenix',
            source_url='https://fixture.example/',source_kind='deep_inventory',fit_score=80,source_data={})
        class Conn:
            async def fetch(self,sql,*args):return [] if 'from vendors v' in sql else [row]
            async def execute(self,sql,*args):
                assert 'insert into growth_outreach_targets' not in sql,'Target upsert must inspect RETURNING'
                calls.append(sql);return 'UPDATE 1'
            async def fetchval(self,sql,*args):
                calls.append(sql)
                if 'insert into growth_outreach_targets' in sql:
                    assert "where not (growth_outreach_targets.source_data ? 'scoped_offer') returning target_id" in sql
                    return None if protected else target
                assert 'insert into outreach' in sql;return uuid.uuid4()
        return await loader()(Conn(),'commercial_cleaning'),calls
    async def test_protected_conflict_noop_skips_outreach_review_updates_and_count(self):
        result,calls=await self.invoke(True)
        self.assertEqual(result['staged'],0);self.assertEqual(result['skipped_protected_scoped_target'],1)
        self.assertFalse(any('insert into outreach(' in sql or 'update outreach ' in sql for sql in calls))
    async def test_legacy_target_returning_id_still_stages_held_outreach(self):
        result,calls=await self.invoke(False)
        self.assertEqual(result['staged'],1);self.assertEqual(result['skipped_protected_scoped_target'],0)
        self.assertEqual(sum('insert into outreach(' in sql for sql in calls),1)
        self.assertEqual(sum('update outreach set owner_review_required=true' in sql for sql in calls),1)

DSN=os.environ.get('DATABASE_URL') if os.environ.get('BMC_CI_SCOPED_STAGE')=='1' else None
@unittest.skipUnless(DSN,'Explicit CI BMC_CI_SCOPED_STAGE=1 and DATABASE_URL required for real PostgreSQL')
class Postgres(unittest.IsolatedAsyncioTestCase):
    async def asyncSetUp(self):
        import asyncpg
        self.schema='ci_protected_stage_'+uuid.uuid4().hex;self.admin=await asyncpg.connect(DSN)
        await self.admin.execute('create schema '+self.schema)
        # Exact migrated types/defaults/checks/indexes; isolate source selection.
        for table in ('vendors','vendor_services','vendor_markets','market_inventory_candidates','growth_experiment_cells',
                      'growth_outreach_targets','growth_owner_previews','outreach'):
            await self.admin.execute('create table '+self.schema+'.'+table+' (like public.'+table+' including all)')
        async def setup(conn):await conn.execute('set search_path to '+self.schema+',public')
        self.pool=await asyncpg.create_pool(DSN,min_size=1,max_size=2,setup=setup)
    async def asyncTearDown(self):
        await self.pool.close();await self.admin.execute('drop schema '+self.schema+' cascade');await self.admin.close()
    async def seed(self,protected):
        from official_research import parse_record
        from scoped_growth import prepare_profile
        cid=uuid.uuid4();target='inventory:'+str(cid);name='Synthetic Commercial Cleaning '+cid.hex
        recipient=dict(candidate_id=str(cid),side='vendor',market='Phoenix',category_key='commercial_cleaning',category_label='Commercial cleaning',business_name=name)
        entity={'@type':'CleaningService','name':name,'url':'https://fixture.example/'+cid.hex,'telephone':'6025550100','email':'fixture-'+cid.hex+'@example.test',
            'description':'Commercial cleaning for offices','address':{'streetAddress':'100 Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
        recipient.update(parse_record(recipient,entity['url'],'<script type="application/ld+json">'+json.dumps(entity)+'</script>','a'*64,'synthetic'))
        ids=[str(uuid.uuid4()) for _ in range(25)];rows=[{'business_name':'Synthetic Office '+str(i)} for i in range(25)]
        packet=dict(status='held_packet_compiled',pack_count=25,outreach_held=True,offer_ready=False,recipient=recipient,
            binding={'scope':{'source_url':recipient['source_url'],'category_keys':['insurance_professional'],'observed_sector_phrases':['office cleaning']},'candidate_ids':ids},
            artifacts={5:{'rows':rows[:5]},25:{'rows':rows}})
        data={'prior_metadata':'retained'}
        if protected:data['scoped_offer']=prepare_profile(packet,target,'synthetic')
        async with self.pool.acquire() as conn:
            await conn.execute("""insert into market_inventory_candidates(candidate_id,side,market,category_key,category_label,business_name,
                source_url,source_domain,public_email,public_phone,official_site,source_tier,verification_status,evidence,status)
                values($1,'vendor','Phoenix','commercial_cleaning','Commercial cleaning',$2,$3,'fixture.example',$4,'6025550100',true,'direct','direct_evidence',$5::jsonb,'discovered')""",
                cid,name,recipient['source_url'],recipient['public_email'],json.dumps(recipient['evidence']))
            await conn.execute("""insert into growth_outreach_targets(target_id,business_name,public_email,public_phone,source_url,market,service_key,source_kind,source_data)
                values($1,$2,$3,'6025550100',$4,'Phoenix','commercial_cleaning','scoped_native_held',$5::jsonb)""",
                target,name,recipient['public_email'],recipient['source_url'],json.dumps(data))
            await conn.execute("""insert into growth_owner_previews(target_id,version,selected_markets,candidate_ids,sample_payload,business_name,service_key)
                values($1,'official-pdf-v2',array['Phoenix'],$2::uuid[],$3::jsonb,$4,'commercial_cleaning')""",target,[uuid.UUID(x) for x in ids[:5]],json.dumps(rows[:5]),name)
            await conn.execute("""insert into outreach(entity_type,entity_id,campaign,wave,channel,sequence_step,status,sent_at,owner_review_required)
                values('growth_customer','synthetic-history','growth_sales','unrelated-historic','email',1,'sent',now(),false)""")
        return target
    async def snapshots(self,conn):
        return {table:[row['value'] for row in await conn.fetch('select to_jsonb(t)::text value from '+table+' t order by to_jsonb(t)::text')]
                for table in ('growth_outreach_targets','growth_owner_previews','outreach')}
    async def test_actual_scoped_conflict_refuses_outreach_and_preserves_signed_profile_five_history(self):
        target=await self.seed(True)
        async with self.pool.acquire() as conn:
            before=await self.snapshots(conn)
            async with conn.transaction():result=await loader()(conn,'commercial_cleaning')
            self.assertEqual(result['staged'],0);self.assertEqual(result['skipped_protected_scoped_target'],1)
            self.assertEqual(await self.snapshots(conn),before)
            self.assertEqual(await conn.fetchval('select count(*) from outreach where entity_id=$1',target),0)
    async def test_actual_legacy_target_still_gets_one_owner_held_queued_row(self):
        target=await self.seed(False)
        async with self.pool.acquire() as conn:
            frozen=(await self.snapshots(conn))['growth_owner_previews']
            async with conn.transaction():result=await loader()(conn,'commercial_cleaning')
            self.assertEqual(result['staged'],1);self.assertEqual(result['skipped_protected_scoped_target'],0)
            record=await conn.fetchrow('select status,owner_review_required,sent_at from outreach where entity_id=$1',target)
            self.assertEqual(record['status'],'queued');self.assertTrue(record['owner_review_required']);self.assertIsNone(record['sent_at'])
            self.assertEqual((await self.snapshots(conn))['growth_owner_previews'],frozen)
            async with conn.transaction():again=await loader()(conn,'commercial_cleaning')
            self.assertEqual(again['staged'],0)
            self.assertEqual(await conn.fetchval('select count(*) from outreach where entity_id=$1',target),1)
            self.assertEqual(await conn.fetchval("select count(*) from outreach where entity_id='synthetic-history' and status='sent'"),1)

if __name__=='__main__':unittest.main()
