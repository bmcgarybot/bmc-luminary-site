"""Disposable CI database only: real SQL claims, fake SMTP, no external mail."""
import asyncio
import os
import asyncpg
import app as runtime

if os.environ.get("SMTP_DRY_RUN","").lower()!="true":
    raise SystemExit("Refusing paid-mail fixture outside SMTP_DRY_RUN environment")

async def main():
    pool=await asyncpg.create_pool(runtime.DB_DSN,min_size=1,max_size=5)
    runtime.app.state.pool=pool
    delivery_pool=await asyncpg.create_pool(runtime.DB_DSN,min_size=1,max_size=2,command_timeout=15)
    runtime.app.state.delivery_pool=delivery_pool
    calls=[]
    smtp_result=True
    async def fake_smtp(*args,**kwargs):
        calls.append(args)
        await asyncio.sleep(0)
        return smtp_result
    runtime.send_mail=fake_smtp
    runtime.SMTP_DRY_RUN=False  # only the real claim helper; SMTP replaced above
    async def send(key,body="fixture"):
        return await runtime.send_mail_once(key,"ci-only@example.test","Fixture",body)
    try:
        results=await asyncio.gather(send("ci-paid-delivery-race"),send("ci-paid-delivery-race"))
        assert any(results) and len(calls)==1
        assert await send("ci-paid-delivery-race") and len(calls)==1
        assert not await send("ci-paid-delivery-race","changed") and len(calls)==1
        try:
            async with pool.acquire() as business_conn:
                async with business_conn.transaction():
                    assert await send("ci-paid-delivery-rollback")
                    raise RuntimeError("Simulated business transaction rollback after SMTP")
        except RuntimeError:
            pass
        assert await send("ci-paid-delivery-rollback") and len(calls)==2
        # Even all five business connections occupied cannot starve SMTP claims.
        business_connections=[await pool.acquire() for _ in range(5)]
        try:
            async with asyncio.timeout(5):
                assert await send("ci-paid-delivery-saturated")
        finally:
            for conn in business_connections:
                await pool.release(conn)
        assert len(calls)==3
        smtp_result=False
        assert not await send("ci-paid-delivery-uncertain")
        assert not await send("ci-paid-delivery-uncertain")
        assert len(calls)==4
        async with pool.acquire() as conn:
            states=await conn.fetch("select delivery_key,status from mail_delivery_attempts where delivery_key like 'ci-paid-delivery-%'")
        assert {r["delivery_key"]:r["status"] for r in states}=={
            "ci-paid-delivery-race":"submitted","ci-paid-delivery-rollback":"submitted","ci-paid-delivery-uncertain":"uncertain","ci-paid-delivery-saturated":"submitted"}
        print("PASS real Postgres paid-mail concurrency, rollback persistence, changed payload, and uncertain-outcome gates; fake SMTP only")
    finally:
        await delivery_pool.close()
        await pool.close()
asyncio.run(main())
