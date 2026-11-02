"""Real Postgres/API qualification proof; no mail, payments or customer disclosure."""
import asyncio,json,os,urllib.request,urllib.error,uuid
import asyncpg
from app import DB_DSN

def call(path,payload,key=None):
    headers={'Content-Type':'application/json'}
    if key:headers['X-BMC-Admin-Key']=key
    req=urllib.request.Request('http://127.0.0.1:8000'+path,data=json.dumps(payload).encode(),headers=headers)
    try:
        with urllib.request.urlopen(req) as r:return r.status,json.load(r)
    except urllib.error.HTTPError as e:return e.code,json.load(e)
async def main():
    conn=await asyncpg.connect(DB_DSN);lid=uuid.uuid4();key=os.environ['BMC_ADMIN_KEY']
    try:
        before=await conn.fetchval('select count(*) from orders')
        await conn.execute("""insert into leads(lead_id,form_type,market,service_key,scope,email,consent,status,raw_payload)
          values($1,'pressure_washing','Phoenix','pressure_washing','Synthetic driveway request','proof@example.invalid',true,'received',
          '{"contact_verified":true,"sharing_confirmed":true,"job_confirmed":true,"not_duplicate":true}')""",lid)
        assert call('/api/admin/active-leads',{})[0]==403
        status,body=call('/api/admin/active-leads',{},key);assert status==200,body
        row=next(x for x in body['queue'] if x['lead_id']==str(lid))
        assert row['qualification']=='needs_review' and not row['can_charge'],row
        assert not any(x in json.dumps(body) for x in ('proof@example.invalid','Synthetic driveway'))
        review=dict(lead_id=str(lid),contact_verified=True,job_confirmed=True,sharing_confirmed=True,not_duplicate=True,evidence_note='Synthetic customer confirmation; no customer was contacted.')
        assert call('/api/admin/active-leads/review',dict(review,sharing_confirmed='true'),key)[0]==400
        status,body=call('/api/admin/active-leads/review',review,key)
        assert status==200 and body['qualification']=='confirmed_request' and not body['can_charge'],body
        status,body=call('/api/admin/active-leads/review',dict(review,sharing_confirmed=False),key)
        assert status==200 and body['qualification']=='needs_review',body
        assert await conn.fetchval('select count(*) from orders')==before
        print('PASS authenticated active-job review, spoof prevention, permission revocation, PII whitelist and no charges')
    finally:
        await conn.execute('delete from leads where lead_id=$1',lid);await conn.close()
asyncio.run(main())
