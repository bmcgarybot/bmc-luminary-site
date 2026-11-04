"""Real cryptographic roundtrip and rejection checks; no production keys/data."""
import base64,gzip,hashlib,json,sys,unittest
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import owner_research_export as export
from cryptography.hazmat.primitives import hashes,serialization
from cryptography.hazmat.primitives.asymmetric import padding,rsa
from cryptography.hazmat.primitives.ciphers.aead import AESGCM
from cryptography.exceptions import InvalidTag

class ExportTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.key=rsa.generate_private_key(public_exponent=65537,key_size=3072)
        cls.pem=cls.key.public_key().public_bytes(serialization.Encoding.PEM,serialization.PublicFormat.SubjectPublicKeyInfo)
        cls.fingerprint=hashlib.sha256(cls.key.public_key().public_bytes(serialization.Encoding.DER,serialization.PublicFormat.SubjectPublicKeyInfo)).hexdigest()
    def seal(self,payload):
        with patch.object(Path,'read_bytes',return_value=self.pem),patch.object(export,'PINNED_FINGERPRINT',self.fingerprint):
            return export.seal_export(payload,'test-research-export-123')
    def decrypt(self,value,request_id=None):
        secret=self.key.decrypt(base64.b64decode(value['wrapped_key']),padding.OAEP(mgf=padding.MGF1(hashes.SHA256()),algorithm=hashes.SHA256(),label=None))
        aad=f"{export.VERSION}|{request_id or value['request_id']}|{value['key_fingerprint']}".encode()
        return json.loads(gzip.decompress(AESGCM(secret).decrypt(base64.b64decode(value['nonce']),base64.b64decode(value['ciphertext']),aad)))
    def test_roundtrip_and_freshness(self):
        payload={'business':'CONFIDENTIAL BUSINESS','email':'private@example.invalid'}
        a=self.seal(payload);b=self.seal(payload)
        self.assertEqual(self.decrypt(a),payload)
        self.assertNotEqual(a['ciphertext'],b['ciphertext'])
        self.assertNotIn(payload['business'],json.dumps(a))
        self.assertNotIn(payload['email'],json.dumps(a))
    def test_tamper_and_context_rejected(self):
        value=self.seal({'x':1});raw=bytearray(base64.b64decode(value['ciphertext']));raw[0]^=1
        changed=dict(value,ciphertext=base64.b64encode(raw).decode())
        with self.assertRaises(InvalidTag):self.decrypt(changed)
        with self.assertRaises(InvalidTag):self.decrypt(value,'another-request-123')
    def test_wrong_pin_and_bad_ids_rejected(self):
        with patch.object(Path,'read_bytes',return_value=self.pem),patch.object(export,'PINNED_FINGERPRINT','0'*64):
            with self.assertRaisesRegex(ValueError,'pin_mismatch'):export.seal_export({},'test-research-export-123')
        for value in ('../file','a&b=unsafe','short'):
            with self.assertRaises(ValueError):export.seal_export({},value)
    def test_forgery_is_not_verified_and_secrets_excluded(self):
        row={'business_name':'Candidate','evidence':{'researched_by':'vps_primary_site_v1','private_note':'SECRET'},'admin_key':'SECRET'}
        value=export.reviewed_row(row,'test')
        self.assertEqual(value['readiness'],'candidate_requires_review')
        self.assertNotIn('SECRET',json.dumps(value))
    def test_export_uses_readonly_transaction_and_checks_admin_first(self):
        import asyncio
        from fastapi import FastAPI
        calls=[]
        class Context:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            def transaction(self,**kwargs):
                calls.append(kwargs)
                if kwargs.get('readonly') is not True:raise AssertionError('writable export')
                return self
            async def fetch(self,query,*args):
                if not query.lstrip().lower().startswith(('select','with')):raise AssertionError('non-read query')
                calls.append('fetch')
                return []
        class Pool:
            def acquire(self):return Context()
        def require(value):
            if value!='allowed':raise PermissionError('admin required')
        app=FastAPI();app.state.pool=Pool();export.install(app,require,['Phoenix'],'test')
        endpoint=next(r.endpoint for r in app.routes if getattr(r,'path','')=='/api/admin/owner-research-export')
        with self.assertRaises(PermissionError):asyncio.run(endpoint('test-research-export-123','denied'))
        self.assertEqual(calls,[])
        with patch.object(Path,'read_bytes',return_value=self.pem),patch.object(export,'PINNED_FINGERPRINT',self.fingerprint):
            encrypted=asyncio.run(endpoint('test-research-export-123','allowed'))
        self.assertEqual(calls,[{'isolation':'repeatable_read','readonly':True},'fetch','fetch'])
        self.assertEqual(self.decrypt(encrypted)['native_records'],[])

if __name__=='__main__':unittest.main()
