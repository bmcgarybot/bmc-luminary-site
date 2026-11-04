"""Customer-initiated smaller-pack requests: draft only, never payment approval."""
import hashlib,hmac,uuid
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
        p=await request.json()
        try:sid=uuid.UUID(str(p.get('sample_id')))
        except (ValueError,TypeError):raise HTTPException(400,'A saved sample is required')
        if p.get('confirm') is not True:raise HTTPException(400,'Confirm that you want the scoped 25-pack review')
        async with app.state.pool.acquire() as conn:
            async with conn.transaction():
                sample=await conn.fetchrow('select * from growth_sample_requests where sample_id=$1 for update',sid)
                if not sample:raise HTTPException(403,'This sample request is unavailable')
                expected=request_token(secret,str(sid),sample['email'])
                token=p.get('request_token')
                if not expected or not isinstance(token,str) or not hmac.compare_digest(expected,token):
                    raise HTTPException(403,'This sample request is unavailable')
                created=sample['created_at'];created=created.replace(tzinfo=timezone.utc) if created.tzinfo is None else created
                if datetime.now(timezone.utc)-created>timedelta(days=30):raise HTTPException(409,'The sample scope needs a fresh review')
                profile=await profile_for_sample(conn,sample)
                if not profile:raise HTTPException(409,'This sample has no reviewed 25-pack scope')
                result=await prepare_offer(conn,{'sample_id':str(sid),'product_key':'growth_pack_25'})
                return {'ok':True,'status':'offer_pending_review','offer_id':result['offer_id'],
                    'offer_count':25,'amount_cents':14900,'checkout_url':'','payment_created':False,
                    'message':'Your 25-prospect request is saved. BMC will verify the current list before providing your recipient-bound payment link. No payment has been taken.'}
    return request_pack
