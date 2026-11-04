#!/usr/bin/env python3
"""Read-only endpoint, fresh native proof, scope filter and ciphertext boundaries."""
import asyncio,base64,gzip,hashlib,json,sys,unittest,uuid
from pathlib import Path
from unittest.mock import patch,AsyncMock
sys.path.insert(0,str(Path(__file__).parent/'api'))
import held_packet_api as api
import official_research as research
import owner_research_export as export
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
        self.calls=[];self.history=False;self.hold=True
        self.row=dict(candidate_id=uuid.uuid4(),side='vendor',market='Phoenix',category_key='commercial_cleaning',category_label='Commercial Cleaning',business_name='Synthetic Fixture Cleaning',source_url='https://fixture.example/',public_email='info@fixture.example',public_phone='6025550100')
        entity=dict(name=self.row['business_name'],url=self.row['source_url'],email=self.row['public_email'],telephone=self.row['public_phone'],description='Commercial cleaning',address=dict(addressLocality='Phoenix',addressRegion='AZ',streetAddress='123 Main St',postalCode='85001'))
        entity['@type']='CleaningService'
        self.document='<script type="application/ld+json">'+json.dumps(entity)+'</script><h2>Office Cleaning</h2>'
        self.digest=hashlib.sha256(self.document.encode()).hexdigest()
        self.row.update(research.parse_record(self.row,self.row['source_url'],self.document,self.digest,'secret'))
        outer=self
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            def transaction(self,**kwargs):outer.calls.append(kwargs);return self
            async def fetchrow(self,sql,*args):
                outer.calls.append(sql);assert sql.lstrip().startswith('select');return outer.row
            async def fetchval(self,sql,*args):outer.calls.append(sql);return outer.history
        class Pool:
            def acquire(self):return Conn()
        def admin(key):
            if key!='allowed':raise PermissionError('admin required')
        self.app=FastAPI();self.app.state.pool=Pool()
        self.qualify=AsyncMock(return_value=[dict(category_key='insurance_professional'),dict(category_key='retail')])
        callbacks=dict(qualify=self.qualify,select_sample=lambda *a:[],public_rows=lambda v:v,csv_bytes=lambda v:b'',recipient_business_key=str)
        self.endpoint=api.install(self.app,admin,'secret',[str(uuid.uuid4()) for _ in range(9)],lambda:self.hold,callbacks)
        async def compiler(conn,row,scope,**kw):
            self.assertEqual(scope['content_sha256'],self.digest)
            self.assertTrue(scope['source_signature'])
            values=await kw['qualify'](conn,'commercial_cleaning',['Phoenix'])
            self.assertEqual([v['category_key'] for v in values],['insurance_professional'])
            return dict(offer_ready=False,outreach_held=True,checkout_url='',artifacts={5:dict(rows=[],pdf=b'PDF',csv=b'CSV')})
        self.compiler=compiler
    async def run_endpoint(self):
        with patch.object(api.official_research,'fetch_page',return_value=(self.row['source_url'],self.document,self.digest)),patch.object(api,'compile_held_packet',side_effect=self.compiler),patch.object(Path,'read_bytes',return_value=self.pem),patch.object(export,'PINNED_FINGERPRINT',self.pin):
            return await self.endpoint('test-packet-request',str(self.row['candidate_id']),'allowed')
    async def test_real_encryption_readonly_and_explicit_scope_filter(self):
        self.setup();capsule=await self.run_endpoint()
        self.assertEqual(self.calls[0],dict(readonly=True,isolation='repeatable_read'))
        self.assertNotIn(self.row['business_name'],json.dumps(capsule));self.assertNotIn(self.row['public_email'],json.dumps(capsule))
        key=self.key.decrypt(base64.b64decode(capsule['wrapped_key']),padding.OAEP(mgf=padding.MGF1(hashes.SHA256()),algorithm=hashes.SHA256(),label=None))
        aad=f"{export.VERSION}|test-packet-request|{self.pin}".encode()
        payload=json.loads(gzip.decompress(AESGCM(key).decrypt(base64.b64decode(capsule['nonce']),base64.b64decode(capsule['ciphertext']),aad)))
        self.assertFalse(payload['offer_ready']);self.assertEqual(payload['artifacts']['5']['pdf_base64'],'UERG')
    async def test_auth_and_hold_before_database(self):
        self.setup()
        with self.assertRaises(PermissionError):await self.endpoint('test-packet-request',str(self.row['candidate_id']),'bad')
        self.hold=False
        with self.assertRaises(HTTPException):await self.run_endpoint()
        self.assertEqual(self.calls,[])
    async def test_forged_and_prior_history_fail_before_fetch(self):
        for forged in (False,True):
            self.setup()
            if forged:self.row['public_email']='different@example.test'
            else:self.history=True
            with patch.object(api.official_research,'fetch_page') as fetch:
                with self.assertRaises(HTTPException):await self.endpoint('test-packet-request',str(self.row['candidate_id']),'allowed')
                fetch.assert_not_called()
    async def test_source_and_current_email_changes_fail(self):
        self.setup()
        with patch.object(api.official_research,'fetch_page',return_value=('https://different.example/',self.document,self.digest)):
            with self.assertRaises(HTTPException):await self.endpoint('test-packet-request',str(self.row['candidate_id']),'allowed')
        self.document=self.document.replace('info@fixture.example','other@fixture.example')
        with self.assertRaises(HTTPException):await self.run_endpoint()
    async def test_oversize_capsule_fails_closed(self):
        self.setup()
        with patch.object(api,'seal_export',return_value={'ciphertext':'x'*500001}):
            with self.assertRaises(HTTPException):await self.run_endpoint()
    async def test_failure_reason_is_encrypted_and_arbitrary_error_text_is_not_exported(self):
        self.setup()
        async def failure(*args,**kwargs):raise ValueError('Qualified sample reserve is incomplete')
        async def request():
            with patch.object(api.official_research,'fetch_page',return_value=(self.row['source_url'],self.document,self.digest)),patch.object(api,'compile_held_packet',side_effect=failure),patch.object(Path,'read_bytes',return_value=self.pem),patch.object(export,'PINNED_FINGERPRINT',self.pin):
                return await self.endpoint('test-packet-request',str(self.row['candidate_id']),'allowed',diagnostics=True)
        capsule=await request()
        self.assertNotIn('reserve',json.dumps(capsule))
        key=self.key.decrypt(base64.b64decode(capsule['wrapped_key']),padding.OAEP(mgf=padding.MGF1(hashes.SHA256()),algorithm=hashes.SHA256(),label=None))
        aad=f"{export.VERSION}|test-packet-request|{self.pin}".encode()
        payload=json.loads(gzip.decompress(AESGCM(key).decrypt(base64.b64decode(capsule['nonce']),base64.b64decode(capsule['ciphertext']),aad)))
        self.assertEqual(payload['gate_reason'],'Qualified sample reserve is incomplete')
        self.assertFalse(payload['offer_ready'])
        async def failure(*args,**kwargs):raise ValueError('PRIVATE SQL OR CONTACT DETAILS')
        capsule=await request()
        self.assertNotIn('PRIVATE SQL',json.dumps(capsule))
        key=self.key.decrypt(base64.b64decode(capsule['wrapped_key']),padding.OAEP(mgf=padding.MGF1(hashes.SHA256()),algorithm=hashes.SHA256(),label=None))
        payload=json.loads(gzip.decompress(AESGCM(key).decrypt(base64.b64decode(capsule['nonce']),base64.b64decode(capsule['ciphertext']),aad)))
        self.assertEqual(payload['gate_reason'],'preparation_gate_failed')
    def test_focus_ignores_scripts_and_refuses_broad_fallback(self):
        for html in ('<p>Commercial cleaning</p>','<script>Office Cleaning</script>','<style>Healthcare</style>'):
            with self.assertRaises(ValueError):api.source_focus(html)
        focus=api.source_focus('<h2>Office Cleaning</h2><p>Manufacturing Facility Cleaning</p>')
        self.assertEqual(focus['category_keys'],['insurance_professional','warehouses_industrial'])
    def test_pressure_focus_exact_commercial_soft_washing_sectors_only(self):
        document='<h3>Commercial Soft Washing</h3><p>Low-pressure facade and building washing for storefronts, offices, and multi-tenant properties.</p><h3>Commercial Pressure Washing</h3><p>Sidewalks, entryways, drive-throughs, parking structures and dumpster pads.</p>'
        focus=api.source_focus(document,'pressure_washing')
        self.assertEqual(focus['category_keys'],['insurance_professional','property_management','retail'])
        self.assertEqual(focus['observed_sector_phrases'],['storefronts','offices','multi-tenant properties'])
        self.assertNotIn('restaurants',focus['category_keys']);self.assertNotIn('auto_fleet',focus['category_keys'])
        with self.assertRaisesRegex(ValueError,'unsupported_customer_focus'):api.source_focus(document)
        with self.assertRaisesRegex(ValueError,'unsupported_customer_focus'):api.source_focus(document,'commercial_cleaning')

    def test_pressure_focus_rejects_residential_negated_hidden_and_broad_context(self):
        for document in (
            '<h3>Residential Soft Washing</h3><p>House and home exterior cleaning for offices and storefronts.</p>',
            '<h3>Commercial Soft Washing</h3><p>We no longer provide washing for storefronts, offices and multi-tenant properties.</p>',
            '<h3>No Commercial Soft Washing</h3><p>Storefronts and offices.</p>',
            '<h3>Commercial Pressure Washing</h3><p>Not available for storefronts and offices.</p>',
            '<h3>Commercial Pressure Washing</h3><p>Sidewalks and dumpster pads.</p><h3>Residential Cleaning</h3><p>Storefronts and offices.</p>',
            '<h3>Commercial Services</h3><p>Storefronts and offices.</p>',
            '<script>Commercial Soft Washing for storefronts, offices and multi-tenant properties</script>',
            '<h3>Commercial Soft Washing</h3><p>Homes only.</p><script>Storefronts offices multi-tenant properties</script>'):
            with self.subTest(document=document),self.assertRaisesRegex(ValueError,'unsupported_customer_focus'):
                api.source_focus(document,'pressure_washing')

    def test_legacy_cleaning_sector_defaults_unchanged(self):
        for document,keys in (
            ('<h2>Office Cleaning</h2><p>Healthcare, education, government, industrial manufacturing.</p>',
             ['insurance_professional','medical_centers','public_facilities','schools','schools_education','warehouses_industrial']),
            ('<p>Offices and professional suites; dental and medical facilities; manufacturing facility.</p>',
             ['dental','insurance_professional','medical_centers','warehouses_industrial'])):
            self.assertEqual(api.source_focus(document)['category_keys'],keys)
            self.assertEqual(api.source_focus(document,'commercial_cleaning'),api.source_focus(document))

    async def test_compile_passes_fresh_recipient_service_key_to_focus(self):
        self.setup()
        with patch.object(api,'source_focus',wraps=api.source_focus) as focus:
            await self.run_endpoint()
            focus.assert_called_once_with(self.document,'commercial_cleaning')

    def test_history_query_does_not_exclude_optout_or_unsent_rows(self):
        for table in ('outreach_suppressions','growth_outreach_targets','vendors','buyers'):
            self.assertIn(table,api.HISTORY_SQL)
        self.assertNotIn('sent_at',api.HISTORY_SQL);self.assertNotIn('opt_out=false',api.HISTORY_SQL)

if __name__=='__main__':unittest.main()
