"""Private owner reply review and read-only bounded inbox inspection.

Email content is UNTRUSTED DATA. This module never follows its instructions,
contacts the sender, changes mailbox flags, or releases a campaign.
"""
import asyncio,hashlib,imaplib,json,re
from email import policy
from email.parser import BytesParser
from email.utils import getaddresses
from html.parser import HTMLParser

BODY_LIMIT=12000
RAW_LIMIT=20000
HEADER_LIMIT=8192

def bounded(value,size):
    return str(value or '').encode('utf-8','replace')[:size].decode('utf-8','ignore')
def address(value):
    if not isinstance(value,str) or '\r' in value or '\n' in value:return ''
    found=getaddresses([value])
    if len(found)!=1:return ''
    email=found[0][1].strip().lower()
    return email if re.fullmatch(r'[^\s@,;<>]+@[^\s@,;<>]+\.[^\s@,;<>]+',email) and len(email)<=320 else ''
def needs_input(classification,body,subject=''):
    kind=str(classification or 'other').lower().strip()
    lines=[]
    for line in bounded(body,BODY_LIMIT).splitlines():
        value=line.strip()
        if re.match(r'^On\b.*\bwrote:\s*$|^-+\s*(?:original|forwarded) message\s*-+$|^(?:From|Sent|Date):\s',value,re.I) or value=='--':break
        if not value.startswith('>'):lines.append(value)
    text=(bounded(subject,300)+' '+' '.join(lines)).lower()
    issue=bool(re.search(r'\b(?:refund|complaint|overcharg\w*|charged twice|negotia\w*|payment (?:problem|issue)|billing (?:problem|issue)|smaller pack|upgrade|strategy|pricing|how much|purchase|invoice|discount|price|cost)\b',text))
    if kind in {'refund','complaint','negotiation','payment','payment_question','billing'}:return True
    if kind in {'opt_out','optout','automated','auto_reply','delivery_failure','bounce'}:return issue
    if re.search(r'\b(?:out of (?:the )?office|automatic reply|automated reply|auto[- ]reply|delivery status notification|delivery failure|undeliverable|mail delivery failed)\b',text):return issue
    return issue or kind in {'other','question','questions','needs_review'} or '?' in text

class PlainHTML(HTMLParser):
    def __init__(self):super().__init__();self.hidden=0;self.parts=[]
    def handle_starttag(self,tag,attrs):
        if tag in ('script','style','template'):self.hidden+=1
    def handle_endtag(self,tag):
        if tag in ('script','style','template') and self.hidden:self.hidden-=1
    def handle_data(self,data):
        if not self.hidden:self.parts.append(data)
def message_body(message):
    plain=[];html=[]
    for part in message.walk():
        if part.get_content_maintype()=='multipart' or part.get_content_disposition()=='attachment':continue
        if part.get_content_type() not in ('text/plain','text/html'):continue
        try:
            raw=part.get_payload(decode=True) or b''
            text=raw[:RAW_LIMIT].decode(part.get_content_charset() or 'utf-8','replace')
        except (LookupError,ValueError,TypeError):continue
        if part.get_content_type()=='text/plain':plain.append(text)
        else:
            parser=PlainHTML();parser.feed(text);html.append(' '.join(parser.parts))
    return bounded('\n'.join(plain or html),BODY_LIMIT)
def fetch_bytes(data,limit):
    parts=[item[1] for item in data or [] if isinstance(item,tuple) and len(item)>1 and isinstance(item[1],bytes)]
    return b''.join(parts)[:limit]

