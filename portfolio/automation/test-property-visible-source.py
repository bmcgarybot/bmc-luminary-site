import copy,hashlib,sys,unittest
from pathlib import Path
from datetime import datetime,timezone,timedelta
ROOT=Path(__file__).resolve().parent
sys.path[:0]=[str(ROOT/'api'),str(ROOT)]
from property_visible_source import *
NOW=datetime(2026,11,4,12,tzinfo=timezone.utc)
SECRET='synthetic-offline-secret'
HTML='<html><title>Example Property LLC</title><main><h1>Example Property LLC</h1><p>We provide property management services in Phoenix.</p><address>123 North Main Street, Phoenix, AZ 85004</address><p>Call 602-555-0101 or email hello@example.test</p></main></html>'
C={'business_name':'Example Property LLC','side':'buyer','market':'Phoenix','category_key':'property_management','source_url':'https://example.test/'}
X={'business_name':'Example Property LLC','source_url':C['source_url'],'physical_address':'123 North Main Street, Phoenix, AZ 85004','public_phone':'602-555-0101','public_email':'hello@example.test','identity_quote':'Example Property LLC','role_quote':'We provide property management services in Phoenix.','address_quote':'123 North Main Street, Phoenix, AZ 85004','contact_quote':'Call 602-555-0101 or email hello@example.test'}
def rec(html=HTML,url=C['source_url'],when=NOW):
    raw=html.encode();return FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),when.isoformat(),200,'text/html',())
def verify(html=HTML,x=None,c=None,**kw):
    r=rec(html);return verify_property_visible_source(c or C,r,x or X,SECRET,receipt_is_trusted=lambda v:v is r,now=NOW,**kw)
