"""Synthetic-only API/DB check, run inside the CI ops_api container."""
import asyncio
import hashlib
import hmac
import os
import urllib.error
import urllib.parse
import urllib.request
import asyncpg

async def main():
    address="ci-unsubscribe@example.invalid"
    secret=os.environ["BMC_ADMIN_KEY"]
    token=hmac.new(secret.encode(),("email-unsubscribe\n"+address).encode(),hashlib.sha256).hexdigest()
    url="http://127.0.0.1:8000/api/email-preferences?"+urllib.parse.urlencode({"email":address,"token":token})
    conn=await asyncpg.connect(os.environ["DATABASE_URL"])
    try:
        await conn.execute("delete from outreach_suppressions where email=$1",address)
        with urllib.request.urlopen(url) as response:
            assert response.status==200
            assert "method='post'" in response.read().decode()
        assert not await conn.fetchval("select 1 from outreach_suppressions where email=$1",address)
        try:
            urllib.request.urlopen(urllib.request.Request(url+"bad",data=b"",method="POST"))
            raise AssertionError("Invalid signature accepted")
        except urllib.error.HTTPError as error:
            assert error.code==403
        for _ in range(2):
            with urllib.request.urlopen(urllib.request.Request(url,data=b"List-Unsubscribe=One-Click",method="POST")) as response:
                assert "You're unsubscribed" in response.read().decode()
        assert await conn.fetchval("select count(*) from outreach_suppressions where email=$1",address)==1
        print("Unsubscribe GET is read-only; invalid POST denied; valid/repeated POST persists suppression.")
    finally:
        await conn.execute("delete from outreach_suppressions where email=$1",address)
        await conn.close()

asyncio.run(main())