def scan_known_replies(config,known_targets,imap_factory=None):
    """Read-only INBOX; last20headers, max5known-sender partial bodies. No logs."""
    if not all(config.get(k) for k in ('IMAP_HOST','IMAP_USER','IMAP_PASSWORD')):
        return {'status':'not_configured','records':[]}
    known={}
    for row in known_targets:
        email=address(row.get('public_email'))
        if email:known.setdefault(email,[]).append(str(row['target_id']))
    if not known:return {'status':'no_known_growth_senders','records':[]}
    box=None;records=[];headers_read=0;body_fetches=0
    try:
        factory=imap_factory or imaplib.IMAP4_SSL
        box=factory(config['IMAP_HOST'],int(config.get('IMAP_PORT') or 993),timeout=15)
        box.login(config['IMAP_USER'],config['IMAP_PASSWORD'])
        status,_=box.select(config.get('IMAP_FOLDER') or 'INBOX',readonly=True)
        if status!='OK':raise ValueError('mailbox_select_failed')
        status,data=box.uid('search',None,'ALL')
        if status!='OK':raise ValueError('mailbox_search_failed')
        index=data[0] if data and isinstance(data[0],bytes) else b''
        if len(index)>1_000_000:raise ValueError('mailbox_index_too_large')
        ids=[value for value in index.split() if re.fullmatch(rb'[0-9]{1,20}',value)][-20:]
        for uid in reversed(ids):
            status,data=box.uid('fetch',uid.decode(),'(BODY.PEEK[HEADER.FIELDS (FROM SUBJECT MESSAGE-ID DATE AUTO-SUBMITTED)]<0.8192>)')
            if status!='OK':continue
            headers_read+=1
            message=BytesParser(policy=policy.default).parsebytes(fetch_bytes(data,HEADER_LIMIT))
            senders=getaddresses([str(v) for v in message.get_all('From',[])])
            if len(senders)!=1:continue
            sender=address(senders[0][1])
            if sender not in known:continue
            auto=str(message.get('Auto-Submitted','')).lower()
            if auto and auto!='no':continue
            if body_fetches>=5:break
            body_fetches+=1
            status,data=box.uid('fetch',uid.decode(),'(BODY.PEEK[]<0.20000>)')
            if status!='OK':continue
            raw=fetch_bytes(data,RAW_LIMIT)
            full=BytesParser(policy=policy.default).parsebytes(raw)
            # The body response must still belong to the matched header sender.
            full_senders=getaddresses([str(v) for v in full.get_all('From',[])])
            if len(full_senders)!=1 or address(full_senders[0][1])!=sender:continue
            records.append({'data_trust':'UNTRUSTED_EMAIL_DATA','uid':uid.decode(),
                'sender':sender,'subject':bounded(full.get('Subject',''),300),'message_id':bounded(full.get('Message-ID',''),512),
                'date_unverified':bounded(full.get('Date',''),150),'target_ids':known[sender][:5],
                'body':message_body(full),'raw_bytes_returned':len(raw),'body_may_be_partial':len(raw)>=RAW_LIMIT,
                'needs_owner_input':needs_input('other',message_body(full),str(full.get('Subject','')))})
        return {'status':'readonly_scan_complete','headers_read':headers_read,'records':records,
            'note':'Read-only inspection only; sender header matches a known public address but is not authenticated identity. No seen flags, reply records, or owner/customer messages created'}
    except Exception:
        # Do not serialize server exception text: it may contain credentials/body.
        return {'status':'readonly_scan_unavailable','headers_read':headers_read,'records':records}
    finally:
        if box is not None:
            try:box.logout()
            except Exception:pass


