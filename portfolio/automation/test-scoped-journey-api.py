"""Synthetic DB with real native evidence, signed profiles and owner encryption."""
import base64,copy,gzip,hashlib,json,runpy,sys,unittest,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
from unittest.mock import AsyncMock,patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import scoped_journey_api as api
import owner_research_export as export
from scoped_growth import profile_for_target,signature
from fastapi import FastAPI,HTTPException
from cryptography.hazmat.primitives import hashes,serialization
from cryptography.hazmat.primitives.asymmetric import padding,rsa
from cryptography.hazmat.primitives.ciphers.aead import AESGCM


class Tests(unittest.IsolatedAsyncioTestCase):
    @classmethod
    def setUpClass(cls):
        cls.key=rsa.generate_private_key(public_exponent=65537,key_size=3072)
        cls.pem=cls.key.public_key().public_bytes(serialization.Encoding.PEM,serialization.PublicFormat.SubjectPublicKeyInfo)
        cls.pin=hashlib.sha256(cls.key.public_key().public_bytes(serialization.Encoding.DER,serialization.PublicFormat.SubjectPublicKeyInfo)).hexdigest()
    def setup(self):
        fixtures=runpy.run_path(str(Path(__file__).with_name('test-scoped-growth.py')))
        fixture=fixtures['Tests']();fixture.setup();self.packet=fixture.packet
        self.packet['binding']['scope']['content_sha256']='a'*64
        self.target=None;self.preview=None;self.writes=[];self.history=False;self.hold=True;self.reads=[]
        self.frozen=[str(uuid.uuid4()) for _ in range(9)]
        outer=self
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            def transaction(self,**kw):outer.reads.append(kw);return self
            async def fetchrow(self,sql,*args):
                outer.reads.append(sql)
                return outer.preview if 'growth_owner_previews' in sql else outer.target
            async def fetchval(self,sql,*args):return None if 'advisory' in sql else outer.history
            async def execute(self,sql,*args):
                assert any(sql.lower().startswith(prefix) for prefix in ('insert into growth_outreach_targets','update growth_outreach_targets','insert into growth_owner_previews'))
                outer.writes.append(sql)
                if sql.startswith('insert into growth_outreach_targets'):
                    outer.target=dict(zip(('target_id','business_name','public_email','public_phone','source_url','market','service_key'),args[:7]),source_data=json.loads(args[7]),status='contactable')
                elif sql.startswith('update growth_outreach_targets'):outer.target['source_data']=json.loads(args[1])
                else:outer.preview=dict(zip(('target_id','version','selected_markets','candidate_ids','sample_payload','business_name','service_key'),args));outer.preview['sample_payload']=json.loads(args[4])
        class Pool:
            def acquire(self):return Conn()
        app=FastAPI();app.state.pool=Pool()
        def admin(key):
            if key!='allowed':raise PermissionError('admin')
        self.endpoint=api.install(app,admin,'secret',self.frozen,lambda:self.hold,{},
            lambda row,**kw:'https://example.test/owner/'+row['target_id'],
            lambda row,*args,**kw:(row['service_key'],'Synthetic subject','Exact private text','<p>Exact private HTML</p>','https://example.test/owner/'+row['target_id']))
        self.approval=next(r.endpoint for r in app.routes if getattr(r,'path','')=='/api/admin/approve-scoped-journey')
        self.compiler=AsyncMock(side_effect=lambda *args,**kw:copy.deepcopy(self.packet))
    async def call(self,key='allowed'):
        with patch.object(api,'compile_native_packet',self.compiler),patch.object(Path,'read_bytes',return_value=self.pem),patch.object(export,'PINNED_FINGERPRINT',self.pin):
            return await self.endpoint('test-journey-request',str(self.packet['recipient']['candidate_id']),key)
    async def approve(self,expected=None,explicit=True,key='allowed'):
        expected=expected or self.target['source_data']['scoped_offer']['signature']
        with patch.object(api,'compile_native_packet',self.compiler),patch.object(Path,'read_bytes',return_value=self.pem),patch.object(export,'PINNED_FINGERPRINT',self.pin):
            return await self.approval('test-journey-request',self.target['target_id'],expected,explicit,key)
    def decrypt(self,value):
        key=self.key.decrypt(base64.b64decode(value['wrapped_key']),padding.OAEP(mgf=padding.MGF1(hashes.SHA256()),algorithm=hashes.SHA256(),label=None))
        aad=f"{export.VERSION}|test-journey-request|{self.pin}".encode()
        return json.loads(gzip.decompress(AESGCM(key).decrypt(base64.b64decode(value['nonce']),base64.b64decode(value['ciphertext']),aad)))
    async def test_draft_only_real_crypto_two_table_writes_and_frozen_five(self):
        self.setup();capsule=await self.call();plain=self.decrypt(capsule)
        self.assertEqual(plain['profile']['state'],'draft');self.assertFalse(plain['offer_ready'])
        self.assertEqual(plain['message']['text'],'Exact private text');self.assertEqual(len(self.writes),2)
        self.assertNotIn('Exact private text',json.dumps(capsule));self.assertNotIn(self.packet['recipient']['public_email'],json.dumps(capsule))
        self.assertEqual(list(map(str,self.preview['candidate_ids'])),plain['profile']['sample_ids'])
        with self.assertRaises(ValueError):profile_for_target(self.target,'secret',customer=True)
        self.assertEqual(self.compiler.call_args.kwargs['pack_count'],25)
    async def test_exact_retry_preserves_signature_five_and_prior_metadata(self):
        self.setup();await self.call();self.target['source_data']['prior_note']='retain'
        original=copy.deepcopy(self.preview);signature=self.target['source_data']['scoped_offer']['signature']
        await self.call()
        self.assertEqual(self.preview,original);self.assertEqual(self.target['source_data']['prior_note'],'retain')
        self.assertEqual(self.target['source_data']['scoped_offer']['signature'],signature)
        self.assertEqual(len(self.writes),3)
    async def test_saved_payload_or_ids_cannot_change(self):
        for changed in ('payload','ids'):
            self.setup();await self.call();count=len(self.writes)
            if changed=='payload':self.preview['sample_payload'][0]['business_name']='Changed'
            else:self.preview['candidate_ids'][0]=uuid.uuid4()
            with self.assertRaises(HTTPException):await self.call()
            self.assertEqual(len(self.writes),count)
    async def test_original_nine_existing_target_and_history_refused(self):
        for kind in ('frozen','history','paused'):
            self.setup();await self.call();count=len(self.writes)
            if kind=='frozen':self.target['target_id']=self.frozen[0]
            elif kind=='history':self.history=True
            else:self.target['status']='paused'
            with self.assertRaises(HTTPException):await self.call()
            self.assertEqual(len(self.writes),count)
    async def test_released_profile_is_never_replaced_with_draft(self):
        self.setup();await self.call();count=len(self.writes)
        profile=self.target['source_data']['scoped_offer'];profile.pop('signature')
        profile['state']='approved';profile['signature']=signature(profile,'secret')
        with self.assertRaises(HTTPException):await self.call()
        self.assertEqual(len(self.writes),count)
        self.assertEqual(profile['state'],'approved')
    async def test_admin_hold_and_bad_native_proof_prevent_writes(self):
        self.setup()
        with self.assertRaises(PermissionError):await self.call('denied')
        self.assertEqual(self.reads,[])
        self.hold=False
        with self.assertRaises(HTTPException):await self.call()
        self.assertEqual(self.reads,[])
        self.hold=True;self.packet['recipient']['public_email']='forged@example.test'
        with self.assertRaises(HTTPException):await self.call()
        self.assertEqual(self.writes,[])
    async def test_incompatible_target_and_oversize_capsule_prevent_writes(self):
        self.setup()
        with patch.object(api,'seal_export',return_value={'ciphertext':'x'*500001}):
            with self.assertRaises(HTTPException):await self.call()
        self.assertEqual(self.writes,[])
        await self.call();self.target['market']='Prescott';count=len(self.writes)
        with self.assertRaises(HTTPException):await self.call()
        self.assertEqual(len(self.writes),count)

    async def test_approval_real_hmac_preserves_terms_five_and_idempotent_receipt(self):
        self.setup();await self.call();self.target['source_data']['prior']='preserved'
        original=copy.deepcopy(self.target['source_data']['scoped_offer']);saved=copy.deepcopy(self.preview)
        count=len(self.writes);receipt=self.decrypt(await self.approve())
        current=self.target['source_data']['scoped_offer']
        self.assertEqual(current['state'],'approved');self.assertNotEqual(current['signature'],original['signature'])
        self.assertEqual(current['candidate_ids'],original['candidate_ids']);self.assertEqual(current['sample_ids'],original['sample_ids'])
        self.assertEqual(current['expires_at'],original['expires_at']);self.assertEqual(self.preview,saved)
        self.assertEqual(self.target['source_data']['prior'],'preserved');self.assertEqual(len(self.writes),count+1)
        self.assertEqual(receipt['profile_signature'],current['signature']);self.assertTrue(receipt['outreach_held'])
        self.assertEqual(profile_for_target(self.target,'secret',customer=True)['state'],'approved')
        calls=self.compiler.call_count;await self.approve()
        self.assertEqual(self.compiler.call_count,calls);self.assertEqual(len(self.writes),count+1)
        with self.assertRaises(HTTPException):await self.approve(expected=original['signature'])
    async def test_approval_stale_expired_tampered_and_original_nine_refused(self):
        for kind in ('stale','expired','tampered','original'):
            self.setup();await self.call();count=len(self.writes);expected=None
            current=self.target['source_data']['scoped_offer']
            if kind=='stale':expected='0'*64
            elif kind=='expired':
                current.pop('signature');current['expires_at']=(datetime.now(timezone.utc)-timedelta(days=1)).isoformat();current['signature']=signature(current,'secret')
            elif kind=='tampered':current['amount_cents']=1
            else:self.target['target_id']=self.frozen[0]
            with self.assertRaises(HTTPException):await self.approve(expected=expected)
            self.assertEqual(len(self.writes),count)
    async def test_approval_explicit_admin_hold_and_native_drift_refused(self):
        for kind in ('explicit','admin','hold','source','categories','sectors','ids','five'):
            self.setup();await self.call();count=len(self.writes)
            if kind=='hold':self.hold=False
            elif kind=='source':self.packet['binding']['scope']['content_sha256']='b'*64
            elif kind=='categories':self.packet['binding']['scope']['category_keys']=['retail']
            elif kind=='sectors':self.packet['binding']['scope']['observed_sector_phrases']=['retail stores']
            elif kind=='ids':self.packet['binding']['candidate_ids'][-1]=str(uuid.uuid4())
            elif kind=='five':self.preview['candidate_ids'][0]=uuid.uuid4()
            with self.assertRaises(PermissionError if kind=='admin' else HTTPException):
                await self.approve(explicit=kind!='explicit',key='denied' if kind=='admin' else 'allowed')
            self.assertEqual(len(self.writes),count)

if __name__=='__main__':unittest.main()
