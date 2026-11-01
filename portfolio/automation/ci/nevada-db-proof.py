"""Run inside the CI API container against isolated Postgres, with no server flag edits.
Proves real intake writes, state CHECK constraints, staffing rejection and quotas
without mail/payment. Uses reserved .invalid addresses; cleans only its own rows.
"""
import asyncio
import json
import os
import uuid
from fastapi import FastAPI, HTTPException
import asyncpg
import nevada_pilot as nv

class Request:
    def __init__(self,payload):self.payload=payload
    async def body(self):return json.dumps(self.payload).encode()

async def main():
    app=FastAPI();nv.install(app,lambda key:None)
    app.state.pool=await asyncpg.create_pool(os.environ['DATABASE_URL'],min_size=1,max_size=2)
    endpoint=next(r.endpoint for r in app.routes if getattr(r,'path','')=='/api/nevada/request')
    payload={'state_code':'NV','market':'Henderson','audience':'household',
        'service_key':'solar_panel_cleaning','email':'nv-proof@example.invalid','scope':'Solar cleaning company options','consent':True}
    async def counts():
        async with app.state.pool.acquire() as conn:
            return tuple([await conn.fetchval('select count(*) from '+table) for table in ['leads','orders','revenue_events']])
    before=await counts()
    try:
        os.environ.update(BMC_OWNER_LAUNCH_HOLD='false',NV_PILOT_OWNER_LAUNCH_HOLD='false',NV_PILOT_INTAKE_ENABLED='true')
        for changes in [{'state_code':'AZ'},{'market':'Phoenix'},{'market':[]},{'service_key':{}},{'service_key':'nanny_staffing'},{'service_key':'residential_cleaning','scope':'Need a live-in housekeeper'}]:
            try:await endpoint(Request({**payload,**changes}))
            except HTTPException as exc:assert exc.status_code==422,(changes,exc.status_code)
            else:raise AssertionError('Invalid request accepted: '+str(changes))
        for _ in range(3):
            result=await endpoint(Request(payload));assert result['received'] and result['state_code']=='NV'
        try:await endpoint(Request(payload))
        except HTTPException as exc:assert exc.status_code==429
        else:raise AssertionError('NV intake quota bypassed')
        async with app.state.pool.acquire() as conn:
            assert await conn.fetchval('select count(*) from nevada.requests where email=$1',payload['email'])==3
            for state,city in [('AZ','Henderson'),('NV','Phoenix')]:
                try:
                    await conn.execute('''insert into nevada.requests(request_id,state_code,market,audience,service_key,email)
                        values($1,$2,$3,'household','solar_panel_cleaning',$4)''',uuid.uuid4(),state,city,payload['email'])
                except asyncpg.CheckViolationError:pass
                else:raise AssertionError('Database accepted another state/city')
        assert await counts()==before,'Nevada request changed Arizona tables'
        print('NV real-Postgres intake/isolation/staffing/quota/constraint proof passed; no mail or payments.')
    finally:
        async with app.state.pool.acquire() as conn:
            await conn.execute('delete from nevada.requests where email=$1',payload['email'])
        await app.state.pool.close()
asyncio.run(main())
