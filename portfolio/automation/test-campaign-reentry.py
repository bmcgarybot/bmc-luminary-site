"""Synthetic-only additive historical re-entry tests; no database or mail calls."""
import copy,hashlib,json,sys,unittest,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
if Path('/app').is_dir():sys.path.insert(0,'/app')
from fastapi import FastAPI,HTTPException
import campaign_reentry as c

SECRET='synthetic-reentry-key'

class Request:
    def __init__(self,data):self.data=data
    async def body(self):return json.dumps(self.data).encode()

class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self):
        self.target={'target_id':'legacy-synthetic-company','business_name':'Synthetic Exterior LLC',
            'public_email':'office@example.test','market':'Phoenix','service_key':'pressure_washing',
            'status':'contacted','source_data':{'preserved':'metadata'}}
        self.batch=[self.target['target_id']]+['legacy-synthetic-'+str(i) for i in range(6)]
        self.old={'outreach_id':uuid.uuid4(),'entity_type':'growth_customer','entity_id':self.target['target_id'],
            'campaign':'growth_sales','wave':'legacy-wave','status':'sent','opt_out':False,'replied_at':None,'reply_type':None,
            'sent_at':c.CUTOFF-timedelta(days=1),'historical_review_recorded_at':c.CUTOFF+timedelta(days=1),
            'owner_review_required':True,'sequence_step':1}
        self.rows=[copy.deepcopy(self.old)];self.events=[];self.calls=[];self.engaged=False;self.uncertain=False;self.ambiguous=False;outer=self
        class Tx:
            async def __aenter__(self):self.snapshot=(copy.deepcopy(outer.target),copy.deepcopy(outer.events),copy.deepcopy(outer.rows))
            async def __aexit__(self,kind,*args):
                if kind:outer.target,outer.events,outer.rows=self.snapshot
        class Conn:
            def transaction(self,**kwargs):outer.calls.append(('transaction',kwargs));return Tx()
            async def fetchrow(self,sql,*args):
                outer.calls.append((sql,args));return copy.deepcopy(outer.target) if args[0]==outer.target['target_id'] else None
            async def fetch(self,sql,*args):
                outer.calls.append((sql,args))
                if sql==c.MEMBERS_SQL:return [{'entity_id':x} for x in outer.batch]
                if sql in (c.RELATED_SQL,c.RELATED_SQL.replace(' for update of o','')):return copy.deepcopy(outer.rows)
                if 'encode(digest' in sql:
                    key=hashlib.sha256(outer.target['target_id'].encode()).hexdigest()
                    return [{'target_id':outer.target['target_id']}] if key in args[0] else []
                if "source_data ? 'historical_reentry'" in sql:
                    if (args[0].lower()!=outer.target['market'].lower() or args[1]!=outer.target['service_key']
                        or args[3]!=' '.join(c.legal_name(outer.target['business_name']))):return []
                    return [copy.deepcopy(outer.target)]*(2 if outer.ambiguous else 1)
                assert 'lower(public_email)' in sql
                if args[0].lower()!=outer.target['public_email'].lower() or (args[1] and args[1]!=outer.target['target_id']):return []
                return [copy.deepcopy(outer.target)]
            async def fetchval(self,sql,*args):
                outer.calls.append((sql,args))
                if sql==c.ENGAGEMENT_SQL:return outer.engaged
                if sql==c.ATTEMPT_SQL:return outer.uncertain
                assert 'pg_advisory_xact_lock' in sql
            async def execute(self,sql,*args):
                outer.calls.append((sql,args))
                if sql.startswith('update growth_outreach_targets'):
                    outer.target['source_data']=json.loads(args[1]);return 'UPDATE 1'
                assert sql.startswith('insert into events');outer.events.append(json.loads(args[1]));return 'INSERT 0 1'
        self.conn=Conn()
        class Pool:
            def acquire(self):return self
            async def __aenter__(self):return outer.conn
            async def __aexit__(self,*args):pass
        self.app=FastAPI();self.app.state.pool=Pool()
        def admin(key):
            if key!='admin':raise HTTPException(403,'forbidden')
        c.install(self.app,admin,SECRET)
        self.endpoint=next(r.endpoint for r in self.app.routes if getattr(r,'path','')=='/api/admin/authorize-historical-growth-reentry')
        self.body={'target_hashes':[hashlib.sha256(self.target['target_id'].encode()).hexdigest()]}

    async def authorize(self):return await c.authorize(self.conn,self.target['target_id'],SECRET,'ci-reentry-request-001')
    def recipient(self,**kw):return dict(business_name=self.target['business_name'],public_email=self.target['public_email'],market=self.target['market'],category_key=self.target['service_key'],**kw)
    def newrow(self):
        row=dict(self.old,outreach_id=uuid.uuid4(),wave='new-scoped-wave',status='queued',sent_at=None,
                 historical_review_recorded_at=None,owner_review_required=False,sequence_step=0)
        self.rows.append(row);return row

    async def test_authorization_preserves_original_ledger_and_live_preparation(self):
        self.setup();old=copy.deepcopy(self.rows);a=await self.authorize()
        self.assertEqual(self.rows,old);self.assertFalse(a['already_authorized']);self.assertEqual(self.target['source_data']['preserved'],'metadata')
        result=await c.approved_reentry(self.conn,self.recipient(),SECRET)
        self.assertEqual(result['expected_email'],'office@example.test');self.assertTrue(result['preparation_only'])
        token=result['token'];self.assertEqual(token['old_outreach_ids'],[str(self.old['outreach_id'])])
        self.assertEqual(c.when(token['expires_at'])-c.when(token['authorized_at']),timedelta(days=14))
        self.assertEqual(len(self.events),1)
        again=await self.authorize();self.assertTrue(again['already_authorized']);self.assertEqual(len(self.events),1)

    async def test_empty_email_requires_exact_unique_legal_market_service_and_returns_expected_mail(self):
        self.setup();await self.authorize();recipient=self.recipient();recipient['public_email']=''
        result=await c.approved_reentry(self.conn,recipient,SECRET);self.assertEqual(result['expected_email'],'office@example.test')
        for field,value in (('business_name','Other Exterior'),('market','Prescott'),('category_key','commercial_cleaning')):
            bad=dict(recipient);bad[field]=value
            with self.subTest(field=field),self.assertRaises(c.ReentryHeld):await c.approved_reentry(self.conn,bad,SECRET)
        self.ambiguous=True
        with self.assertRaises(c.ReentryHeld):await c.approved_reentry(self.conn,recipient,SECRET)

    async def test_wrong_nonempty_email_name_service_market_and_target_rejected(self):
        self.setup();await self.authorize()
        for field,value in (('public_email','other@example.test'),('business_name','Different Company'),('category_key','commercial_cleaning'),('market','Prescott'),('target_id','other-target')):
            recipient=self.recipient();recipient[field]=value
            with self.subTest(field=field),self.assertRaises(c.ReentryHeld):await c.approved_reentry(self.conn,recipient,SECRET)

    async def test_current_twelve_or_nonhistorical_related_outreach_cannot_enter(self):
        for mode in ('cutoff','review_null','nonmember','other_campaign'):
            self.setup()
            if mode=='cutoff':self.rows[0]['sent_at']=c.CUTOFF
            if mode=='review_null':self.rows[0]['historical_review_recorded_at']=None
            if mode=='nonmember':self.batch[0]='current-authorized-target'
            if mode=='other_campaign':self.rows.append(dict(self.old,outreach_id=uuid.uuid4(),entity_type='vendor',campaign='vendor_recruitment'))
            with self.subTest(mode=mode),self.assertRaises(c.ReentryHeld):await self.authorize()
            self.assertNotIn('historical_reentry',self.target['source_data'])

    async def test_optout_reply_sample_order_provider_and_uncertain_mail_hold_live(self):
        for mode in ('optout','reply','reply_type','engagement'):
            self.setup();await self.authorize()
            if mode=='optout':self.rows[0]['opt_out']=True
            if mode=='reply':self.rows[0]['replied_at']=datetime.now(timezone.utc)
            if mode=='reply_type':self.rows[0]['reply_type']='positive'
            if mode=='engagement':self.engaged=True
            with self.subTest(mode=mode),self.assertRaises(c.ReentryHeld):await c.approved_reentry(self.conn,self.recipient(),SECRET)
        for table in ('outreach_suppressions','events','growth_sample_requests','growth_prospect_exposures','orders','growth_purchase_offers','vendors','lead_matches'):
            self.assertIn('from '+table,c.ENGAGEMENT_SQL)

    async def test_explicit_new_campaign_keeps_old_uncertain_claim_without_retry(self):
        self.setup();self.uncertain=True
        before=copy.deepcopy(self.rows)
        await self.authorize()
        result=await c.approved_reentry(self.conn,self.recipient(),SECRET)
        self.assertTrue(result['preparation_only'])
        self.assertEqual(self.rows,before)

    async def test_read_only_preview_never_uses_locks_or_consumes(self):
        self.setup();await self.authorize();self.calls=[]
        result=await c.approved_reentry(self.conn,self.recipient(),SECRET,read_only=True)
        self.assertTrue(result['preparation_only'])
        self.assertFalse(any('for update' in call[0].lower() or 'pg_advisory' in call[0].lower() or call[0].startswith(('update ','insert ')) for call in self.calls))
        with self.assertRaises(c.ReentryHeld):
            await c.approved_reentry(self.conn,self.recipient(),SECRET,consume=uuid.uuid4(),read_only=True)

    async def test_tampering_expiry_and_base_oldproof_change(self):
        for mode in ('tamper','expired','oldproof'):
            self.setup();await self.authorize();token=self.target['source_data']['historical_reentry']
            if mode=='tamper':token['email']='other@example.test'
            if mode=='expired':
                token.pop('signature');token['authorized_at']=(datetime.now(timezone.utc)-timedelta(days=15)).isoformat();token['expires_at']=(datetime.now(timezone.utc)-timedelta(days=1)).isoformat();token['signature']=c.mac(token,SECRET)
            if mode=='oldproof':self.rows[0]['wave']='changed-old-wave'
            with self.subTest(mode=mode),self.assertRaises(c.ReentryHeld):await c.approved_reentry(self.conn,self.recipient(),SECRET)

    async def test_consume_binds_one_new_uuid_without_touching_old_sends(self):
        self.setup();await self.authorize();old=copy.deepcopy(self.rows[0]);new=self.newrow()
        result=await c.consume_reentry(self.conn,self.recipient(),SECRET,new['outreach_id'])
        self.assertEqual(result['token']['consumed_outreach_id'],str(new['outreach_id']));self.assertEqual(self.rows[0],old)
        self.assertEqual(len(self.events),2)
        again=await c.consume_reentry(self.conn,self.recipient(),SECRET,new['outreach_id'])
        self.assertTrue(again['already_consumed']);self.assertEqual(len(self.events),2)
        with self.assertRaises(c.ReentryHeld):await c.approved_reentry(self.conn,self.recipient(),SECRET)
        other=self.newrow()
        with self.assertRaises(c.ReentryHeld):await c.consume_reentry(self.conn,self.recipient(),SECRET,other['outreach_id'])
        for sql,args in self.calls:
            self.assertFalse(sql.startswith(('delete ','update outreach','insert into outreach','update mail_')))

    async def test_consume_requires_new_uuid_and_final_nonempty_email(self):
        self.setup();await self.authorize()
        with self.assertRaises(c.ReentryHeld):await c.consume_reentry(self.conn,self.recipient(),SECRET,self.old['outreach_id'])
        new=self.newrow();recipient=self.recipient();recipient['public_email']=''
        with self.assertRaises(c.ReentryHeld):await c.consume_reentry(self.conn,recipient,SECRET,new['outreach_id'])
        with self.assertRaises(c.ReentryHeld):await c.approved_reentry(self.conn,self.recipient(),SECRET,consume=True)

    async def test_api_opaque_hashes_encrypted_response_and_unknown_hash_no_writes(self):
        self.setup();out=await self.endpoint(Request(self.body),'ci-reentry-request-001','admin')
        encoded=json.dumps(out)
        for private in (self.target['target_id'],self.target['public_email'],self.target['business_name']):self.assertNotIn(private,encoded)
        self.setup();out=await self.endpoint(Request({'target_hashes':['a'*64]}),'ci-reentry-request-001','admin')
        self.assertNotIn('historical_reentry',self.target['source_data']);self.assertEqual(self.events,[])
        for body in ({'target_ids':[self.target['target_id']]},{'target_hashes':self.body['target_hashes']*2},{'target_hashes':['a'*64]*8}):
            with self.assertRaises(HTTPException):await self.endpoint(Request(body),'ci-reentry-request-001','admin')
        with self.assertRaises(HTTPException):await self.endpoint(Request(self.body),'ci-reentry-request-001','wrong')

    async def test_logical_identity_case_and_legal_suffix_do_not_change_token(self):
        self.setup();await self.authorize();token=copy.deepcopy(self.target['source_data']['historical_reentry'])
        self.target.update(business_name='SYNTHETIC EXTERIOR INC',public_email='OFFICE@EXAMPLE.TEST',market='PHOENIX')
        approval=await c.approved_reentry(self.conn,self.recipient(),SECRET)
        self.assertEqual(approval['token'],token)
        self.assertEqual(token['business_name'],'synthetic exterior');self.assertEqual(token['email'],'office@example.test')
        self.assertEqual(token['market'],'phoenix')
        for field,value in (('business_name','Different Exterior'),('public_email','other@example.test'),('service_key','commercial_cleaning')):
            before=copy.deepcopy(self.target);self.target[field]=value
            with self.subTest(field=field),self.assertRaises(c.ReentryHeld):
                await c.approved_reentry(self.conn,self.recipient(),SECRET)
            self.target=before

    async def test_api_each_company_transaction_optout_does_not_rollback_eligible(self):
        self.setup();eligible=self.target['target_id'];held='legacy-other-company'
        mapping={hashlib.sha256(x.encode()).hexdigest():x for x in (eligible,held)}
        base_fetch=self.conn.fetch;real_seal=c.seal_export;clear=[]
        async def fetch(sql,*args):
            if 'encode(digest' in sql:return [{'target_id':x} for x in mapping.values()]
            return await base_fetch(sql,*args)
        real_authorize=c.authorize
        async def authorize(conn,tid,*args):
            if tid==held:raise c.ReentryHeld('response_or_optout_history')
            return await real_authorize(conn,tid,*args)
        def seal(payload,request_id):clear.append(copy.deepcopy(payload));return real_seal(payload,request_id)
        with patch.object(self.conn,'fetch',side_effect=fetch),patch.object(c,'authorize',side_effect=authorize),patch.object(c,'seal_export',side_effect=seal):
            out=await self.endpoint(Request({'target_hashes':list(mapping)}),'ci-reentry-request-001','admin')
        result=clear[-1];self.assertEqual((result['authorized'],result['held']),(1,1))
        self.assertIn('historical_reentry',self.target['source_data']);self.assertEqual(len(self.events),1)
        self.assertEqual(self.rows,[self.old]);self.assertEqual(self.calls[0],('transaction',{'readonly':True}))
        self.assertEqual(sum(sql=='transaction' for sql,args in self.calls),3)
        self.assertEqual(sum(p['status']=='historical_reentry_authorized' for p in clear),2)

    async def test_one_company_encryption_failure_rolls_back_before_commit(self):
        self.setup();real=c.seal_export;calls=[]
        def seal(payload,request_id):
            calls.append(1)
            if len(calls)==1:raise ValueError('synthetic encryption failure')
            return real(payload,request_id)
        with patch.object(c,'seal_export',side_effect=seal):
            await self.endpoint(Request(self.body),'ci-reentry-request-001','admin')
        self.assertNotIn('historical_reentry',self.target['source_data']);self.assertEqual(self.events,[])
        self.assertEqual(self.rows,[self.old])

    async def test_membership_must_be_exact_seven_not_arbitrary_cutoff_cohort(self):
        self.setup();self.batch=self.batch[:-1]
        with self.assertRaises(c.ReentryHeld):await self.authorize()
        self.assertEqual(self.events,[])


if __name__=='__main__':unittest.main()
