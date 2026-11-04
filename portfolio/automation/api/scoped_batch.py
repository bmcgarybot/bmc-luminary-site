"""Register one freshly approved researched scope, without SMTP or history resets."""
import hashlib,json,uuid
from scoped_growth import profile_for_target
from scoped_dispatch import authorize_dispatch,dispatch_for_target
from recipient_history import inert_outreach

async def register_target(conn,target,secret,request_id,waves,outreach_message,hold_required):
    if hold_required() is not True:raise ValueError('preparation_hold_required')
    profile=profile_for_target(target,secret,customer=True)
    if not profile or target.get('status')!='contactable':raise ValueError('approved_contactable_scope_required')
    wave=waves.get(profile['service_key'])
    if not wave:raise ValueError('unsupported_dispatch_service')
    if await conn.fetchval('select exists(select 1 from outreach_suppressions where lower(email)=lower($1))',profile['email']):
        raise ValueError('contact_suppressed')
    prior=await conn.fetchrow("select * from outreach where entity_type='growth_customer' and entity_id=$1 and campaign='growth_sales' order by created_at,outreach_id limit 1 for update",target['target_id'])
    reentry=False;adopted=None;plans=[]
    source=target.get('source_data') or {}
    if isinstance(source,str):source=json.loads(source)
    if prior:
        if dispatch_for_target(target,secret,waves)==wave and not prior['opt_out'] and prior['status'] in ('queued','sent','replied'):
            return dict(registered=False,already_registered=True,sent=0)
        if dispatch_for_target(target,secret,waves)==wave and prior['status']=='superseded':
            active=await conn.fetchrow("""select outreach_id from outreach where entity_type='growth_customer'
                and entity_id=$1 and campaign='growth_sales' and wave=$2 and opt_out=false
                and status in ('queued','sent','replied') order by created_at,outreach_id limit 1 for update""",target['target_id'],wave)
            if active:return dict(registered=False,already_registered=True,sent=0)
        if isinstance(source,dict) and source.get('historical_reentry') and not prior['opt_out']:
            from campaign_reentry import approved_reentry
            approval=await approved_reentry(conn,target,secret)
            validated_inert=set(approval['inert_outreach_ids'])
            reentry=True
            candidates=await conn.fetch("""select * from outreach where entity_type='growth_customer'
                and entity_id=$1 and campaign='growth_sales' and status='queued'
                order by created_at,outreach_id for update""",target['target_id'])
            for row in candidates:
                if str(row['outreach_id']) not in validated_inert:raise ValueError('queued_outreach_state_changed')
                plans.append(dict(row))
        elif prior['status'] in ('queued','superseded') and not prior['opt_out']:
            # Inspect all matching-email/entity campaign history before adopting
            # any plan. An inert vendor recruitment row is not customer contact,
            # but only this target's queued Growth row may be adopted.
            from campaign_reentry import RELATED_SQL
            related=await conn.fetch(RELATED_SQL,target['target_id'],profile['email'])
            for raw in related:
                row=dict(raw)
                if not await inert_outreach(conn,row,statuses=('queued','superseded')):
                    raise ValueError('historical_contact_requires_existing_authorization')
                if row.get('entity_type')=='growth_customer' and row.get('campaign')=='growth_sales':
                    if str(row.get('entity_id'))!=str(target['target_id']):raise ValueError('ambiguous_queued_growth_recipient')
                    if row.get('status')=='queued':plans.append(row)
            plans.sort(key=lambda row:(str(row.get('created_at') or ''),str(row['outreach_id'])))
            if plans:adopted=plans[0]
        else:
            raise ValueError('historical_contact_requires_existing_authorization')
    # Validate the current customer copy before changing any authorization state.
    message=outreach_message(target,1)
    if message[0]!=profile['service_key'] or not all(isinstance(v,str) and v.strip() for v in message):
        raise ValueError('current_copy_unavailable')
    cell='scoped:'+profile['service_key']+':'+hashlib.sha256(profile['market'].encode()).hexdigest()[:16]
    await conn.execute("""insert into growth_experiment_cells(cell_key,service_key,market_group,status,next_review_at)
      values($1,$2,$3,'exploring',now()+interval '7 days') on conflict(cell_key) do nothing""",cell,profile['service_key'],profile['market'])
    state=await conn.fetchval('select status from growth_experiment_cells where cell_key=$1 for update',cell)
    if state not in ('exploring','winner','challenger'):raise ValueError('experiment_cell_held')
    data=target.get('source_data') or {};data=json.loads(data) if isinstance(data,str) else dict(data)
    data['scoped_dispatch']=authorize_dispatch(target,secret,request_id,wave)
    await conn.execute('update growth_outreach_targets set experiment_cell=$2,source_data=$3::jsonb,updated_at=now() where target_id=$1',target['target_id'],cell,json.dumps(data))
    # These rows are verified untouched plans, not send history. Archive each
    # exact prior planned record before changing its scheduling metadata.
    for plan in plans:
        action='adopted' if adopted and plan['outreach_id']==adopted['outreach_id'] else 'superseded'
        await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
          values('growth_customer',$1,'scoped_queued_plan_'||$2,'owner_authorized',$3::jsonb)""",
          target['target_id'],action,json.dumps({'request_id':request_id,'prior_planned_row':plan},default=str))
        if action=='superseded':
            await conn.execute("""update outreach set status='superseded',next_followup_at=null,owner_review_required=true
              where outreach_id=$1""",plan['outreach_id'])
    if reentry:
        new_outreach_id=uuid.uuid4()
        await conn.execute("""insert into outreach(outreach_id,entity_type,entity_id,campaign,wave,channel,sequence_step,status,next_followup_at,opt_out,target_market,target_service_key,owner_review_required)
          values($1,'growth_customer',$2,'growth_sales',$3,'email',0,'queued',now(),false,$4,$5,false)""",new_outreach_id,target['target_id'],wave,profile['market'],profile['service_key'])
        from campaign_reentry import consume_reentry
        await consume_reentry(conn,target,secret,new_outreach_id)
    elif adopted:
        await conn.execute("""update outreach set wave=$2,channel='email',sequence_step=0,status='queued',
          next_followup_at=now(),target_market=$3,target_service_key=$4,owner_review_required=false,subject=null,body=null
          where outreach_id=$1""",adopted['outreach_id'],wave,profile['market'],profile['service_key'])
    else:
        await conn.execute("""insert into outreach(entity_type,entity_id,campaign,wave,channel,sequence_step,status,next_followup_at,opt_out,target_market,target_service_key,owner_review_required)
          values('growth_customer',$1,'growth_sales',$2,'email',0,'queued',now(),false,$3,$4,false)""",target['target_id'],wave,profile['market'],profile['service_key'])
    if hold_required() is not True:raise ValueError('preparation_hold_changed')
    return dict(registered=True,already_registered=False,sent=0)
