"""Private browser operations for the owner. SMTP credentials never leave the VPS."""
import base64
import hashlib
import json
import secrets
import uuid
from pathlib import Path

from fastapi import Header, HTTPException, Request
from fastapi.responses import HTMLResponse, JSONResponse

ORIGIN = "https://hooks.bmcservicenetwork.com"
SENDER = "contact@bmcservicenetwork.com"
COOKIE = "bmc_owner_session"


def digest(value):
    return hashlib.sha256(value.encode()).hexdigest()


def json_safe(value):
    return json.loads(json.dumps(value, default=str))


def check_origin(request):
    if request.headers.get("origin") != ORIGIN:
        raise HTTPException(403, "Open this action from the BMC dashboard")


def install(app, require_admin, sender_config, send_once, refresh_inbox):
    async def session(request):
        token = request.cookies.get(COOKIE, "")
        if not token or len(token) > 200:
            raise HTTPException(401, "Sign in to BMC")
        async with app.state.pool.acquire() as conn:
            valid = await conn.fetchval("select token_hash from owner_dashboard_sessions where token_hash=$1 and expires_at>now()", digest(token))
        if not valid:
            raise HTTPException(401, "Your sign-in has expired")

    @app.get("/owner/")
    async def page():
        return HTMLResponse(Path(__file__).with_name("owner_dashboard.html").read_text(), headers={
            "Cache-Control": "no-store", "X-Frame-Options": "DENY",
            "Referrer-Policy": "no-referrer", "X-Robots-Tag": "noindex, nofollow",
        })

    @app.post("/api/admin/owner-dashboard-access")
    async def access(request_id: str, x_bmc_admin_key: str | None = Header(default=None)):
        require_admin(x_bmc_admin_key)
        from owner_research_export import seal_export
        code = secrets.token_urlsafe(32)
        # Validate/encrypt before creating the one-time login record.
        result = seal_export({"dashboard_url": ORIGIN + "/owner/", "login_code": code,
                              "expires_in_hours": 24, "single_use": True}, request_id)
        async with app.state.pool.acquire() as conn:
            await conn.execute("insert into owner_dashboard_logins(code_hash,expires_at) values($1,now()+interval '24 hours')", digest(code))
        return result

    @app.post("/api/owner/login")
    async def login(request: Request):
        check_origin(request)
        raw = await request.body()
        if len(raw) > 1000:
            raise HTTPException(400, "Invalid sign-in")
        try:
            code = json.loads(raw).get("code", "").strip()
        except (ValueError, AttributeError):
            raise HTTPException(400, "Enter your private sign-in code")
        if not 30 <= len(code) <= 100:
            raise HTTPException(401, "Invalid or expired sign-in code")
        token = secrets.token_urlsafe(48)
        async with app.state.pool.acquire() as conn:
            async with conn.transaction():
                claimed = await conn.fetchval("delete from owner_dashboard_logins where code_hash=$1 and expires_at>now() returning code_hash", digest(code))
                if not claimed:
                    raise HTTPException(401, "Invalid or already-used sign-in code")
                await conn.execute("insert into owner_dashboard_sessions(token_hash,expires_at) values($1,now()+interval '30 days')", digest(token))
        response = JSONResponse({"ok": True}, headers={"Cache-Control": "no-store"})
        response.set_cookie(COOKIE, token, max_age=2592000, secure=True, httponly=True, samesite="strict", path="/api/owner")
        return response

    @app.post("/api/owner/logout")
    async def logout(request: Request):
        check_origin(request)
        async with app.state.pool.acquire() as conn:
            await conn.execute("delete from owner_dashboard_sessions where token_hash=$1", digest(request.cookies.get(COOKIE, "")))
        response = JSONResponse({"ok": True})
        response.delete_cookie(COOKIE, path="/api/owner", secure=True, httponly=True, samesite="strict")
        return response

    @app.get("/api/owner/state")
    async def state(request: Request):
        await session(request)
        async with app.state.pool.acquire() as conn:
            campaign = dict(await conn.fetchrow("""select count(*) filter(where sent_at is not null) as sent,
                count(*) filter(where status='queued' and owner_review_required=false) as queued,
                count(*) filter(where replied_at is not null) as replied,
                count(*) filter(where opt_out=true) as opted_out
                from outreach where campaign='growth_interest_first'"""))
            contacts = await conn.fetch("""select distinct on(lower(g.public_email)) g.target_id,g.business_name,g.public_email,g.market,g.service_key,
                o.sent_at,o.status,o.subject,o.body,o.replied_at,o.reply_type,
                exists(select 1 from outreach_suppressions s where lower(s.email)=lower(g.public_email)) as suppressed
                from outreach o join growth_outreach_targets g on o.entity_type='growth_customer' and o.entity_id=g.target_id
                where o.sent_at is not null and o.campaign in ('growth_interest_first','manual_sender_correction_20261110')
                order by lower(g.public_email),o.sent_at desc limit 150""")
            replies = await conn.fetch("""select event_id,entity_id,occurred_at,payload from events
                where event_type='owner_reply_review' order by occurred_at desc limit 100""")
            messages = await conn.fetch("""select created_at,target_id,subject,body,status from owner_dashboard_messages
                order by created_at desc limit 100""")
            orders = await conn.fetch("""select order_id,product_key,customer_email,amount_cents,currency,payment_status,status,created_at
                from orders order by created_at desc limit 100""")
            tasks = await conn.fetch("""select task_id,task_type,status,summary,due_at,order_id from tasks
                where status not in ('done','completed','cancelled') order by created_at desc limit 100""")
            totals = dict(await conn.fetchrow("select count(*) as paid_orders, coalesce(sum(amount_cents) filter(where currency='usd'),0) as usd_cents from orders where payment_status in ('paid','complete')"))
            clock = await conn.fetchval("select now()")
        payload = {"observed_at": clock, "sender": SENDER, "sender_ready": sender_config(),
                   "campaign": campaign, "totals": totals, "offer_terms": 'Regular offer $149 for 25 prospects. The $129 correction offer applies only to Lollar Junk Removal, Flagstaff Tree Service and Blue J Paint &amp; Stain. Confirm scope and delivery timing before collecting payment. Mail-server acceptance does not establish inbox delivery.', "contacts": [dict(r) for r in contacts],
                   "replies": [dict(r) for r in replies], "messages": [dict(r) for r in messages],
                   "orders": [dict(r) for r in orders], "tasks": [dict(r) for r in tasks]}
        return JSONResponse(json_safe(payload), headers={"Cache-Control": "no-store"})

    @app.post("/api/owner/check-replies")
    async def check_replies(request: Request):
        check_origin(request)
        await session(request)
        return await refresh_inbox()

    @app.post("/api/owner/send")
    async def send(request: Request):
        check_origin(request)
        await session(request)
        if not sender_config():
            raise HTTPException(409, "BMC sender configuration needs attention")
        raw = await request.body()
        if len(raw) > 7_000_000:
            raise HTTPException(413, "Keep attachments below 5 MB total")
        try:
            data = json.loads(raw)
            request_id = uuid.UUID(data["request_id"])
            target_id = str(data["target_id"])
            subject = str(data["subject"]).strip()
            body = str(data["body"]).strip()
            files = data.get("attachments", [])
            order_id = uuid.UUID(data["order_id"]) if data.get("order_id") else None
        except (ValueError, KeyError, TypeError, AttributeError):
            raise HTTPException(400, "Check the recipient, subject and message")
        if not subject or not body or len(subject) > 200 or len(body) > 30000 or '\n' in subject or '\r' in subject:
            raise HTTPException(400, "Check the subject and message length")
        attachments = []
        total = 0
        if not isinstance(files, list) or len(files) > 3:
            raise HTTPException(400, "Attach up to three files")
        for item in files:
            try:
                name = Path(item["name"]).name
                content = base64.b64decode(item["data"], validate=True)
            except (KeyError, TypeError, ValueError):
                raise HTTPException(400, "Invalid attachment")
            if not name or len(name)>150 or any(ord(c)<32 for c in name):
                raise HTTPException(400, "Invalid attachment filename")
            total += len(content)
            if total > 5_000_000:
                raise HTTPException(413, "Keep attachments below 5 MB total")
            attachments.append((name,content,"application","octet-stream"))
        if order_id and not attachments:
            raise HTTPException(400, "Attach the completed research before recording delivery")
        fingerprint = hashlib.sha256(raw).hexdigest()
        async with app.state.pool.acquire() as conn:
            async with conn.transaction():
                target = await conn.fetchrow("""select g.target_id,g.public_email from growth_outreach_targets g
                    where target_id=$1 and exists(select 1 from outreach o where o.entity_type='growth_customer'
                    and o.entity_id=g.target_id and o.sent_at is not null)
                    and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(g.public_email))""",target_id)
                if not target:
                    raise HTTPException(409,"Select a contacted business that has not opted out")
                if order_id:
                    order = await conn.fetchrow("select customer_email,payment_status,status from orders where order_id=$1 for update",order_id)
                    if not order or order['customer_email'].lower()!=target['public_email'].lower() or order['payment_status'] not in ('paid','complete'):
                        raise HTTPException(409,"Delivery requires a paid order for this recipient")
                    if order['status'] in ('fulfilled','owner_delivery_pending'):
                        raise HTTPException(409,"This order is fulfilled or already has a delivery in progress")
                claimed = await conn.fetchval("""insert into owner_dashboard_messages(request_id,target_id,subject,body,payload_hash,status)
                    values($1,$2,$3,$4,$5,'attempting') on conflict do nothing returning request_id""",request_id,target_id,subject,body,fingerprint)
                if not claimed:
                    previous = await conn.fetchrow("select status,payload_hash from owner_dashboard_messages where request_id=$1",request_id)
                    if previous['payload_hash']!=fingerprint:
                        raise HTTPException(409,"This send reference already belongs to a different message")
                    return {"status":previous['status'],"smtp_accepted":previous['status']=='sent',"duplicate_prevented":True}
                if order_id:
                    await conn.execute("update orders set status='owner_delivery_pending',updated_at=now() where order_id=$1",order_id)
        body += "\n\nBrett\nBMC Service Network / BMC Luminary Ventures LLC\n186 E. Sheldon St. #1144, Prescott, AZ 86301\nReply NO to stop marketing emails."
        accepted = await send_once('owner-dashboard:'+str(request_id),target['public_email'],subject,body,attachments=attachments)
        async with app.state.pool.acquire() as conn:
            async with conn.transaction():
                await conn.execute("update owner_dashboard_messages set status=$2 where request_id=$1",request_id,'sent' if accepted else 'uncertain')
                if accepted and order_id:
                    await conn.execute("update orders set status='fulfilled',updated_at=now() where order_id=$1",order_id)
        return {"smtp_accepted":bool(accepted),"status":"sent" if accepted else "uncertain", "sender":SENDER,"recipient":target['public_email']}
