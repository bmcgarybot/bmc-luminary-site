"""Disposable CI PostgreSQL: actual historical authorization + scoped registration.

Exact migrated table clones, one outer rollback-only fixture transaction. No SMTP,
orders/provider writes, public data mutation, or durable historical fixture rows.
"""
import asyncio,copy,json,os,sys,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
for directory in (Path(__file__).resolve().parent/'api',Path('/app')):
    if directory.is_dir():sys.path.insert(0,str(directory))

TABLES=('growth_experiment_cells','growth_outreach_targets','outreach','events',
 'outreach_suppressions','vendors','buyers','lead_matches','growth_sample_requests',
 'growth_sample_prospects','growth_order_prospects','growth_prospect_exposures',
 'orders','growth_purchase_offers','growth_email_verifications','mail_delivery_attempts',
 'growth_owner_previews')
SECRET='synthetic-ci-reentry-secret'
WAVES={'commercial_cleaning':'ci-new-reentry-wave'}


def message(target,step):
    assert step==1
    return ('commercial_cleaning','Synthetic reviewed subject','Synthetic text','Synthetic HTML','https://fixture.example.test/claim')


async def main():
    if not os.getenv('DATABASE_URL'):
        print('SKIP: no disposable CI DATABASE_URL');return
    if os.getenv('BMC_CI_CAMPAIGN_REENTRY')!='1':raise RuntimeError('Explicit disposable CI BMC_CI_CAMPAIGN_REENTRY=1 required')
    import asyncpg
    import campaign_reentry as reentry
    from scoped_batch import register_target
    from scoped_growth import prepare_profile,signature
    from official_research import parse_record
    conn=await asyncpg.connect(os.environ['DATABASE_URL']);schema='ci_campaign_reentry_'+uuid.uuid4().hex
    outer=None
    async def public_counts():return {t:await conn.fetchval('select count(*) from public.'+t) for t in TABLES}
    async def target(tid):return dict(await conn.fetchrow('select * from growth_outreach_targets where target_id=$1 for update',tid))
    async def rows_json(table,where='',*args):
        return [r['value'] for r in await conn.fetch('select to_jsonb(t)::text value from '+table+' t '+where+' order by to_jsonb(t)::text',*args)]
    try:
        before_public=await public_counts()
        await conn.execute('create schema '+schema)
        for table in TABLES:await conn.execute('create table '+schema+'.'+table+' (like public.'+table+' including all)')
        # LIKE copies serial defaults verbatim; pin cloned serial columns to
        # local sequences so even nontransactional sequence counters stay private.
        for table,column in (('events','event_id'),('growth_prospect_exposures','exposure_id')):
            sequence=schema+'.'+table+'_'+column+'_seq'
            await conn.execute('create sequence '+sequence)
            await conn.execute("alter table "+schema+'.'+table+' alter column '+column+" set default nextval('"+sequence+"'::regclass)")
        await conn.execute('set search_path to '+schema+',public')
        outer=conn.transaction();await outer.start()
        targets=[];old_ids=[];profiles={};tag=uuid.uuid4().hex
        for i in range(7):
            cid=uuid.uuid4();tid='inventory:'+str(cid);name='Synthetic Reentry '+tag+' '+str(i)
            url='https://fixture.example.test/'+cid.hex;email='reentry-'+cid.hex+'@example.test';targets.append(tid)
            recipient={'candidate_id':str(cid),'side':'vendor','market':'Phoenix','category_key':'commercial_cleaning',
                'category_label':'Commercial cleaning','business_name':name}
            entity={'@type':'CleaningService','name':name,'url':url,'description':'Commercial cleaning and janitorial office cleaning',
                'telephone':'6025550100','email':email,'address':{'streetAddress':'100 Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
            recipient.update(parse_record(recipient,url,'<script type="application/ld+json">'+json.dumps(entity)+'</script>','a'*64,SECRET))
            ids=[str(uuid.uuid4()) for _ in range(25)];rows=[{'business_name':'Synthetic Office '+str(j)} for j in range(25)]
            packet={'status':'held_packet_compiled','pack_count':25,'outreach_held':True,'offer_ready':False,'recipient':recipient,
                'binding':{'scope':{'source_url':url,'category_keys':['insurance_professional'],'observed_sector_phrases':['office cleaning']},'candidate_ids':ids},
                'artifacts':{5:{'rows':rows[:5]},25:{'rows':rows}}}
            profile=prepare_profile(packet,tid,SECRET);profile.pop('signature');profile['state']='approved';profile['signature']=signature(profile,SECRET);profiles[tid]=profile
            await conn.execute("""insert into growth_outreach_targets(target_id,business_name,public_email,public_phone,source_url,
              market,service_key,status,source_kind,source_data) values($1,$2,$3,'6025550100',$4,'Phoenix','commercial_cleaning',
              'contacted','synthetic-historical',$5::jsonb)""",tid,name,email,url,json.dumps({'frozen_old_metadata':i}))
            oid=uuid.uuid4();old_ids.append(oid)
            await conn.execute("""insert into outreach(outreach_id,entity_type,entity_id,campaign,wave,channel,sequence_step,status,
              sent_at,opt_out,owner_review_required,historical_review_recorded_at,subject,body)
              values($1,'growth_customer',$2,'growth_sales','ci-old-accidental-wave','email',1,'sent',$3,false,true,$4,
              'Synthetic original subject','Synthetic original body')""",oid,tid,reentry.CUTOFF-timedelta(days=1),reentry.CUTOFF+timedelta(days=1))
            await conn.execute("""insert into mail_delivery_attempts(delivery_key,payload_sha256,status)
              values($1,$2,'submitted')""",'growth-outreach:'+str(oid)+':1','a'*64)
            await conn.execute("""insert into growth_owner_previews(target_id,version,selected_markets,candidate_ids,sample_payload,business_name,service_key)
              values($1,'ci-frozen-five',array['Phoenix'],$2::uuid[],$3::jsonb,$4,'commercial_cleaning')""",tid,[uuid.UUID(x) for x in ids[:5]],json.dumps(rows[:5]),name)
        # Owner explicitly permits one NEW campaign despite old uncertain SMTP.
        # Keep that old claim permanently unchanged throughout this test.
        await conn.execute("update mail_delivery_attempts set status='uncertain' where delivery_key=$1",'growth-outreach:'+str(old_ids[0])+':1')
        # An unsent seed vendor queue is not contact history; preserve it verbatim.
        seed_vendor='ci-inert-vendor-'+tag;seed_queue=uuid.uuid4()
        email0=await conn.fetchval('select public_email from growth_outreach_targets where target_id=$1',targets[0])
        await conn.execute("insert into vendors(vendor_id,business_name,public_email,status) values($1,'Synthetic Seed',$2,'prospect')",seed_vendor,email0)
        await conn.execute("insert into outreach(outreach_id,entity_type,entity_id,campaign,status,sent_at,opt_out) values($1,'vendor',$2,'vendor_recruitment','queued',null,false)",seed_queue,seed_vendor)
        await conn.execute('update growth_outreach_targets set source_data=$2::jsonb where target_id=$1',targets[0],json.dumps(['legacy','metadata']))
        inert_before=await rows_json('outreach','where outreach_id=$1',seed_queue)
        # A later plan sharing an old contacted target is still distinct from
        # its old sent UUID. Explicit historical grant may supersede this plan.
        historical_plan=uuid.uuid4()
        await conn.execute("""insert into outreach(outreach_id,entity_type,entity_id,campaign,wave,status,sequence_step,
          sent_at,opt_out,owner_review_required,created_at,subject,body) values($1,'growth_customer',$2,'growth_sales',
          'ci-inert-old-plan','queued',1,null,false,true,$3,'Historical planned subject','Historical planned body')""",
          historical_plan,targets[0],reentry.CUTOFF-timedelta(days=2))
        first_email=await conn.fetchval('select public_email from growth_outreach_targets where target_id=$1',targets[0])
        await conn.execute("""insert into events(occurred_at,entity_type,entity_id,event_type,payload)
          values($1,'growth_customer',$2,'outreach_sent',$3::jsonb)""",reentry.CUTOFF-timedelta(days=1),targets[0],
          json.dumps({'campaign':'growth_sales','email':first_email,'step':1}))
        assert await reentry.members(conn)==set(targets)
        sent_before=await rows_json('outreach','where outreach_id=any($1::uuid[])',old_ids)
        claims_before=await rows_json('mail_delivery_attempts');five_before=await rows_json('growth_owner_previews')
        async with conn.transaction():authorized=await reentry.authorize(conn,targets[0],SECRET,'ci-reentry-authorize-'+tag)
        assert json.loads((await target(targets[0]))['source_data'])['legacy_source_data']==['legacy','metadata']
        assert await rows_json('outreach','where outreach_id=$1',seed_queue)==inert_before
        token=authorized['token'];unsigned=dict(token);unsigned.pop('signature')
        assert token['signature']==reentry.mac(unsigned,SECRET)
        assert token['old_outreach_ids']==[str(old_ids[0])]
        assert reentry.when(token['expires_at'])-reentry.when(token['authorized_at'])==timedelta(days=14)
        assert await rows_json('outreach','where outreach_id=any($1::uuid[])',old_ids)==sent_before
        # Actual approved profile + actual registration appends a new UUID and consumes once.
        current=await target(targets[0]);data=json.loads(current['source_data']);data['scoped_offer']=profiles[targets[0]]
        await conn.execute("update growth_outreach_targets set status='contactable',source_data=$2::jsonb where target_id=$1",targets[0],json.dumps(data))
        async with conn.transaction():result=await register_target(conn,await target(targets[0]),SECRET,'ci-reentry-register-'+tag,WAVES,message,lambda:True)
        assert result['registered'] and not result['already_registered'] and result['sent']==0
        current=await target(targets[0]);data=json.loads(current['source_data']);new_id=uuid.UUID(data['historical_reentry']['consumed_outreach_id'])
        assert new_id not in old_ids
        new=await conn.fetchrow('select * from outreach where outreach_id=$1',new_id)
        assert new['status']=='queued' and new['sequence_step']==0 and new['sent_at'] is None
        assert new['wave']==WAVES['commercial_cleaning'] and new['owner_review_required'] is False
        assert await conn.fetchval("select count(*) from outreach where entity_type='growth_customer' and status<>'superseded'")==8
        assert await conn.fetchval('select status from outreach where outreach_id=$1',historical_plan)=='superseded'
        assert new_id!=historical_plan
        before_retry=await rows_json('outreach')
        async with conn.transaction():again=await register_target(conn,await target(targets[0]),SECRET,'ci-reentry-retry-'+tag,WAVES,message,lambda:True)
        assert again['already_registered'] and not again['registered']
        assert await rows_json('outreach')==before_retry
        assert await conn.fetchval("select count(*) from events where event_type='historical_reentry_consumed'")==1
        # Every negative fixture is a nested rollback-only savepoint.
        async def rejected(tid,mutate,reason):
            tx=conn.transaction();await tx.start()
            try:
                await mutate()
                try:await reentry.authorize(conn,tid,SECRET,'ci-reentry-held-'+tag)
                except reentry.ReentryHeld as exc:assert reason in str(exc),str(exc)
                else:raise AssertionError('Unauthorized historical re-entry accepted: '+reason)
            finally:await tx.rollback()
        async def attempted_seed():
            email=await conn.fetchval('select public_email from growth_outreach_targets where target_id=$1',targets[1])
            vid='ci-attempted-seed-'+tag;oid=uuid.uuid4()
            await conn.execute("insert into vendors(vendor_id,business_name,public_email,status) values($1,'Synthetic Seed',$2,'prospect')",vid,email)
            await conn.execute("insert into outreach(outreach_id,entity_type,entity_id,campaign,status,sent_at,opt_out) values($1,'vendor',$2,'vendor_recruitment','queued',null,false)",oid,vid)
            await conn.execute("insert into mail_delivery_attempts(delivery_key,payload_sha256,status) values($1,$2,'submitted')",'vendor-outreach:'+str(oid)+':1','c'*64)
        await rejected(targets[1],attempted_seed,'queued_outreach_delivery_evidence')
        async def sent_event_seed():
            email=await conn.fetchval('select public_email from growth_outreach_targets where target_id=$1',targets[1])
            vid='ci-event-seed-'+tag
            await conn.execute("insert into vendors(vendor_id,business_name,public_email,status) values($1,'Synthetic Seed',$2,'prospect')",vid,email)
            await conn.execute("insert into outreach(entity_type,entity_id,campaign,status,sent_at,opt_out) values('vendor',$1,'vendor_recruitment','queued',null,false)",vid)
            await conn.execute("insert into events(entity_type,entity_id,event_type,payload) values('vendor',$1,'outreach_sent','{}')",vid)
        await rejected(targets[1],sent_event_seed,'queued_outreach_delivery_evidence')
        async def optout():await conn.execute('update outreach set opt_out=true where outreach_id=$1',old_ids[1])
        await rejected(targets[1],optout,'response_or_optout')
        async def suppression():
            email=await conn.fetchval('select public_email from growth_outreach_targets where target_id=$1',targets[1])
            await conn.execute("insert into outreach_suppressions(email,reason,source) values($1,'synthetic optout','ci')",email.upper())
        await rejected(targets[1],suppression,'current_response_optout')
        async def reply():await conn.execute("insert into events(entity_type,entity_id,event_type,payload) values('growth_customer',$1,'outreach_reply','{}')",targets[2])
        await rejected(targets[2],reply,'current_response_optout')
        async def after_cutoff():await conn.execute("""insert into outreach(entity_type,entity_id,campaign,wave,status,sent_at,opt_out)
          values('growth_customer',$1,'growth_sales','ci-current-authorized-wave','sent',now(),false)""",targets[5])
        await rejected(targets[5],after_cutoff,'nonhistorical_or_changed')
        # A current12-like target has no pre-cutoff membership even if otherwise identical.
        current_tid='ci-current12-'+tag
        async def current12():
            await conn.execute("""insert into growth_outreach_targets(target_id,business_name,public_email,market,service_key,status)
              values($1,'Synthetic Current Authorized',$2,'Phoenix','commercial_cleaning','contacted')""",current_tid,'current-'+tag+'@example.test')
            await conn.execute("""insert into outreach(entity_type,entity_id,campaign,wave,status,sent_at,opt_out)
              values('growth_customer',$1,'growth_sales','ci-current-authorized-wave','sent',now(),false)""",current_tid)
        await rejected(current_tid,current12,'not_initial_historical_batch')
        # Being included as someone else's research prospect is not a contact.
        prospect_tx=conn.transaction();await prospect_tx.start()
        try:
            candidate=uuid.UUID(targets[6].split(':',1)[1]);sample_id=uuid.uuid4()
            company=await target(targets[6])
            await conn.execute("""insert into growth_sample_prospects(sample_id,candidate_id,business_name,market,
              category_key,category_label,fit_score,grade,fit_reason,public_email)
              values($1,$2,$3,'Phoenix','commercial_cleaning','Cleaning',90,'A','Synthetic research listing',$4)""",
              sample_id,candidate,company['business_name'],company['public_email'])
            await conn.execute("""insert into growth_order_prospects(order_id,candidate_id,business_name,market,
              category_key,category_label,fit_score,grade,fit_reason,public_email)
              values($1,$2,$3,'Phoenix','commercial_cleaning','Cleaning',90,'A','Synthetic research listing',$4)""",
              uuid.uuid4(),candidate,company['business_name'],company['public_email'])
            await conn.execute("""insert into growth_prospect_exposures(prospect_key,recipient_key,service_key,market,
              candidate_id,delivery_kind,delivery_ref,status,contact_key)
              values($1,'another-customer@example.test','commercial_cleaning','Phoenix',$2,'free',$3,'delivered',$4)""",
              'synthetic-listed-'+tag,candidate,'synthetic-delivery-'+tag,'email:'+company['public_email'])
            listed=await reentry.authorize(conn,targets[6],SECRET,'ci-listing-not-contact-'+tag)
            assert listed['token']['old_outreach_ids']==[str(old_ids[6])]
        finally:await prospect_tx.rollback()
        # Uncertainty in the NEW campaign is not waived by the old-batch grant.
        uncertain_tx=conn.transaction();await uncertain_tx.start()
        try:
            await reentry.authorize(conn,targets[6],SECRET,'ci-new-uncertain-'+tag)
            uncertain_new=uuid.uuid4()
            await conn.execute("""insert into outreach(outreach_id,entity_type,entity_id,campaign,wave,sequence_step,
              status,sent_at,opt_out,owner_review_required) values($1,'growth_customer',$2,'growth_sales',
              'ci-new-reentry-wave',0,'queued',null,false,false)""",uncertain_new,targets[6])
            await conn.execute("""insert into mail_delivery_attempts(delivery_key,payload_sha256,status)
              values($1,$2,'uncertain')""",'growth-outreach:'+str(uncertain_new)+':1','b'*64)
            try:await reentry.consume_reentry(conn,await target(targets[6]),SECRET,uncertain_new)
            except reentry.ReentryHeld as exc:assert 'uncertain_delivery' in str(exc),str(exc)
            else:raise AssertionError('New campaign uncertain SMTP must not be retried/consumed')
        finally:await uncertain_tx.rollback()
        # Actual sample request by/to this company remains disqualifying.
        async def actual_sample_request():
            company=await target(targets[6])
            await conn.execute("""insert into growth_sample_requests(submission_id,business_name,contact_name,email,
              provider_service_key,market,source_target_id) values($1,$2,'Synthetic Contact',$3,
              'commercial_cleaning','Phoenix',$4)""",'ci-real-request-'+tag,company['business_name'],company['public_email'],targets[6])
        await rejected(targets[6],actual_sample_request,'current_response_optout')
        # Per-company savepoints: valid authorization survives a different company's hold.
        async with conn.transaction():await reentry.authorize(conn,targets[3],SECRET,'ci-reentry-company-good-'+tag)
        good_before=await conn.fetchval("select source_data->'historical_reentry' from growth_outreach_targets where target_id=$1",targets[3])
        async def bad_company():await conn.execute('update outreach set opt_out=true where outreach_id=$1',old_ids[4])
        await rejected(targets[4],bad_company,'response_or_optout')
        assert await conn.fetchval("select source_data->'historical_reentry' from growth_outreach_targets where target_id=$1",targets[3])==good_before
        assert await rows_json('outreach','where outreach_id=any($1::uuid[])',old_ids)==sent_before
        assert await rows_json('outreach','where outreach_id=$1',seed_queue)==inert_before
        assert await rows_json('mail_delivery_attempts')==claims_before
        assert await rows_json('growth_owner_previews')==five_before
        # Independent untouched Growth queues: adopt one UUID, supersede other
        # plans, keep their original metadata in events, retry without changes.
        adoption=conn.transaction();await adoption.start()
        try:
            cid=uuid.uuid4();tid='inventory:'+str(cid);name='Synthetic Queue Adoption '+tag
            email='queue-'+tag+'@example.test';url='https://fixture.example.test/queue/'+tag
            recipient={'candidate_id':str(cid),'side':'vendor','market':'Phoenix','category_key':'commercial_cleaning',
                'category_label':'Commercial cleaning','business_name':name}
            entity={'@type':'CleaningService','name':name,'url':url,'description':'Commercial cleaning and office cleaning',
                'telephone':'6025550111','email':email,'address':{'streetAddress':'200 Main Street',
                    'addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
            recipient.update(parse_record(recipient,url,'<script type="application/ld+json">'+json.dumps(entity)+'</script>','c'*64,SECRET))
            ids=[str(uuid.uuid4()) for _ in range(25)];sample=[{'business_name':'Synthetic Queue Office '+str(j)} for j in range(25)]
            packet={'status':'held_packet_compiled','pack_count':25,'outreach_held':True,'offer_ready':False,'recipient':recipient,
                'binding':{'scope':{'source_url':url,'category_keys':['insurance_professional'],'observed_sector_phrases':['office cleaning']},'candidate_ids':ids},
                'artifacts':{5:{'rows':sample[:5]},25:{'rows':sample}}}
            profile=prepare_profile(packet,tid,SECRET);profile.pop('signature');profile['state']='approved';profile['signature']=signature(profile,SECRET)
            await conn.execute("""insert into growth_outreach_targets(target_id,business_name,public_email,source_url,market,
              service_key,status,source_data) values($1,$2,$3,$4,'Phoenix','commercial_cleaning','contactable',$5::jsonb)""",
              tid,name,email,url,json.dumps({'prior_queue_metadata':'retained','scoped_offer':profile}))
            planned=[uuid.uuid4() for _ in range(3)]
            for j,oid in enumerate(planned):
                await conn.execute("""insert into outreach(outreach_id,entity_type,entity_id,campaign,wave,status,sequence_step,
                  sent_at,replied_at,opt_out,owner_review_required,subject,body,created_at,next_followup_at)
                  values($1,'growth_customer',$2,'growth_sales','ci-old-inert-queue',$3,1,null,null,false,true,
                  'Prior planned subject','Prior planned body',now()-$4::int*interval '1 day',now()+interval '10 days')""",
                  oid,tid,'superseded' if j==0 else 'queued',2 if j==0 else 1)
            for evidence_kind in ('attempt','send_event'):
                held_tx=conn.transaction();await held_tx.start()
                try:
                    if evidence_kind=='attempt':
                        await conn.execute("insert into mail_delivery_attempts(delivery_key,payload_sha256,status) values($1,$2,'submitted')",'growth-outreach:'+str(planned[1])+':1','d'*64)
                    else:
                        await conn.execute("insert into events(entity_type,entity_id,event_type,payload) values('growth_customer',$1,'outreach_sent','{}')",tid)
                    try:await register_target(conn,await target(tid),SECRET,'ci-adopt-held-'+tag,WAVES,message,lambda:True)
                    except ValueError as exc:assert 'historical_contact' in str(exc),str(exc)
                    else:raise AssertionError('Attempted/sent queue adopted as uncontacted')
                finally:await held_tx.rollback()
            async with conn.transaction():registered=await register_target(conn,await target(tid),SECRET,'ci-adopt-queue-'+tag,WAVES,message,lambda:True)
            assert registered['registered'] and not registered['already_registered']
            saved=await conn.fetch('select * from outreach where entity_id=$1 order by outreach_id',tid)
            assert len(saved)==3 and {r['outreach_id'] for r in saved}==set(planned)
            active=[r for r in saved if r['status']=='queued'];assert len(active)==1
            assert active[0]['wave']==WAVES['commercial_cleaning'] and active[0]['sequence_step']==0
            assert active[0]['owner_review_required'] is False and active[0]['sent_at'] is None
            assert sum(r['status']=='superseded' for r in saved)==2
            assert await conn.fetchval("select count(*) from mail_delivery_attempts where delivery_key like '%'||$1||'%'",str(active[0]['outreach_id']))==0
            archive=await conn.fetch("select event_type,payload from events where entity_id=$1 and event_type like 'scoped_queued_plan_%'",tid)
            assert len(archive)==2
            archived=[json.loads(r['payload'])['prior_planned_row'] for r in archive]
            assert {r['outreach_id'] for r in archived}==set(str(x) for x in planned[1:])
            assert all(r['body']=='Prior planned body' for r in archived)
            unchanged=await rows_json('outreach','where entity_id=$1',tid)
            dispatch=await conn.fetchval('select source_data::text from growth_outreach_targets where target_id=$1',tid)
            events_count=await conn.fetchval('select count(*) from events where entity_id=$1',tid)
            async with conn.transaction():retry=await register_target(conn,await target(tid),SECRET,'ci-adopt-retry-'+tag,WAVES,message,lambda:True)
            assert retry['already_registered'] and not retry['registered']
            assert await rows_json('outreach','where entity_id=$1',tid)==unchanged
            assert await conn.fetchval('select source_data::text from growth_outreach_targets where target_id=$1',tid)==dispatch
            assert await conn.fetchval('select count(*) from events where entity_id=$1',tid)==events_count
        finally:await adoption.rollback()
        # One outer rollback removes all seven and every appended test row/event.
        await outer.rollback();outer=None
        for table in TABLES:assert await conn.fetchval('select count(*) from '+table)==0,table
        assert await public_counts()==before_public
        print('PASS actual PostgreSQL historical7 authorization, native approved25 registration, once-only new UUID, optout/reply/current12 holds, rollback and untouched old send/mail/five ledgers')
    finally:
        if outer is not None:await outer.rollback()
        await conn.execute('set search_path to public')
        await conn.execute('drop schema if exists '+schema+' cascade')
        await conn.close()

if __name__=='__main__':asyncio.run(main())
