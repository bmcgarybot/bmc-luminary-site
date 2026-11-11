"""Read-only incident evidence: no SMTP envelope/data and no mailbox writes."""
import asyncio, imaplib, json, os, re, smtplib, ssl
from email import policy
from email.parser import BytesParser
from email.utils import parseaddr
from fastapi import Header
from owner_research_export import seal_export
from reply_review import message_body, fetch_bytes


def safe_error(exc):
    response=getattr(exc,'smtp_error',str(exc))
    if isinstance(response,bytes):response=response.decode('utf-8','replace')
    response=str(response)
    for key in ('SMTP_PASSWORD','IMAP_PASSWORD','BMC_ADMIN_KEY'):
        secret=os.getenv(key,'')
        if secret:response=response.replace(secret,'[redacted]')
    return {'type':type(exc).__name__,'code':getattr(exc,'smtp_code',None),'response':response[:1500]}


def provider_evidence(known):
    out={'smtp_host':os.getenv('SMTP_HOST'),'smtp_from':os.getenv('SMTP_FROM'),'reply_to':os.getenv('SMTP_REPLY_TO'),
         'probe_scope':'AUTH and NOOP only; no MAIL, RCPT, DATA, message or mailbox mutation'}
    smtp=None
    try:
        host=os.environ['SMTP_HOST'];port=int(os.getenv('SMTP_PORT','587'))
        if port==465:smtp=smtplib.SMTP_SSL(host,port,timeout=20,context=ssl.create_default_context())
        else:
            smtp=smtplib.SMTP(host,port,timeout=20);smtp.ehlo()
            if os.getenv('SMTP_STARTTLS','true').lower()=='true':smtp.starttls(context=ssl.create_default_context());smtp.ehlo()
        if os.getenv('SMTP_USER'):smtp.login(os.environ['SMTP_USER'],os.environ['SMTP_PASSWORD'])
        code,response=smtp.noop();out['smtp_account']={'status':'authenticated','noop_code':code,'response':response.decode('utf-8','replace')[:500]}
    except Exception as exc:out['smtp_account']={'status':'failed',**safe_error(exc)}
    finally:
        if smtp:
            try:smtp.quit()
            except Exception:pass
    box=None;messages=[]
    try:
        box=imaplib.IMAP4_SSL(os.environ['IMAP_HOST'],int(os.getenv('IMAP_PORT','993')),timeout=20)
        box.login(os.environ['IMAP_USER'],os.environ['IMAP_PASSWORD'])
        status,_=box.select(os.getenv('IMAP_FOLDER','INBOX'),readonly=True)
        if status!='OK':raise RuntimeError('Read-only mailbox selection failed')
        status,data=box.uid('search',None,'SINCE','10-Nov-2026')
        if status!='OK':raise RuntimeError('Mailbox search failed')
        ids=(data[0] or b'').split()[-150:]
        for uid in reversed(ids):
            status,data=box.uid('fetch',uid.decode(),'(BODY.PEEK[HEADER.FIELDS (FROM SUBJECT DATE CONTENT-TYPE AUTO-SUBMITTED)]<0.8192>)')
            if status!='OK':continue
            head=BytesParser(policy=policy.default).parsebytes(fetch_bytes(data,8192))
            sender=parseaddr(str(head.get('From','')))[1].lower();subject=str(head.get('Subject',''))
            relevant=(sender in known or sender.split('@')[0] in ('mailer-daemon','postmaster') or head.get_content_type()=='multipart/report'
              or re.search(r'undeliver|delivery (?:fail|status)|sending limit|send limit|rate limit|account suspended|mail.*blocked|spam.*block',subject,re.I))
            if not relevant:continue
            status,data=box.uid('fetch',uid.decode(),'(BODY.PEEK[]<0.60000>)')
            if status!='OK':continue
            raw=fetch_bytes(data,60000);msg=BytesParser(policy=policy.default).parsebytes(raw)
            statuses=[]
            for part in msg.walk():
                if part.get_content_type()=='message/delivery-status':
                    for block in part.get_payload() or []:
                        statuses.append({k:str(block[k])[:2000] for k in ('Final-Recipient','Original-Recipient','Action','Status','Diagnostic-Code','Remote-MTA') if block.get(k)})
            messages.append({'uid':uid.decode(),'sender':sender,'subject':subject[:500],'date':str(msg.get('Date','')),
              'body':message_body(msg),'delivery_status':statuses,'partial':len(raw)>=60000,'data_trust':'UNTRUSTED_EMAIL_DATA'})
            if len(messages)>=30:break
        out['mailbox']={'status':'read_only_complete','headers_examined_limit':len(ids),'messages':messages}
    except Exception as exc:out['mailbox']={'status':'failed','error':safe_error(exc),'messages':messages}
    finally:
        if box:
            try:box.logout()
            except Exception:pass
    return out


def install(app,require_admin):
    @app.post('/api/admin/mail-incident-audit')
    async def audit(request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        async with app.state.pool.acquire() as conn:
            async with conn.transaction(readonly=True):
                rows=await conn.fetch("""select g.business_name,g.public_email,o.outreach_id,o.status,o.sent_at,o.replied_at,o.reply_type,
                    d.status as delivery_status,d.created_at as attempted_at,d.updated_at as attempt_updated_at
                    from outreach o join growth_outreach_targets g on g.target_id=o.entity_id
                    left join mail_delivery_attempts d on d.delivery_key='interest-first:'||o.outreach_id::text||':1'
                    where o.campaign='growth_interest_first' and d.delivery_key is not null
                    order by d.created_at limit 110""")
                observations=await conn.fetch("""select message_key,direction,status,classification,created_at,updated_at from mail_observations
                    where created_at>='2026-11-10T21:00:00Z' order by created_at desc limit 250""")
                observed=await conn.fetchval('select now()')
        evidence=await asyncio.to_thread(provider_evidence,{r['public_email'].lower() for r in rows})
        return seal_export({'observed_at':observed,'campaign_attempts':[dict(r) for r in rows],
             'mail_observations':[dict(r) for r in observations],'provider':evidence,
             'limitations':'Current AUTH/NOOP success does not establish historical acceptance or recipient-specific send eligibility. No retries performed.'},request_id)