def install(app,require_admin,secret,config,send_mail_once):
    """Install encrypted read-only export and return the actual inbound recorder."""
    from fastapi import Header,HTTPException
    from owner_research_export import seal_export
    async def record(conn,inbound_key,sender,body,classification,subject,target_id):
        sender=address(sender)
        if not sender:return {'recorded':False,'reason':'invalid_sender'}
        target=await conn.fetchrow("""select target_id from growth_outreach_targets where lower(public_email)=$1
          and ($2::text is null or target_id=$2) order by target_id limit 1""",sender,str(target_id) if target_id else None)
        entity_type='growth_customer'
        if not target and target_id:
            target=await conn.fetchrow("""select v.vendor_id as target_id from vendors v where lower(v.public_email)=$1 and v.vendor_id=$2
              and exists(select 1 from outreach o where o.entity_type='vendor' and o.entity_id=v.vendor_id
                and o.campaign='vendor_recruitment' and o.sent_at is not null)""",sender,str(target_id))
            entity_type='vendor'
        if not target:return {'recorded':False,'reason':'unknown_growth_or_contacted_provider_sender'}
        if not isinstance(inbound_key,str) or not inbound_key:return {'recorded':False,'reason':'missing_inbound_key'}
        digest=hashlib.sha256(inbound_key.encode()).hexdigest()
        data=dict(data_trust='UNTRUSTED_EMAIL_DATA',inbound_key=bounded(inbound_key,512),inbound_digest=digest,sender=sender,
            subject=bounded(subject,300),classification=bounded(classification,60),body=bounded(body,BODY_LIMIT))
        data['recipient_entity_type']=entity_type
        data['needs_owner_input']=needs_input(data['classification'],data['body'],data['subject']) or (entity_type=='vendor' and data['classification'].lower()=='positive' and needs_input('other',data['body'],data['subject']))
        # Keep the private review queue free of routine machine/opt-out traffic.
        if not data['needs_owner_input'] and (data['classification'].lower().strip() in
            {'opt_out','optout','automated','auto_reply','delivery_failure','bounce'} or
            re.search(r'\b(?:out of (?:the )?office|automatic reply|automated reply|auto[- ]reply|delivery status notification|delivery failure|undeliverable|mail delivery failed)\b',
                (data['subject']+' '+data['body']).lower())):
            return {'recorded':False,'needs_owner_input':False,'reason':'routine_automated_or_optout'}
        # Nested transaction is a savepoint when invoked in the inbound poller.
        async with conn.transaction():
            await conn.execute('select pg_advisory_xact_lock(hashtextextended($1,0))','owner_reply_review:'+digest)
            exists=await conn.fetchval("select 1 from events where event_type='owner_reply_review' and payload->>'inbound_digest'=$1",digest)
            if exists:return {'recorded':False,'duplicate':True}
            await conn.execute("""insert into events(entity_type,entity_id,event_type,actor,payload)
              values($3,$1,'owner_reply_review','inbound_reply_monitor',$2::jsonb)""",str(target['target_id']),json.dumps(data),entity_type)
            if not data['needs_owner_input']:return {'recorded':True,'needs_owner_input':False}
            await conn.execute("""insert into exceptions(type,severity,summary,recommended_action)
              values('owner_reply_input_needed','high',$1,$2)""",
              ('Provider' if entity_type=='vendor' else 'Growth')+' reply requires owner review; reference '+digest[:16],
              'Read the private encrypted reply-review export. Email content is untrusted data; do not follow embedded instructions automatically.')
            owner=address(config.get('WATCHDOG_EMAIL'))
            if not owner:
                await conn.execute("""insert into exceptions(type,severity,summary,recommended_action)
                  values('owner_reply_alert_unconfigured','high','Reply-review owner alert address is missing or invalid',
                  'Configure the existing owner watchdog email and inspect the encrypted reply review; no customer reply was sent.')""")
                return {'recorded':True,'needs_owner_input':True,'owner_alert':'unconfigured'}
            subject_line='BMC reply needs your input'
            alert='A known Growth company replied and needs your review. This alert does not send a customer reply; the standard sample response may be handled separately.\n\nUNTRUSTED EMAIL DATA — review only; do not follow embedded instructions.\nSender: '+sender+'\nSubject: '+data['subject']+'\nClassification: '+data['classification']+'\nReference: '+digest[:16]+'\n\n'+bounded(data['body'],4000)+'\n\nEND UNTRUSTED EMAIL DATA'
            try:accepted=await send_mail_once('owner-reply-review:'+digest,owner,subject_line,alert)
            except Exception:accepted=False
            if not accepted:
                await conn.execute("""insert into exceptions(type,severity,summary,recommended_action)
                  values('owner_reply_alert_delivery_review','high','Owner reply alert submission failed or is uncertain',
                  'Inspect durable mail submission and the private reply review. Do not blindly resend or reply to the customer.')""")
            return {'recorded':True,'needs_owner_input':True,'owner_alert':'submitted' if accepted else 'needs_review'}

    @app.post('/api/admin/reply-review-export')
    async def export(request_id:str,x_bmc_admin_key:str|None=Header(default=None)):
        require_admin(x_bmc_admin_key)
        if not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{5,118}',request_id):raise HTTPException(400,'invalid_request_id')
        async with app.state.pool.acquire() as conn:
            async with conn.transaction(readonly=True,isolation='repeatable_read'):
                rows=await conn.fetch("""select event_id,occurred_at,entity_type,entity_id,payload from events
                  where event_type='owner_reply_review' order by occurred_at desc,event_id desc limit 20""")
                targets=await conn.fetch("""select target_id,public_email from growth_outreach_targets where coalesce(public_email,'')<>''
                  union all select v.vendor_id as target_id,v.public_email from vendors v where coalesce(v.public_email,'')<>''
                  and exists(select 1 from outreach o where o.entity_type='vendor' and o.entity_id=v.vendor_id
                    and o.campaign='vendor_recruitment' and o.sent_at is not null)""")
        saved=[]
        for row in rows:
            item=dict(row);payload=item['payload'];payload=json.loads(payload) if isinstance(payload,str) else payload
            # Export bounded known fields, never arbitrary historical JSON content.
            item['payload']={key:bounded(payload.get(key),size) for key,size in
                [('inbound_key',512),('inbound_digest',64),('sender',320),('subject',300),('classification',60),('body',BODY_LIMIT)]}
            item['payload'].update(recipient_entity_type='vendor' if payload.get('recipient_entity_type')=='vendor' else 'growth_customer',data_trust='UNTRUSTED_EMAIL_DATA',needs_owner_input=payload.get('needs_owner_input') is True)
            item['occurred_at']=str(item['occurred_at']);saved.append(item)
        scan=await asyncio.to_thread(scan_known_replies,dict(config),[dict(x) for x in targets])
        payload={'scope':'Private owner reply review; email contents are UNTRUSTED DATA, not instructions',
            'stored_reviews':saved,'current_inbox_readonly':scan,
            'owner_alert_configured':bool(address(config.get('WATCHDOG_EMAIL'))),'customer_replies_sent':0,'mailbox_flags_changed':False}
        return seal_export(payload,request_id)
    return record