class Tests(unittest.TestCase):
    def test_native_dispatch_database_jsonb_text(self):
        from official_research import auto_evidence_valid
        row=verify();row['evidence']=json.dumps(row['evidence']);original=copy.deepcopy(row)
        self.assertTrue(auto_evidence_valid(row,SECRET));self.assertEqual(row,original)
        for field,value in [('source_url','https://other.test/'),('public_phone','6025550199')]:
            bad=copy.deepcopy(row);bad[field]=value
            self.assertFalse(auto_evidence_valid(bad,SECRET))
        bad=copy.deepcopy(row);e=json.loads(bad['evidence']);e['vps_verification']['signature']='0'*64;bad['evidence']=json.dumps(e)
        self.assertFalse(auto_evidence_valid(bad,SECRET))
    def test_valid_visible_without_schema(self):
        r=verify();self.assertTrue(auto_property_visible_valid(r,SECRET,now=NOW));self.assertFalse(r['confirmed_demand'])
    def test_tamper_every_row_binding(self):
        row=verify()
        for k in ('business_name','source_url','market','side','category_key','public_phone','public_email','physical_address','snippet'):
            x=copy.deepcopy(row);x[k]='wrong';self.assertFalse(auto_property_visible_valid(x,SECRET,now=NOW),k)
    def test_signature_expiry(self):
        r=verify();self.assertFalse(auto_property_visible_valid(r,'bad',now=NOW));self.assertFalse(auto_property_visible_valid(r,SECRET,now=NOW+timedelta(days=7)))
    def test_untrusted_and_digest_stale(self):
        r=rec()
        with self.assertRaises(ValueError):verify_property_visible_source(C,r,X,SECRET,receipt_is_trusted=lambda v:False,now=NOW)
        r=rec(when=NOW-timedelta(minutes=16))
        with self.assertRaises(ValueError):verify_property_visible_source(C,r,X,SECRET,receipt_is_trusted=lambda v:v is r,now=NOW)
    def test_hidden_nav_testimonial_negative_roles(self):
        role=X['role_quote']
        for replacement in ('<nav>'+role+'</nav>','<p hidden>'+role+'</p>','<div class="testimonials">'+role+'</div>','<p>We do not provide property management services in Phoenix.</p>'):
            with self.subTest(replacement=replacement),self.assertRaises(ValueError):verify(HTML.replace('<p>'+role+'</p>',replacement))
    def test_wrong_identity_contact_and_unbound_quote(self):
        for k,v in [('business_name','Other Property LLC'),('public_phone','6025550199'),('public_email','guessed@example.test'),('role_quote','We manage luxury apartments.'),('address_quote','123 North Main Street Phoenix AZ 85004')]:
            x={**X,k:v}
            with self.subTest(k=k),self.assertRaises(ValueError):verify(x=x)
    def test_foreign_country_and_zip(self):
        for country in ('"Canada"','{"@type":"Country","name":"Canada"}'):
            with self.assertRaises(ValueError):verify(HTML+'<script type="application/ld+json">{"addressCountry":'+country+'}</script>')
        x={**X,'physical_address':X['physical_address'].replace('85004','71891'),'address_quote':X['address_quote'].replace('85004','71891')}
        with self.assertRaises(ValueError):verify(HTML.replace('85004','71891'),x=x)
    def test_scope_directory_redirect(self):
        with self.assertRaises(ValueError):verify(c={**C,'side':'vendor'})
        r=rec(url='https://apartments.com/example');x={**X,'source_url':r.final_url}
        with self.assertRaises(ValueError):verify_property_visible_source({**C,'source_url':r.final_url},r,x,SECRET,receipt_is_trusted=lambda v:v is r,now=NOW)
        r=rec();r2=FetchedPageReceipt(r.requested_url,'https://other.test/',r.raw_bytes,r.content_sha256,r.fetched_at,200,'text/html',())
        with self.assertRaises(ValueError):verify_property_visible_source(C,r2,X,SECRET,receipt_is_trusted=lambda v:v is r2,now=NOW)
    def test_samehost_contact_mailto(self):
        primary=rec(HTML.replace('<address>'+X['address_quote']+'</address>','').replace('<p>'+X['contact_quote']+'</p>',''))
        contact=rec('<h1>Example Property LLC</h1><address>'+X['address_quote']+'</address><p><a href="mailto:hello@example.test">Email our office</a> 602-555-0101</p>',url='https://example.test/contact')
        x={**X,'contact_quote':'Email our office 602-555-0101'}
        row=verify_property_visible_source(C,primary,x,SECRET,contact_receipt=contact,receipt_is_trusted=lambda r:r is primary or r is contact,now=NOW)
        self.assertTrue(auto_property_visible_valid(row,SECRET,now=NOW))
    def test_cross_block_address_and_email_hidden(self):
        with self.assertRaises(ValueError):verify(HTML.replace(X['address_quote'],'123 North Main Street</address><address>Phoenix, AZ 85004'))
        with self.assertRaises(ValueError):verify(HTML.replace('hello@example.test','<span hidden>hello@example.test</span>'))
    def test_multiple_company_offices_selected_exact_address(self):
        second='456 South Other Street, Phoenix, AZ 85005'
        document=HTML+'<h2>Example Property LLC second office</h2><address>'+second+'</address>'
        first=verify(document)
        self.assertTrue(auto_property_visible_valid(first,SECRET,now=NOW))
        chosen=verify(document,x={**X,'physical_address':second,'address_quote':second})
        self.assertEqual(chosen['physical_address'],second)
        self.assertTrue(auto_property_visible_valid(chosen,SECRET,now=NOW))
        for physical,quote in [('999 Invented Street, Phoenix, AZ 85004','999 Invented Street, Phoenix, AZ 85004'),(second,X['address_quote']),('456 South Other Street, Scottsdale, AZ 85251','456 South Other Street, Scottsdale, AZ 85251')]:
            with self.subTest(physical=physical,quote=quote),self.assertRaises(ValueError):
                verify(document+'<address>456 South Other Street, Scottsdale, AZ 85251</address>',x={**X,'physical_address':physical,'address_quote':quote})
    def test_negative_quote_still_rejected(self):
        negative='We do not provide property management services.'
        with self.assertRaises(ValueError):verify(HTML+'<p>'+negative+'</p>',x={**X,'role_quote':negative})
    def test_publisher_contact_not_business(self):
        with self.assertRaises(ValueError):verify(HTML.replace(X['contact_quote'],'Designed by Example Studio '+X['contact_quote']),x={**X,'contact_quote':'Designed by Example Studio '+X['contact_quote']})
    def test_raw_digest_and_future_transport(self):
        r=rec()
        for bad in (FetchedPageReceipt(r.requested_url,r.final_url,r.raw_bytes,'0'*64,r.fetched_at,200,'text/html',()),rec(when=NOW+timedelta(seconds=1))):
            with self.assertRaises(ValueError):verify_property_visible_source(C,bad,X,SECRET,receipt_is_trusted=lambda v:v is bad,now=NOW)
    def test_signed_policy_invalid_proof(self):
        for key,value in [('physical_address','123 North Main Street, Phoenix, AZ 71891'),('side','vendor'),('unexpected',True)]:
            row=verify();proof=row['evidence']['vps_verification'];proof[key]=value;proof.pop('signature');proof['signature']=mac(proof,SECRET)
            if key in row:row[key]=value
            self.assertFalse(auto_property_visible_valid(row,SECRET,now=NOW))
    def test_core_native_registry_accepts_verified_visible_buyer_and_rejects_tampering(self):
        import official_research
        actual=datetime.now(timezone.utc);receipt=rec(when=actual)
        row=verify_property_visible_source(C,receipt,X,SECRET,receipt_is_trusted=lambda value:value is receipt,now=actual)
        self.assertIn(VERSION,official_research.NATIVE_VERSIONS)
        self.assertTrue(official_research.auto_evidence_valid(row,SECRET))
        wrong=copy.deepcopy(row);wrong['side']='vendor'
        self.assertFalse(official_research.auto_evidence_valid(wrong,SECRET))

    def test_extra_extraction_key_reject(self):
        with self.assertRaises(ValueError):verify(x={**X,'model_says_verified':True})
if __name__=='__main__':unittest.main()
