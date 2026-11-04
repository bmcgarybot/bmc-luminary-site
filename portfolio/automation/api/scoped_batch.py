"""Register one freshly approved researched scope, without SMTP or history resets."""
import hashlib,json
from scoped_growth import profile_for_target
from scoped_dispatch import authorize_dispatch,dispatch_for_target

async def register_target(conn,target,secret,request_id,waves,outreach_message,hold_required):
    if hold_required() is not True:raise ValueError('preparation_hold_required')
    profile=profile_for_target(target,secret,customer=True)
    if not profile or target.get('status')!='contactable':raise ValueError('approved_contactable_scope_required')
    wave=waves.get(profile['service_key'])
    if not wave:raise ValueError('unsupported_dispatch_service')
    if await conn.fetchval('select exists(select 1 from outreach_suppressions where lower(email)=lower($1))',profile['email']):
        raise ValueError('contact_suppressed')
    prior=await conn.fetchrow("select outreach_id,status,opt_out from outreach where entity_type='growth_customer' and entity_id=$1 and campaign='growth_sales' order by created_at limit 1 for update",target['target_id'])
    if prior:
        if dispatch_for_target(target,secret,waves)==wave and not prior['opt_out'] and prior['status'] in ('queued','sent','replied'):
            return dict(registered=False,already_registered=True,sent=0)
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
    await conn.execute("""insert into outreach(entity_type,entity_id,campaign,wave,channel,sequence_step,status,next_followup_at,opt_out,target_market,target_service_key,owner_review_required)
      values('growth_customer',$1,'growth_sales',$2,'email',0,'queued',now(),false,$3,$4,false)""",target['target_id'],wave,profile['market'],profile['service_key'])
    if hold_required() is not True:raise ValueError('preparation_hold_changed')
    return dict(registered=True,already_registered=False,sent=0)
