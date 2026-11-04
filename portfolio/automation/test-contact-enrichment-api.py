"""Offline collector tests: actual native parse, attestations and owner encryption.

All transport/database access is synthetic. No public company fixtures.
"""
import copy
import hashlib
import json
import sys
import unittest
import uuid
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).resolve().parent/'api'))
if Path('/app').is_dir():sys.path.insert(0,'/app')
from fastapi import FastAPI,HTTPException
import contact_enrichment_api as api
from official_research import FetchedPageReceipt,parse_record,auto_evidence_valid

SECRET='synthetic-api-secret'
URL='https://fixture.example.test/'
CONTACT=URL+'contact'
EMAIL='office@different-mail.example'
NAME='Synthetic Wash LLC'
PHONE='602-555-0100'
ADDRESS='100 Main Street, Phoenix, AZ 85004'
ENTITY={'@type':'LocalBusiness','name':NAME,'url':URL,'telephone':PHONE,
    'description':'Commercial pressure washing','address':{'streetAddress':'100 Main Street',
        'addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}


def receipt(url,document):
    raw=document.encode()
    return FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),datetime.now(timezone.utc).isoformat(),200,'text/html',())


def primary():return receipt(URL,'<script type="application/ld+json">'+json.dumps(ENTITY)+'</script>')


def contact(address=ADDRESS,email=EMAIL):
    return receipt(CONTACT,'<section><h1>'+NAME+'</h1><p>'+PHONE+'</p><address>'+address+'</address><a href="mailto:'+email+'">Email us</a></section>')


class Request:
    def __init__(self,body):self.data=body
    async def body(self):return json.dumps(self.data).encode()


