"""Offline synthetic public-neutral fixtures; no transport or database actions."""
import copy
import hashlib
import json
import unittest
from dataclasses import replace
from datetime import datetime,timedelta,timezone

from contact_enrichment import contact_enrichment_proposal,create_contact_verification
from official_research import FetchedPageReceipt,auto_evidence_valid,parse_record,contact_seal,seal

SECRET='synthetic-offline-secret'
NOW=datetime.now(timezone.utc)
DOMAIN='https://example-cleaning.test'
EMAIL='office@separate-mail.test'
PHONE='602-555-0123'
ADDRESS='123 Example Street, Phoenix, AZ 85001'
ENTITY={'@type':'LocalBusiness','name':'Example Cleaning LLC','url':DOMAIN,
 'description':'Commercial cleaning and janitorial services','telephone':PHONE,
 'address':{'streetAddress':'123 Example Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85001'}}


def receipt(document,url=DOMAIN+'/contact'):
    raw=document.encode()
    return FetchedPageReceipt(url,url,raw,hashlib.sha256(raw).hexdigest(),NOW.isoformat(),200,'text/html',())


def cf(email):
    return '23'+''.join(f'{ord(x)^35:02x}' for x in email)


class Tests(unittest.TestCase):
    def setUp(self):
        self.row={'candidate_id':'00000000-0000-4000-8000-000000000001','business_name':'Example Cleaning LLC',
          'market':'Phoenix','category_key':'commercial_cleaning','category_label':'Commercial cleaning','side':'vendor','public_phone':PHONE}
        self.primary=receipt('<script type="application/ld+json">'+json.dumps(ENTITY)+'</script>',DOMAIN+'/')
        self.row.update(parse_record(self.row,self.primary.final_url,self.primary.document,self.primary.content_sha256,SECRET))
        self.contact=self.contact_page('<a href="mailto:'+EMAIL+'">Email us</a>')

    def contact_page(self,link,address=ADDRESS,phone=PHONE,extra=''):
        return receipt('<section><h1>Example Cleaning LLC</h1><p>'+phone+'</p><address>'+address+'</address>'+link+extra+'</section>')

    def run_verify(self,primary=None,contact=None,**kwargs):
        p=primary or self.primary;c=contact or self.contact
        trusted=lambda item:item is p or item is c
        return contact_enrichment_proposal(self.row,p,c,EMAIL,SECRET,receipt_is_trusted=kwargs.pop('receipt_is_trusted',trusted),now=NOW,**kwargs)

    def test_explicit_off_domain_mailto_proposal_only(self):
        original=copy.deepcopy(self.row)
        result=self.run_verify()
        self.assertEqual(result['public_email'],EMAIL)
        self.assertEqual(result['email_provenance'],['explicit_mailto'])
        self.assertEqual(result['primary_facts']['physical_address'],ADDRESS)
        self.assertEqual(result['contact_receipt']['content_sha256'],self.contact.content_sha256)
        self.assertFalse(result['native_update_performed'])
        self.assertFalse(auto_evidence_valid(result,SECRET))
        self.assertEqual(self.row,original)

    def test_cloudflare_public_encoding(self):
        c=self.contact_page('<a class="__cf_email__" href="/cdn-cgi/l/email-protection" data-cfemail="'+cf(EMAIL)+'">[email protected]</a>')
        self.assertEqual(self.run_verify(contact=c)['email_provenance'],['cloudflare_data_cfemail'])

    def test_same_mailbox_repeated_allowed(self):
        self.run_verify(contact=self.contact_page('<a href="mailto:'+EMAIL+'">Email</a>'*2))

    def test_explicit_changed_address_held(self):
        with self.assertRaisesRegex(ValueError,'address_conflict'):
            self.run_verify(contact=self.contact_page('<a href="mailto:'+EMAIL+'">Email</a>',address='987 Changed Avenue, Phoenix, AZ 85027'))

    def test_old_matching_structured_address_cannot_hide_changed_visible_address(self):
        c=self.contact_page('<a href="mailto:'+EMAIL+'">Email</a>',address='987 Changed Avenue, Phoenix, AZ 85027',extra='<script type="application/ld+json">'+json.dumps(ENTITY)+'</script>')
        with self.assertRaisesRegex(ValueError,'address_conflict'):self.run_verify(contact=c)

    def test_guessed_plain_text_not_mailto(self):
        with self.assertRaisesRegex(ValueError,'published_mailbox'):self.run_verify(contact=self.contact_page(EMAIL))

    def test_multiple_mailboxes(self):
        c=self.contact_page('<a href="mailto:'+EMAIL+'">Email</a><a href="mailto:other@example.test">Other</a>')
        with self.assertRaisesRegex(ValueError,'published_mailbox'):self.run_verify(contact=c)

    def test_phone_mismatch(self):
        with self.assertRaisesRegex(ValueError,'phone_mismatch'):self.run_verify(contact=self.contact_page('<a href="mailto:'+EMAIL+'">Email</a>',phone='602-555-9999'))

    def test_designer_footer_mailbox(self):
        c=receipt('<footer>Example Cleaning LLC '+PHONE+'<address>'+ADDRESS+'</address>Website designed by <a href="mailto:'+EMAIL+'">Designer</a></footer>')
        with self.assertRaisesRegex(ValueError,'designer'):self.run_verify(contact=c)

    def test_missing_current_hmac(self):
        self.row['evidence']={}
        with self.assertRaisesRegex(ValueError,'current_native'):self.run_verify()

    def test_digest_tamper(self):
        with self.assertRaisesRegex(ValueError,'digest'):self.run_verify(contact=replace(self.contact,raw_bytes=b'tampered'))

    def test_stale_and_future_receipt(self):
        for offset in (-16,1):
            with self.subTest(offset=offset),self.assertRaisesRegex(ValueError,'stale_or_future'):
                self.run_verify(contact=replace(self.contact,fetched_at=(NOW+timedelta(minutes=offset)).isoformat()))

    def test_foreign_redirect_and_userinfo(self):
        for changes in ({'redirect_chain':('https://thirdparty.test/contact',)}, {'final_url':'https://thirdparty.test/contact'}, {'requested_url':'https://attacker@example-cleaning.test/contact'}):
            with self.subTest(changes=changes),self.assertRaisesRegex(ValueError,'domain'):self.run_verify(contact=replace(self.contact,**changes))

    def test_constructed_receipt_not_transport_proof(self):
        with self.assertRaisesRegex(ValueError,'provenance'):self.run_verify(receipt_is_trusted=lambda item:False)

    def test_fresh_primary_address_change(self):
        entity=copy.deepcopy(ENTITY);entity['address']['streetAddress']='987 Changed Avenue'
        p=receipt('<script type="application/ld+json">'+json.dumps(entity)+'</script>',DOMAIN+'/')
        with self.assertRaisesRegex(ValueError,'fresh_primary'):self.run_verify(primary=p)

    def test_second_visible_out_of_state_address(self):
        c=self.contact_page('<a href="mailto:'+EMAIL+'">Email</a>',extra='<address>456 Other Road, Sacramento, CA 95814</address>')
        with self.assertRaisesRegex(ValueError,'address_conflict'):self.run_verify(contact=c)

    def test_unlinked_second_mailbox(self):
        c=self.contact_page('<a href="mailto:'+EMAIL+'">Email</a>',extra='Other contact: other@example.test')
        with self.assertRaisesRegex(ValueError,'email_conflict'):self.run_verify(contact=c)

    def test_primary_visible_address_contradiction(self):
        p=receipt(self.primary.document+'<address>987 Changed Avenue, Phoenix, AZ 85027</address>',DOMAIN+'/')
        with self.assertRaisesRegex(ValueError,'primary_visible_address_conflict'):self.run_verify(primary=p)

    def test_missing_address_identity_and_phone_are_held(self):
        for text in ('Example Cleaning LLC '+PHONE, ADDRESS+' '+PHONE, 'Example Cleaning LLC '+ADDRESS):
            with self.subTest(text=text),self.assertRaises(ValueError):
                self.run_verify(contact=receipt('<section>'+text+'<a href="mailto:'+EMAIL+'">Email</a></section>'))

    def enriched(self):
        proposal=self.run_verify()
        token=create_contact_verification(self.row,proposal,SECRET,
            receipt_is_trusted=lambda r:r is self.primary or r is self.contact,now=NOW)
        row=copy.deepcopy(self.row);row['public_email']=EMAIL
        row['evidence']['contact_verification']=token
        return row

    def test_attestation_round_trip_preserves_legacy_proof(self):
        row=self.enriched()
        self.assertTrue(auto_evidence_valid(row,SECRET))
        self.assertEqual(row['evidence']['vps_verification'],self.row['evidence']['vps_verification'])
        self.assertEqual(row['evidence']['vps_verification']['public_email'],'')
        self.assertTrue(auto_evidence_valid(self.row,SECRET))

    def test_factory_rejects_plain_dict_and_mutated_result(self):
        proposal=self.run_verify()
        for value in (dict(proposal),{'public_email':EMAIL}):
            with self.assertRaisesRegex(ValueError,'verified_proposal'):
                create_contact_verification(self.row,value,SECRET,receipt_is_trusted=lambda r:True,now=NOW)
        proposal['primary_facts']['physical_address']='987 Changed Avenue'
        with self.assertRaisesRegex(ValueError,'proposal_changed'):
            create_contact_verification(self.row,proposal,SECRET,receipt_is_trusted=lambda r:True,now=NOW)

    def test_token_tamper_all_fields(self):
        original=self.enriched()
        for field in original['evidence']['contact_verification']:
            row=copy.deepcopy(original);row['evidence']['contact_verification'][field]='tampered'
            with self.subTest(field=field):self.assertFalse(auto_evidence_valid(row,SECRET))

    def test_candidate_email_source_phone_mismatch(self):
        original=self.enriched()
        for field,value in (('candidate_id','00000000-0000-4000-8000-000000000002'),
                            ('public_email','wrong@example.test'),('source_url',DOMAIN+'/other'),
                            ('public_phone','6025559999'),('business_name','Another Company')):
            row=copy.deepcopy(original);row[field]=value
            with self.subTest(field=field):self.assertFalse(auto_evidence_valid(row,SECRET))

    def test_expiry_future_and_overlong_even_with_mac(self):
        for issued,expired in ((NOW-timedelta(days=8),NOW-timedelta(days=1)),
                               (NOW+timedelta(minutes=1),NOW+timedelta(days=7,minutes=1)),
                               (NOW,NOW+timedelta(days=90))):
            row=self.enriched();token=row['evidence']['contact_verification']
            token['checked_at']=issued.isoformat();token['expires_at']=expired.isoformat()
            token.pop('signature');token['signature']=contact_seal(token,SECRET)
            self.assertFalse(auto_evidence_valid(row,SECRET))

    def test_cross_domain_publisher_rejected_even_with_valid_token_mac(self):
        row=self.enriched();token=row['evidence']['contact_verification']
        token['contact_receipt']['final_url']='https://publisher.test/contact'
        token.pop('signature');token['signature']=contact_seal(token,SECRET)
        self.assertFalse(auto_evidence_valid(row,SECRET))

    def test_baseproof_change_and_wrong_signature_domain(self):
        row=self.enriched();base=row['evidence']['vps_verification']
        base['description']='New independently fetched description'
        base.pop('signature');base['signature']=seal(base,SECRET)
        self.assertFalse(auto_evidence_valid(row,SECRET))
        row=self.enriched();token=row['evidence']['contact_verification']
        token.pop('signature');token['signature']=seal(token,SECRET)
        self.assertFalse(auto_evidence_valid(row,SECRET))

    def test_contact_token_cannot_waive_postal_or_blocked_source(self):
        # Even a correctly MACed stale pre-policy primary cannot bypass geography.
        row=self.enriched();base=row['evidence']['vps_verification'];token=row['evidence']['contact_verification']
        base['physical_address']='123 Example Street, Phoenix, AZ 71891'
        base.pop('signature');base['signature']=seal(base,SECRET)
        import official_research
        token['physical_address']=base['physical_address'];token['primary_proof_signature']=base['signature']
        token['primary_proof_sha256']=hashlib.sha256(official_research.canonical(base).encode()).hexdigest()
        token.pop('signature');token['signature']=contact_seal(token,SECRET)
        self.assertFalse(auto_evidence_valid(row,SECRET))

    def test_contact_token_does_not_waive_blocked_or_old_primary(self):
        import official_research
        for field,value in (('source_url','https://yelp.com/biz/example'),
                            ('checked_at',(NOW-timedelta(days=91)).isoformat())):
            row=self.enriched();base=row['evidence']['vps_verification'];token=row['evidence']['contact_verification']
            base[field]=value
            base.pop('signature');base['signature']=seal(base,SECRET)
            if field=='source_url':
                row[field]=value;token[field]=value
                for key in ('primary_receipt','contact_receipt'):
                    token[key]['requested_url']=value;token[key]['final_url']=value
            token['primary_proof_signature']=base['signature']
            token['primary_proof_sha256']=hashlib.sha256(official_research.canonical(base).encode()).hexdigest()
            token.pop('signature');token['signature']=contact_seal(token,SECRET)
            with self.subTest(field=field):self.assertFalse(auto_evidence_valid(row,SECRET))

    def test_query_recipient_and_invalid_cf(self):
        for link in ('<a href="mailto:'+EMAIL+'?bcc=other@example.test">Email</a>', '<a data-cfemail="zz">Email</a>'):
            with self.subTest(link=link),self.assertRaises(ValueError):self.run_verify(contact=self.contact_page(link))

    def test_withdrawn_and_other_structured_mailbox(self):
        for extra in ('Do not email us.', '<script type="application/ld+json">'+json.dumps({'email':'other@example.test'})+'</script>'):
            with self.subTest(extra=extra),self.assertRaises(ValueError):self.run_verify(contact=self.contact_page('<a href="mailto:'+EMAIL+'">Email</a>',extra=extra))


if __name__=='__main__':unittest.main()
