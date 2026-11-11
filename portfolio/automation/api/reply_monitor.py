"""Independent BMC mailbox monitoring. Only owner alerts leave this module."""
import hashlib
import imaplib
import json
import re
from datetime import datetime, timezone
from email import policy
from email.parser import BytesParser

from fastapi import Header, HTTPException
from owner_research_export import seal_export
from reply_review import address, message_body


def reply_folders(box, inbox):
    status, rows = box.list()
    if status != 'OK':
        raise RuntimeError('mailbox_folder_list_unavailable')
    folders = [inbox]
    for raw in rows or []:
        if not isinstance(raw, bytes) or b'\\Noselect' in raw:
            continue
        line = raw.decode('utf-8', 'replace')
        match = re.search(r'"([^"\r\n]+)"\s*$', line)
        name = match.group(1) if match else line.rsplit(' ', 1)[-1]
        leaf = re.split(r'[./]', name)[-1].lower()
        if ('\\junk' in line.lower() or leaf in ('junk', 'spam', 'junk e-mail')) and name not in folders:
            folders.append(name)
    return folders


def install(app, require_admin, config, record_reply):
    @app.post('/api/admin/reply-monitor-cycle')
    async def cycle(request_id: str = 'scheduled-reply-monitor', test_owner_alert: bool = False, x_bmc_admin_key: str | None = Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not all(config.get(k) for k in ('IMAP_HOST', 'IMAP_USER', 'IMAP_PASSWORD')):
            raise HTTPException(409, 'BMC mailbox credentials are incomplete')
        if not config.get('IMAP_ENABLED'):
            raise HTTPException(409, 'BMC mailbox monitoring is disabled')
        box = None
        processed = 0
        recorded = 0
        folders = []
        summaries = []
        test_result = None
        try:
            box = imaplib.IMAP4_SSL(config['IMAP_HOST'], int(config.get('IMAP_PORT') or 993), timeout=20)
            box.login(config['IMAP_USER'], config['IMAP_PASSWORD'])
            folders = reply_folders(box, config.get('IMAP_FOLDER') or 'INBOX')
            async with app.state.pool.acquire() as conn:
                if test_owner_alert:
                    test_result = await record_reply(conn, 'monitor-test:'+request_id, 'monitor-test@example.invalid',
                        'This is your requested BMC notification delivery test. No customer has replied and no customer was emailed.',
                        'notification_test', 'BMC notification test — not a customer reply', None, monitor_all=True)
                for folder in folders:
                    key = hashlib.sha256((config['IMAP_HOST']+'\n'+config['IMAP_USER']+'\n'+folder).encode()).hexdigest()
                    async with conn.transaction():
                        locked = await conn.fetchval("select pg_try_advisory_xact_lock(hashtextextended($1,0))", 'owner-reply-monitor:'+key)
                        if not locked:
                            summaries.append({'folder': folder, 'status': 'busy'})
                            continue
                        status, _ = box.select(folder, readonly=True)
                        if status != 'OK':
                            raise RuntimeError('mailbox_folder_selection_failed')
                        validity_data = box.response('UIDVALIDITY')[1]
                        if not validity_data or not validity_data[0]:
                            raise RuntimeError('mailbox_uidvalidity_missing')
                        validity = validity_data[0].decode()
                        cursor = await conn.fetchrow('select uidvalidity,last_uid from reply_monitor_positions where mailbox_key=$1', key)
                        last_uid = int(cursor['last_uid']) if cursor and cursor['uidvalidity'] == validity else 0
                        status, data = box.uid('search', None, 'UID', str(last_uid+1)+':*')
                        if status != 'OK':
                            raise RuntimeError('mailbox_search_failed')
                        ids = sorted(int(value) for value in (data[0] or b'').split() if value.isdigit() and int(value)>last_uid)
                        batch = ids[:100]
                        for uid in batch:
                            status, parts = box.uid('fetch', str(uid), '(BODY.PEEK[])')
                            if status != 'OK':
                                raise RuntimeError('mailbox_message_fetch_failed')
                            raw = next((part[1] for part in parts or [] if isinstance(part, tuple) and isinstance(part[1], bytes)), None)
                            if not raw:
                                raise RuntimeError('mailbox_message_missing')
                            msg = BytesParser(policy=policy.default).parsebytes(raw)
                            sender = address(str(msg.get('From', '')))
                            auto = str(msg.get('Auto-Submitted', '')).lower()
                            machine = ((auto and auto != 'no') or msg.get_content_type() == 'multipart/report'
                                       or sender.split('@')[0] in ('mailer-daemon', 'postmaster'))
                            own = sender in {address(config.get('SMTP_FROM')), address(config.get('WATCHDOG_EMAIL'))}
                            if sender and not machine and not own:
                                result = await record_reply(conn, 'inbound:'+hashlib.sha256(raw).hexdigest(), sender,
                                    message_body(msg), 'needs_review', str(msg.get('Subject', '')), None, monitor_all=True)
                                recorded += int(result.get('recorded', False))
                            processed += 1
                            last_uid = uid
                        await conn.execute("""insert into reply_monitor_positions(mailbox_key,folder,uidvalidity,last_uid,checked_at)
                            values($1,$2,$3,$4,now()) on conflict(mailbox_key) do update set
                            folder=excluded.folder,uidvalidity=excluded.uidvalidity,last_uid=excluded.last_uid,checked_at=now()""",
                            key, folder, validity, last_uid)
                        summaries.append({'folder': folder, 'status': 'checked', 'backlog': max(0, len(ids)-len(batch)), 'last_uid': last_uid})
        except Exception as exc:
            # Never return exception text containing credentials or message bodies.
            raise HTTPException(502, 'BMC reply monitor failed: '+type(exc).__name__)
        finally:
            if box:
                try:
                    box.logout()
                except Exception:
                    pass
        return seal_export({'checked_at':datetime.now(timezone.utc).isoformat(), 'scope':'All human senders in BMC inbox and discovered spam/junk folders',
            'processed':processed, 'new_reviews':recorded, 'folders':summaries,
            'owner_alert_recipient':address(config.get('WATCHDOG_EMAIL')),
            'notification_test':test_result, 'customer_messages_sent':0}, request_id)
