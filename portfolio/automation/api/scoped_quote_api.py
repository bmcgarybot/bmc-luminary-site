"""Customer-initiated draft requests and durable consent; no payment approval here."""
import hashlib,hmac,json,uuid
from datetime import datetime,timedelta,timezone


def request_token(secret,sample_id,email):
    if not secret:return ''
    return hmac.new(secret.encode(),f'bmc-request25|{sample_id}|{email.lower()}'.encode(),hashlib.sha256).hexdigest()

def request_fields(secret,sample_id,email):
    return {'small_pack_request_token':request_token(secret,sample_id,email)}

def install(app,secret,prepare_offer,profile_for_sample):
    from fastapi import Request,HTTPException
    @app.post('/api/growth/request-small-pack')
    async def request_pack(request:Request):
        try:p=await request.json()
        except (ValueError,TypeError):raise HTTPException(400,'A valid sample request is required')
        if not isinstance(p,dict):raise HTTPException(400,'A valid sample request is required')
        try:sid=uuid.UUID(str(p.get('sample_id')))
        except (ValueError,TypeError):raise HTTPException(400,'A saved sample is required')
        if p.get('confirm') is not True:raise HTTPException(400,'Confirm that you want the scoped 25-pack review')
        async with app.state.pool.acquire() as conn:
            async with conn.transaction():
                sample=await conn.fetchrow('select * from growth_sample_requests where sample_id=$1',sid)
                if not sample:raise HTTPException(403,'This sample request is unavailable')
                expected=request_token(secret,str(sid),sample['email'])
                token=p.get('request_token')
                if not expected or not isinstance(token,str) or not hmac.compare_digest(expected,token):
                    raise HTTPException(403,'This sample request is unavailable')
                created=sample['created_at'];created=created.replace(tzinfo=timezone.utc) if created.tzinfo is None else created
                if datetime.now(timezone.utc)-created>timedelta(days=30):raise HTTPException(409,'The sample scope needs a fresh review')
                try:profile=await profile_for_sample(conn,sample)
                except ValueError:raise HTTPException(409,'The saved scope needs a fresh review')
                if not profile:raise HTTPException(409,'This sample has no reviewed 25-pack scope')
                # The shared allocator acquires its advisory lock before locking the sample.
                result=await prepare_offer(conn,{'sample_id':str(sid),'product_key':'growth_pack_25'})
                if result.get('status')=='draft':
                    from auto_scoped_offer import request_marker,REQUEST_EVENT
                    marker=request_marker(result['offer_id'],sid,sample['email'],profile.get('signature',''),secret)
                    # The allocator lock in prepare_offer serializes repeated requests.
                    # Only this token+confirmation-validated public path emits consent.
                    await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
                      select 'growth_offer',$1,$2,'customer_token_confirmed',$3::jsonb
                      where not exists(select 1 from events where entity_type='growth_offer' and entity_id=$1 and event_type=$2)""",
                      str(result['offer_id']),REQUEST_EVENT,json.dumps(marker))
                if result.get('status') in ('paid','fulfilled'):
                    return {'ok':True,'status':'already_purchased','offer_id':result['offer_id'],'offer_count':25,'checkout_url':'','payment_created':False,'message':'This scoped pack has already been purchased. Use the delivered files or reply to BMC for help; no additional purchase was created.'}
                if result.get('status')=='approved':
                    return {'ok':True,'status':'offer_already_reviewed','offer_id':result['offer_id'],'offer_count':25,'checkout_url':'','payment_created':False,'message':'Your scoped offer has already been reviewed. Use the recipient-bound payment link from BMC, or reply if you need help finding it. No new payment was taken.'}
                return {'ok':True,'status':'offer_pending_review','offer_id':result['offer_id'],
                    'offer_count':25,'amount_cents':14900,'checkout_url':'','payment_created':False,
                    'message':'Your 25-prospect request is saved. BMC will verify the current list before providing your recipient-bound payment link. No payment has been taken.'}
    return request_pack
