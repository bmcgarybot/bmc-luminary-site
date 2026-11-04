#!/usr/bin/env python3
"""Real native/contact HMAC and held PDF compilation; synthetic receipts, no network."""
import copy,hashlib,io,json,sys,unittest,uuid
from dataclasses import replace
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import official_research as r
import contact_enrichment as c
import held_packet_api as api
from pypdf import PdfReader

SECRET='offline-contact-compiler-fixture'
URL='https://example-cleaning.test/'
MAIL='office@separate-mail.test'
NAME='Example Cleaning LLC'
ADDRESS='123 Example Street, Phoenix, AZ 85001'
ENTITY={'@type':'CleaningService','name':NAME,'url':URL,'description':'Commercial cleaning and janitorial services',
 'telephone':'602-555-0123','address':{'streetAddress':'123 Example Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85001'}}
def receipt(html,url):
    raw=html.encode();return r.FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),datetime.now(timezone.utc).isoformat(),200,'text/html',())
def contact(mail=MAIL,address=ADDRESS):
    return '<section><h1>'+NAME+'</h1><p>602-555-0123</p><address>'+address+'</address><a href="mailto:'+mail+'">Email</a></section>'
def primary(entity=None,extra=''):
    return '<script type="application/ld+json">'+json.dumps(entity or ENTITY)+'</script><h2>Office Cleaning</h2>'+extra

class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self,same=False,direct=False):
        self.row=dict(candidate_id=str(uuid.uuid4()),business_name=NAME,market='Phoenix',category_key='commercial_cleaning',category_label='Commercial cleaning',side='vendor',public_phone='602-555-0123')
        entity=dict(ENTITY)
        if direct:entity['email']='info@example-cleaning.test'
        self.p=receipt(primary(entity,contact() if same else ''),URL)
        self.q=self.p if same else receipt(contact(),URL+'contact')
        self.row.update(r.parse_record(self.row,URL,self.p.document,self.p.content_sha256,SECRET))
        if not direct:
            trusted=lambda x:x is self.p or x is self.q
            proposal=c.verify_contact_enrichment(self.row,self.p,self.q,MAIL,SECRET,receipt_is_trusted=trusted)
            token=c.create_contact_verification(self.row,proposal,SECRET,receipt_is_trusted=trusted)
            self.row=dict(self.row,public_email=MAIL,evidence=dict(self.row['evidence'],contact_verification=token))
        self.assertTrue(r.auto_evidence_valid(self.row,SECRET))
        outer=self
        class Conn:
            async def fetchrow(self,*args):return outer.row
            async def fetchval(self,*args):return False
        self.conn=Conn();self.fetches=[]
        self.rows=[dict(candidate_id=str(uuid.uuid4()),business_name=f'Synthetic Office {i}',market='Phoenix',category_key='insurance_professional',category_label='Office',grade='A',source_url=f'https://example.test/{i}',fit_score=90,public_phone='6025550100',fit_reason='Published office.',sales_angle='Ask about cleaning.') for i in range(25)]
        async def qualify(*args,**kw):return [x for x in self.rows if x['candidate_id'] not in kw.get('exclude_ids',set())]
        self.callbacks=dict(qualify=qualify,select_sample=lambda rows,key:rows[:5],public_rows=lambda rows:rows,csv_bytes=lambda rows:('\n'.join(x['business_name'] for x in rows)).encode(),recipient_business_key=str.lower)
    async def run_compile(self):
        def fetch(url):
            self.fetches.append(url)
            return self.p if url==URL else self.q
        with patch.object(r,'fetch_page_receipt',side_effect=fetch):
            return await api.compile_native_packet(self.conn,self.row['candidate_id'],SECRET,frozenset(),lambda:True,self.callbacks,25)
    async def test_real_contact_token_and_pdf_with_two_bounded_fetches(self):
        self.setup();old=copy.deepcopy(self.row)
        real=c.verify_contact_enrichment
        def verify(base,p,q,*args,**kw):
            trust=kw['receipt_is_trusted'];self.assertTrue(trust(p));self.assertTrue(trust(q));self.assertFalse(trust(replace(q)))
            return real(base,p,q,*args,**kw)
        with patch.object(c,'verify_contact_enrichment',side_effect=verify):result=await self.run_compile()
        self.assertEqual(self.fetches,[URL,URL+'contact']);self.assertEqual(self.row,old)
        fresh=result['recipient'];self.assertTrue(r.auto_evidence_valid(fresh,SECRET))
        self.assertEqual(fresh['evidence']['vps_verification']['public_email'],'')
        self.assertEqual(fresh['public_email'],MAIL);self.assertFalse(result['offer_ready'])
        self.assertEqual(len(result['artifacts'][25]['rows']),25)
        self.assertEqual(result['artifacts'][5]['rows'],result['artifacts'][25]['rows'][:5])
        text=' '.join(p.extract_text() for p in PdfReader(io.BytesIO(result['artifacts'][5]['pdf'])).pages)
        self.assertIn('$149',text);self.assertIn('25',text)
    async def test_same_url_reuses_primary_and_direct_primary_unchanged(self):
        for same,direct in ((True,False),(False,True)):
            self.setup(same,direct);result=await self.run_compile()
            self.assertEqual(self.fetches,[URL]);self.assertEqual(result['recipient']['public_email'],self.row['public_email'])
    async def test_tampered_or_missing_existing_token_fails_before_fetch(self):
        for missing in (False,True):
            self.setup()
            if missing:del self.row['evidence']['contact_verification']
            else:self.row['evidence']['contact_verification']['public_email']='forged@example.test'
            with self.assertRaises(ValueError):await self.run_compile()
            self.assertEqual(self.fetches,[])
    async def test_changed_contact_mail_address_domain_and_receipt_digest_hold(self):
        for change in ('mail','address','domain','digest'):
            self.setup()
            if change=='mail':self.q=receipt(contact('other@separate-mail.test'),URL+'contact')
            elif change=='address':self.q=receipt(contact(address='987 Changed Avenue, Phoenix, AZ 85027'),URL+'contact')
            elif change=='domain':self.q=replace(self.q,final_url='https://foreign.example/contact')
            else:self.q=replace(self.q,raw_bytes=b'tampered')
            with self.subTest(change=change),self.assertRaises(ValueError):await self.run_compile()
            self.assertEqual(self.fetches,[URL,URL+'contact'])
    async def test_primary_address_drift_holds_before_contact_fetch(self):
        self.setup();entity=copy.deepcopy(ENTITY);entity['address']['streetAddress']='987 Changed Avenue'
        self.p=receipt(primary(entity),URL)
        with self.assertRaises(ValueError):await self.run_compile()
        self.assertEqual(self.fetches,[URL])

if __name__=='__main__':unittest.main()