class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self,protected=False):
        self.cid=uuid.uuid4();p=primary()
        self.row={'candidate_id':self.cid,'side':'vendor','category_key':'pressure_washing','category_label':'Pressure washing',
            'market':'Phoenix','business_name':NAME,'status':'discovered','closed_at':None,'promoted_entity_id':None,'official_site':True}
        self.row.update(parse_record(self.row,URL,p.document,p.content_sha256,SECRET))
        self.row['evidence']['private_metadata']='preserve'
        self.body={'candidate_id':str(self.cid),'contact_url':CONTACT,'public_email':EMAIL}
        self.calls=[];self.payloads=[];self.history=False;self.history_after_fetch=False;self.history_checks=0
        self.changed_after_fetch=False;self.fetching_complete=False;self.active_connections=0;outer=self
        class Tx:
            async def __aenter__(self):self.snapshot=copy.deepcopy(outer.row)
            async def __aexit__(self,kind,*args):
                if kind:outer.row=self.snapshot
        class Conn:
            def transaction(self,*args,**kwargs):outer.calls.append(('transaction',kwargs));return Tx()
            async def fetchval(self,sql,*args):
                outer.calls.append((sql,args))
                if sql==api.HISTORY_SQL:
                    outer.history_checks+=1
                    return outer.history or (outer.history_after_fetch and outer.fetching_complete)
                if 'pg_advisory_xact_lock' in sql:return None
                raise AssertionError('Unexpected SQL')
            async def fetchrow(self,sql,*args):
                outer.calls.append((sql,args))
                if sql.startswith('update '):
                    outer.row['public_email']=args[1]
                    outer.row['evidence']['contact_verification']=json.loads(args[2])
                    return copy.deepcopy(outer.row)
                if sql.startswith(api.SELECT_SQL):
                    value=copy.deepcopy(outer.row)
                    if outer.changed_after_fetch and outer.fetching_complete:value['public_phone']='6025559999'
                    return value
                raise AssertionError('Unexpected SQL')
        class Pool:
            def acquire(self):return self
            async def __aenter__(self):outer.active_connections+=1;return Conn()
            async def __aexit__(self,*args):outer.active_connections-=1
        self.app=FastAPI();self.app.state.pool=Pool()
        def admin(key):
            if key!='admin':raise HTTPException(403,'forbidden')
        api.install(self.app,admin,SECRET,['inventory:'+str(self.cid)] if protected else [])
        self.hash_endpoint=next(r.endpoint for r in self.app.routes if getattr(r,'path','')=='/api/admin/enrich-native-contact-by-hash')
        self.hash_body={'candidate_id':str(self.cid),'contact_path':'/contact','email_sha256':hashlib.sha256(EMAIL.lower().encode()).hexdigest()}
        self.endpoint=next(r.endpoint for r in self.app.routes if getattr(r,'path','')=='/api/admin/enrich-native-contact')

    async def invoke(self,body=None,key='admin',c=None,failure=None,hashed=False):
        count=[];real_seal=api.seal_export
        def fetch(url):
            self.assertEqual(self.active_connections,0,'No DB connection may be held across transport')
            count.append(url)
            if failure:raise failure
            if len(count)==2:self.fetching_complete=True
            return primary() if url==URL else (c or contact())
        def seal(payload,request_id):self.payloads.append(copy.deepcopy(payload));return real_seal(payload,request_id)
        with patch.object(api,'fetch_page_receipt',side_effect=fetch),patch.object(api,'seal_export',side_effect=seal):
            endpoint=self.hash_endpoint if hashed else self.endpoint
            payload_body=body if body is not None else (self.hash_body if hashed else self.body)
            output=await endpoint(Request(payload_body),'ci-contact-request-001',key)
        for value in (EMAIL,URL,NAME,ADDRESS):self.assertNotIn(value,json.dumps(output))
        return output,count,self.payloads[-1]

    async def test_empty_email_enriched_actual_hmac_preserved_and_capsule_encrypted(self):
        self.setup();before=copy.deepcopy(self.row)
        out,calls,payload=await self.invoke()
        self.assertEqual(payload['status'],'native_contact_enriched');self.assertEqual(sorted(calls),sorted([URL,CONTACT]))
        self.assertEqual(self.row['public_email'],EMAIL);self.assertTrue(auto_evidence_valid(self.row,SECRET))
        self.assertEqual(self.row['evidence']['vps_verification'],before['evidence']['vps_verification'])
        self.assertEqual(self.row['evidence']['private_metadata'],'preserve')
        self.assertEqual({k:v for k,v in self.row.items() if k not in ('public_email','evidence')},
                         {k:v for k,v in before.items() if k not in ('public_email','evidence')})
        writes=[sql for sql,args in self.calls if sql.startswith('update ')]
        self.assertEqual(len(writes),1);self.assertNotIn('updated_at',writes[0]);self.assertNotIn('vps_verification',writes[0])
        self.assertFalse(payload['provider_accepted']);self.assertEqual(payload['outreach_sent'],0)
        self.assertEqual(self.history_checks,2)
        self.assertTrue(any('for update' in sql for sql,args in self.calls))

    async def test_idempotent_existing_attestation_is_read_only_no_fetch(self):
        self.setup();await self.invoke();before=copy.deepcopy(self.row);self.calls=[]
        out,calls,payload=await self.invoke()
        self.assertEqual(payload['status'],'native_contact_already_verified');self.assertEqual(calls,[])
        self.assertEqual(self.row,before);self.assertFalse(any(sql.startswith('update ') for sql,args in self.calls))

    async def test_nonempty_native_mailbox_cannot_change(self):
        self.setup();await self.invoke();self.body['public_email']='new@example.test'
        before=copy.deepcopy(self.row);out,calls,payload=await self.invoke()
        self.assertEqual(payload['gate_reason'],'nonempty_native_mailbox_immutable');self.assertEqual(calls,[]);self.assertEqual(self.row,before)

    async def test_auth_exact_body_and_action_urls(self):
        self.setup()
        with self.assertRaises(HTTPException):await self.invoke(key='invalid')
        for body in (dict(self.body,source_url=URL),dict(self.body,contact_url=URL+'delete'),
                     dict(self.body,contact_url=CONTACT+'?submit=1'),dict(self.body,candidate_id='not-uuid')):
            with self.subTest(body=body),self.assertRaises(HTTPException):await self.invoke(body)
        self.assertFalse(any(sql.startswith('update ') for sql,args in self.calls))

    async def test_protected_native_and_history_held_before_fetch(self):
        for reason in ('protected','history','invalid_native','buyer'):
            self.setup(protected=reason=='protected')
            if reason=='history':self.history=True
            if reason=='invalid_native':self.row['evidence']['vps_verification']['signature']='bad'
            if reason=='buyer':self.row['side']='buyer'
            before=copy.deepcopy(self.row);out,calls,payload=await self.invoke()
            self.assertEqual(payload['status'],'native_contact_held');self.assertEqual(calls,[]);self.assertEqual(self.row,before)

    async def test_late_history_or_native_change_no_update(self):
        for changed in ('history','candidate'):
            self.setup();self.history_after_fetch=changed=='history';self.changed_after_fetch=changed=='candidate'
            before=copy.deepcopy(self.row);out,calls,payload=await self.invoke()
            self.assertEqual(payload['status'],'native_contact_held');self.assertEqual(len(calls),2);self.assertEqual(self.row,before)
            self.assertFalse(any(sql.startswith('update ') for sql,args in self.calls))

    async def test_address_conflict_and_foreign_publisher_fail_closed(self):
        self.setup();out,calls,payload=await self.invoke(c=contact(address='900 Changed Street, Phoenix, AZ 85027'))
        self.assertEqual(payload['gate_reason'],'published_identity_or_address_conflict')
        self.assertEqual(self.row['public_email'],'')
        self.setup();self.body['contact_url']='https://publisher.example/contact'
        out,calls,payload=await self.invoke();self.assertEqual(payload['gate_reason'],'contact_domain_mismatch');self.assertEqual(calls,[])

    async def test_fetch_failure_does_not_leak_exception_or_write(self):
        self.setup();out,calls,payload=await self.invoke(failure=RuntimeError('SECRET_SQL_AND_PRIVATE_PATH'))
        self.assertEqual(payload['gate_reason'],'official_fetch_unavailable')
        self.assertNotIn('SECRET_SQL',json.dumps(payload));self.assertEqual(self.row['public_email'],'')

    async def test_failed_postwrite_check_rolls_back_entire_candidate(self):
        self.setup();before=copy.deepcopy(self.row);real=api.auto_evidence_valid
        checks=[]
        def valid(row,secret):
            if row.get('evidence',{}).get('contact_verification'):
                checks.append(1)
                if len(checks)==2:return False
            return real(row,secret)
        with patch.object(api,'auto_evidence_valid',side_effect=valid):
            out,calls,payload=await self.invoke()
        self.assertEqual(payload['gate_reason'],'updated_native_proof_invalid')
        self.assertEqual(self.row,before)
        self.assertTrue(any(sql.startswith('update ') for sql,args in self.calls))

    async def test_encryption_failure_precedes_any_candidate_write(self):
        self.setup();before=copy.deepcopy(self.row)
        with patch.object(api,'seal_export',side_effect=ValueError('private key failure')):
            with self.assertRaises(ValueError):await self.invoke()
        self.assertEqual(self.row,before)
        self.assertFalse(any(sql.startswith('update ') for sql,args in self.calls))

    async def test_hash_route_server_derives_mailbox_then_checks_full_history(self):
        self.setup();before=copy.deepcopy(self.row)
        self.assertNotIn(EMAIL,json.dumps(self.hash_body));self.assertNotIn(URL,json.dumps(self.hash_body))
        out,calls,payload=await self.invoke(hashed=True)
        self.assertEqual(payload['status'],'native_contact_enriched');self.assertEqual(len(calls),2)
        self.assertTrue(auto_evidence_valid(self.row,SECRET));self.assertEqual(self.row['public_email'],EMAIL)
        self.assertEqual(self.row['evidence']['vps_verification'],before['evidence']['vps_verification'])
        history=[args for sql,args in self.calls if sql==api.HISTORY_SQL]
        self.assertEqual(history[0][2],[]);self.assertEqual(history[1][2],[EMAIL])
        self.assertIn('email:'+EMAIL,history[1][5])

    async def test_hash_route_wrong_hash_and_multiple_mailboxes_never_write(self):
        for mode in ('wrong_hash','multiple'):
            self.setup();before=copy.deepcopy(self.row);c=None
            if mode=='wrong_hash':self.hash_body['email_sha256']='0'*64
            else:
                document=contact().document.replace('</section>','<a href="mailto:another@example.test">Other</a></section>')
                c=receipt(CONTACT,document)
            out,calls,payload=await self.invoke(hashed=True,c=c)
            self.assertEqual(payload['gate_reason'],'published_mailbox_hash_mismatch' if mode=='wrong_hash' else 'exact_single_published_mailbox_unproven')
            self.assertEqual(self.row,before)
            self.assertFalse(any(sql.startswith('update ') for sql,args in self.calls))

    async def test_hash_route_cf_public_decode(self):
        self.setup();encoded='2a'+''.join(f'{ord(x)^42:02x}' for x in EMAIL)
        document=contact().document.replace('<a href="mailto:'+EMAIL+'">Email us</a>',
            '<a href="/cdn-cgi/l/email-protection" data-cfemail="'+encoded+'">[email protected]</a>')
        out,calls,payload=await self.invoke(hashed=True,c=receipt(CONTACT,document))
        self.assertEqual(payload['status'],'native_contact_enriched')
        self.assertEqual(payload['contact_verification']['email_provenance'],['cloudflare_data_cfemail'])

    async def test_hash_path_ssrf_action_and_raw_contact_inputs_rejected(self):
        self.setup()
        for path in ('//attacker.test/contact','https://attacker.test/contact','/contact?email=x',
                     '/contact#x','/../contact','/%2f%2fattacker.test','/contact\\evil','/api/contact','/delete','/contact@evil'):
            with self.subTest(path=path),self.assertRaises(HTTPException):
                await self.invoke(hashed=True,body=dict(self.hash_body,contact_path=path))
        for body in (dict(self.hash_body,public_email=EMAIL),dict(self.hash_body,contact_url=CONTACT),
                     dict(self.hash_body,email_sha256='A'*64)):
            with self.assertRaises(HTTPException):await self.invoke(hashed=True,body=body)
        self.assertEqual(self.calls,[])

    async def test_hash_idempotency_requires_matching_hash_and_same_path(self):
        self.setup();await self.invoke(hashed=True);before=copy.deepcopy(self.row);self.calls=[]
        out,calls,payload=await self.invoke(hashed=True)
        self.assertEqual(payload['status'],'native_contact_already_verified');self.assertEqual(calls,[])
        for body in (dict(self.hash_body,email_sha256='0'*64),dict(self.hash_body,contact_path='/other-contact')):
            out,calls,payload=await self.invoke(hashed=True,body=body)
            self.assertEqual(payload['status'],'native_contact_held');self.assertEqual(calls,[])
        self.assertEqual(self.row,before)

    async def test_hash_protected_late_history_and_rollback(self):
        self.setup(protected=True);out,calls,payload=await self.invoke(hashed=True)
        self.assertEqual(payload['gate_reason'],'protected_candidate');self.assertEqual(calls,[])
        self.setup();self.history_after_fetch=True;before=copy.deepcopy(self.row)
        out,calls,payload=await self.invoke(hashed=True)
        self.assertEqual(payload['gate_reason'],'existing_customer_target_or_history');self.assertEqual(self.row,before)
        self.setup();before=copy.deepcopy(self.row);real=api.auto_evidence_valid;checks=[]
        def valid(row,secret):
            if row.get('evidence',{}).get('contact_verification'):
                checks.append(1)
                if len(checks)==2:return False
            return real(row,secret)
        with patch.object(api,'auto_evidence_valid',side_effect=valid):
            out,calls,payload=await self.invoke(hashed=True)
        self.assertEqual(payload['gate_reason'],'updated_native_proof_invalid');self.assertEqual(self.row,before)

    async def test_actual_schema_relations_and_only_two_column_update(self):
        self.setup();await self.invoke()
        for table in ('growth_outreach_targets','growth_owner_previews','outreach_suppressions','outreach',
                      'vendors','buyers','growth_sample_requests','growth_sample_prospects','growth_order_prospects',
                      'growth_prospect_exposures','growth_email_verifications','orders','growth_purchase_offers','leads'):
            self.assertIn('from '+table,api.HISTORY_SQL)
        self.assertIn('$1::uuid=any(candidate_ids)',api.HISTORY_SQL)
        self.assertFalse(any(sql.lower().startswith(('insert ','delete ')) for sql,args in self.calls))


if __name__=='__main__':unittest.main()
