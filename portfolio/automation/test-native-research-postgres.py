"""Disposable CI PostgreSQL only: real native/contact SQL, history gates, rollback."""
import asyncio,hashlib,json,os,sys,uuid
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))

async def main():
    if not os.getenv('DATABASE_URL'):
        print('SKIP: no CI DATABASE_URL');return
    if os.getenv('BMC_CI_NATIVE_RESEARCH')!='1':raise RuntimeError('Explicit disposable CI guard required')
    import asyncpg
    import rolling_vendor_research as rolling
    import contact_enrichment_api as contact
    import official_research as research
    secret='synthetic-ci-native-secret';tag=uuid.uuid4().hex
    pool=await asyncpg.create_pool(os.environ['DATABASE_URL'],min_size=1,max_size=3)
    ids=[];emails=[]
    async def snapshot(conn):
        result={}
        for table in ('orders','outreach','growth_owner_previews','growth_sample_requests','growth_sample_prospects',
                      'growth_order_prospects','growth_purchase_offers','growth_prospect_exposures','vendors','buyers'):
            result[table]=[r['value'] for r in await conn.fetch('select to_jsonb(t)::text value from '+table+' t order by to_jsonb(t)::text')]
        return result
    async def saved(cid):
        async with pool.acquire() as conn:return dict(await conn.fetchrow('select * from market_inventory_candidates where candidate_id=$1',cid))
    async def raw(cid):
        async with pool.acquire() as conn:return await conn.fetchval('select to_jsonb(t)::text from market_inventory_candidates t where candidate_id=$1',cid)
    def receipt(document,url):
        data=document.encode();return research.FetchedPageReceipt(url,url,data,hashlib.sha256(data).hexdigest(),datetime.now(timezone.utc).isoformat(),200,'text/html',())
    async def fixture(number,native=False):
        name='CI Native Café & '+tag+' '+str(number);url='https://native-ci.example/'+tag+'/'+str(number)+'/'
        email='fixture-'+tag+'-'+str(number)+'@native-ci.example';emails.append(email)
        entity={'@type':'CleaningService','name':name,'url':url,'description':'Commercial cleaning and janitorial services',
                'telephone':'6025550123','address':{'streetAddress':'123 Example Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85001'}}
        document='<script type="application/ld+json">'+json.dumps(entity)+'</script>'
        primary=receipt(document,url)
        async with pool.acquire() as conn:
            cid=await conn.fetchval("""insert into market_inventory_candidates(side,market,category_key,category_label,business_name,
                source_url,source_domain,public_phone,official_site,evidence,status) values('vendor','Phoenix','commercial_cleaning',
                'Commercial cleaning',$1,$2,'native-ci.example','6025550123',true,$3::jsonb,'discovered') returning candidate_id""",
                name,url,json.dumps({'researched_by':'assistant_manual_census','artifact_files':['synthetic-'+tag+'.json'],'retained':'original'}))
            ids.append(cid)
        original=await saved(cid)
        base=research.parse_record(original,url,document,primary.content_sha256,secret)
        if native:
            async with pool.acquire() as conn:
                await conn.execute("""update market_inventory_candidates set snippet=$2,public_email=$3,public_phone=$4,
                    evidence=$5::jsonb,source_tier='direct',verification_status='direct_evidence' where candidate_id=$1""",
                    cid,base['snippet'],base['public_email'],base['public_phone'],json.dumps(base['evidence']))
            original=await saved(cid)
        entity['email']=email;full=receipt('<script type="application/ld+json">'+json.dumps(entity)+'</script>',url)
        parsed=research.parse_record(original,url,full.document,full.content_sha256,secret)
        return original,parsed,primary,email
    try:
        async with pool.acquire() as conn:before=await snapshot(conn)
        original,parsed,primary,email=await fixture(1)
        # Every UNION/EXISTS branch is parsed and typechecked against actual schema.
        async with pool.acquire() as conn:
            await rolling.no_history(conn,original,email)
            await contact._no_history(conn,original,email)
            args=(str(original['candidate_id']),[str(original['candidate_id']),'inventory:'+str(original['candidate_id'])],
                  [email],original['business_name'],original['market'],['email:'+email])
            clean=dict(await conn.fetchrow(rolling.HISTORY_DIAGNOSTIC_SQL,*args))
            assert set(clean)==set(rolling.HISTORY_BRANCHES)
            assert all(type(value) is bool and value is False for value in clean.values()),clean
            assert await conn.fetchval(rolling.HISTORY_SQL,*args) is False
        with patch.object(rolling,'seal_result',return_value={'synthetic_ciphertext':True}):
            result=await rolling.save_transition(pool,original,parsed,'commercial_cleaning',secret,frozenset(),'ci-native-'+tag,'census_source_verification')
        assert result['native_record_written'] and result['candidate_id']==str(original['candidate_id'])
        row=await saved(original['candidate_id']);assert research.auto_evidence_valid(row,secret)
        evidence=json.loads(row['evidence']) if isinstance(row['evidence'],str) else row['evidence']
        assert evidence['census_original_archive']['record']['candidate_id']==str(original['candidate_id'])
        assert evidence['retained']=='original' and evidence['researched_by'] in research.NATIVE_VERSIONS
        async with pool.acquire() as conn:
            assert await conn.fetchval("select count(*) from events where entity_id=$1 and event_type='native_source_verified'",str(original['candidate_id']))==1
        # Failure after UPDATE must roll back native row and archive, with no audit.
        original2,parsed2,_,email2=await fixture(2);before2=await raw(original2['candidate_id']);calls=0
        real=rolling.auto_evidence_valid
        def reject_saved(row,key):
            nonlocal calls
            calls+=1;return False if calls==3 else real(row,key)
        with patch.object(rolling,'seal_result',return_value={}),patch.object(rolling,'auto_evidence_valid',side_effect=reject_saved):
            try:await rolling.save_transition(pool,original2,parsed2,'commercial_cleaning',secret,frozenset(),'ci-rollback-'+tag,'census_source_verification')
            except rolling.Held as exc:assert str(exc)=='persisted_native_proof_invalid'
            else:raise AssertionError('post-write failure accepted')
        assert calls==3 and await raw(original2['candidate_id'])==before2
        # Current suppression blocks both modules and leaves the candidate untouched.
        async with pool.acquire() as conn:
            await conn.execute("insert into outreach_suppressions(email,reason,source) values($1,'synthetic CI','ci-native')",email2)
            args=(str(original2['candidate_id']),[str(original2['candidate_id']),'inventory:'+str(original2['candidate_id'])],
                  [email2],original2['business_name'],original2['market'],['email:'+email2])
            held_checks=dict(await conn.fetchrow(rolling.HISTORY_DIAGNOSTIC_SQL,*args))
            assert set(held_checks)==set(rolling.HISTORY_BRANCHES)
            assert all(type(value) is bool for value in held_checks.values()),held_checks
            assert [key for key,value in held_checks.items() if value]==['suppression'],held_checks
            assert await conn.fetchval(rolling.HISTORY_SQL,*args) is True
            history_before=await snapshot(conn)
            for fn in (rolling.no_history,contact._no_history):
                try:await fn(conn,original2,email2)
                except ValueError as exc:
                    if fn is rolling.no_history:
                        assert str(exc)=='existing_customer_target_or_history'
                        assert exc.diagnostics=={'history_checks':held_checks},exc.diagnostics
                else:raise AssertionError('suppressed history accepted')
            assert await snapshot(conn)==history_before,'History diagnostic query mutated customer/history rows'
            assert await conn.fetchval('select count(*) from outreach_suppressions where email=$1',email2)==1
        assert await raw(original2['candidate_id'])==before2
        # Actual enrichment SQL writes only separate attestation/email on the same UUID.
        native,_,p,mail=await fixture(3,True);old_evidence=json.loads(native['evidence']) if isinstance(native['evidence'],str) else native['evidence']
        q=receipt('<section><h1>'+native['business_name']+'</h1><p>602-555-0123</p><address>123 Example Street, Phoenix, AZ 85001</address><a href="mailto:'+mail+'">Email</a></section>',native['source_url']+'contact')
        with patch.object(contact,'fetch_page_receipt',side_effect=lambda url:p if url==p.final_url else q),patch.object(contact,'_seal',side_effect=lambda payload,*args:payload):
            result=await contact.enrich(pool,native['candidate_id'],q.final_url,mail,secret,frozenset(),'ci-contact-'+tag)
        enriched=await saved(native['candidate_id']);assert enriched['public_email']==mail and research.auto_evidence_valid(enriched,secret)
        new_evidence=json.loads(enriched['evidence']) if isinstance(enriched['evidence'],str) else enriched['evidence']
        assert new_evidence['vps_verification']==old_evidence['vps_verification'] and new_evidence['vps_verification']['public_email']==''
        assert result['native_record_written']
        # Contact's persisted-proof failure also rolls back its email/token write.
        native4,_,p4,mail4=await fixture(4,True);before4=await raw(native4['candidate_id'])
        q4=receipt(q.document.replace(native['business_name'],native4['business_name']).replace(mail,mail4),native4['source_url']+'contact')
        count4=0;real_contact=contact.auto_evidence_valid
        def reject_contact_saved(row,key):
            nonlocal count4
            count4+=1;return False if count4==4 else real_contact(row,key)
        with patch.object(contact,'fetch_page_receipt',side_effect=lambda url:p4 if url==p4.final_url else q4),patch.object(contact,'_seal',return_value={}),patch.object(contact,'auto_evidence_valid',side_effect=reject_contact_saved):
            try:await contact.enrich(pool,native4['candidate_id'],q4.final_url,mail4,secret,frozenset(),'ci-contact-rollback-'+tag)
            except contact.Held as exc:assert str(exc)=='updated_native_proof_invalid'
            else:raise AssertionError('contact post-write failure accepted')
        assert count4==4 and await raw(native4['candidate_id'])==before4
        async with pool.acquire() as conn:
            assert await snapshot(conn)==before,'Customer/history tables changed'
            assert await conn.fetchval('select count(*) from market_inventory_candidates where candidate_id=any($1::uuid[])',ids)==4
        print('PASS actual PostgreSQL native transition/contact SQL, history, same UUID, rollback, untouched customer tables')
    finally:
        async with pool.acquire() as conn:
            await conn.execute("delete from events where entity_type='inventory_candidate' and entity_id=any($1::text[])",[str(x) for x in ids])
            await conn.execute('delete from outreach_suppressions where email=any($1::text[])',emails)
            await conn.execute('delete from market_inventory_candidates where candidate_id=any($1::uuid[])',ids)
        await pool.close()

if __name__=='__main__':asyncio.run(main())
