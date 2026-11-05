"""Synthetic-only offline visible vendor tests; no company/private fixture data."""
import copy,hashlib,json,sys,unittest
from datetime import datetime,timedelta,timezone
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'api'))
from official_research import parse_record,auto_evidence_valid
from vendor_published_area import parse_vendor_published_area,seal,VERSION

SECRET='synthetic-area-only'
URL='https://fixture.example.test/'
CANDIDATE={'side':'vendor','market':'Prescott','business_name':'Example Exterior LLC',
    'category_key':'pressure_washing','category_label':'Pressure washing','public_phone':'9285550100'}
DOCUMENT='''<html><head><title>Commercial Cleaning | Example Exterior LLC</title></head><body>
<main><h1>Example Exterior LLC</h1><p>We provide commercial pressure washing for business properties.</p>
<p>We serve Prescott, Prescott Valley and Chino Valley, Arizona.</p></main>
<footer><p>928-555-0100</p><a href="mailto:office@different-mail.test">Email</a></footer></body></html>'''


def parse(document=DOCUMENT,candidate=None):
    row=dict(candidate or CANDIDATE)
    row.update(parse_vendor_published_area(row,URL,document,hashlib.sha256(document.encode()).hexdigest(),SECRET))
    return row


def entity(address):
    return '<script type="application/ld+json">'+json.dumps({'@type':'LocalBusiness','name':'Example Exterior LLC','url':URL,'address':address})+'</script>'


class Tests(unittest.TestCase):
    def test_visible_positive_no_street_or_jsonld(self):
        row=parse();self.assertTrue(auto_evidence_valid(row,SECRET))
        self.assertEqual(row['verifier'],VERSION);self.assertFalse(row['physical_address_verified'])
        self.assertEqual(row['location_type'],'published_service_area');self.assertNotIn('physical_address',row)
        self.assertFalse(row['accepted_provider']);self.assertFalse(row['confirmed_demand'])

    def test_wrapper_fallback_and_buyer_still_requires_physical(self):
        row=dict(CANDIDATE);row.update(parse_record(row,URL,DOCUMENT,'a'*64,SECRET))
        self.assertEqual(row['verifier'],VERSION);self.assertTrue(auto_evidence_valid(row,SECRET))
        with self.assertRaises(ValueError):parse_record(dict(CANDIDATE,side='buyer',category_key='retail'),URL,DOCUMENT,'a'*64,SECRET)

    def test_title_identity_or_main_identity_not_fuzzy(self):
        for text in (DOCUMENT.replace('Example Exterior LLC','Another Exterior LLC'),
                     DOCUMENT.replace('Example Exterior LLC','Example Exterior Equipment')):
            with self.subTest(text=text),self.assertRaises(ValueError):parse(text)

    def test_nav_footer_and_testimonials_cannot_prove_service(self):
        for tag in ('nav','footer','blockquote'):
            doc=DOCUMENT.replace('<p>We provide commercial pressure washing for business properties.</p>',
                '<'+tag+'>We provide commercial pressure washing for business properties.</'+tag+'>')
            with self.subTest(tag=tag),self.assertRaises(ValueError):parse(doc)
        doc=DOCUMENT.replace('<p>We provide','<p class="testimonials">We provide')
        with self.assertRaises(ValueError):parse(doc)

    def test_hidden_service_and_hidden_identity_cannot_qualify(self):
        for attr in ('hidden','aria-hidden="true"','style="display:none"'):
            with self.subTest(attr=attr),self.assertRaises(ValueError):parse(DOCUMENT.replace('<p>We provide','<p '+attr+'>We provide'))

    def test_city_mention_or_other_city_not_service_area(self):
        for replacement in ('Prescott, Arizona','We serve Prescott Valley, Arizona.', 'We serve Prescott, Wisconsin.'):
            doc=DOCUMENT.replace('We serve Prescott, Prescott Valley and Chino Valley, Arizona.',replacement)
            with self.subTest(replacement=replacement),self.assertRaises(ValueError):parse(doc)

    def test_arizona_context_required_not_city_only(self):
        with self.assertRaises(ValueError):parse(DOCUMENT.replace(', Arizona',''))

    def test_positive_service_heading_with_explicit_city(self):
        doc=DOCUMENT.replace('We serve Prescott, Prescott Valley and Chino Valley, Arizona.','Commercial pressure washing in Prescott, AZ')
        self.assertTrue(auto_evidence_valid(parse(doc),SECRET))

    def test_negative_service_and_city_and_closure(self):
        for doc in (DOCUMENT.replace('We provide','We do not provide'),DOCUMENT.replace('We serve','We no longer serve'),DOCUMENT+'<footer>We do not serve Prescott.</footer>',DOCUMENT+'<p>Permanently closed</p>'):
            with self.subTest(doc=doc),self.assertRaises(ValueError):parse(doc)

    def test_phone_seed_and_ambiguity(self):
        for doc in (DOCUMENT.replace('928-555-0100','928-555-9999'),DOCUMENT+'<p>928-555-9999</p>',DOCUMENT.replace('928-555-0100','')):
            with self.subTest(doc=doc),self.assertRaises(ValueError):parse(doc)

    def test_multiple_guessed_and_designer_mailboxes(self):
        for doc in (DOCUMENT.replace('<a href="mailto:office@different-mail.test">Email</a>','office@different-mail.test'),
                    DOCUMENT+'<a href="mailto:other@example.test">Other</a>',
                    DOCUMENT.replace('>Email</a>','>Email</a> Website designed by Example')):
            with self.subTest(doc=doc),self.assertRaises(ValueError):parse(doc)

    def test_cf_mailbox_positive(self):
        mail='office@different-mail.test';encoded='31'+''.join(f'{ord(c)^49:02x}' for c in mail)
        doc=DOCUMENT.replace('href="mailto:'+mail+'"','href="/cdn-cgi/l/email-protection" data-cfemail="'+encoded+'"')
        self.assertEqual(parse(doc)['email_provenance'],['cloudflare_data_cfemail'])

    def test_foreign_postal_country_or_state_rejected_even_visible_az(self):
        for address in ({'streetAddress':'100 Main Street','addressRegion':'AZ','postalCode':'71891'},
                        {'addressRegion':'AZ','postalCode':'91053'}, {'addressRegion':'CA','postalCode':'90210'},
                        {'addressRegion':'AZ','addressCountry':'Canada'}, {'addressRegion':'AZ','postalCode':'8631'}):
            with self.subTest(address=address),self.assertRaises(ValueError):parse(DOCUMENT+entity(address))

    def test_same_city_different_az_streets_are_not_physical_proof_conflict(self):
        doc=DOCUMENT+entity({'streetAddress':'100 Main Street','addressLocality':'Prescott','addressRegion':'AZ','postalCode':'86301'})+'<footer>200 Other Road, Prescott, AZ 86303</footer>'
        self.assertTrue(auto_evidence_valid(parse(doc),SECRET))

    def test_visible_bad_zip_and_foreign_country(self):
        for suffix in ('<footer>100 Main Street, Prescott, AZ 59510</footer>','<p>Our office is in Canada.</p>'):
            with self.subTest(suffix=suffix),self.assertRaises(ValueError):parse(DOCUMENT+suffix)

    def test_tamper_row_binding_expiry_and_signature_domain(self):
        row=parse()
        for field in ('business_name','market','category_key','source_url','public_email','public_phone','snippet','side'):
            bad=copy.deepcopy(row);bad[field]='changed'
            with self.subTest(field=field):self.assertFalse(auto_evidence_valid(bad,SECRET))
        for age in (8,-1):
            bad=copy.deepcopy(row);facts=bad['evidence']['vps_verification'];facts.pop('signature')
            facts['checked_at']=(datetime.now(timezone.utc)-timedelta(days=age)).isoformat();facts['signature']=seal(facts,SECRET)
            self.assertFalse(auto_evidence_valid(bad,SECRET))
        from official_research import seal as native_seal
        bad=copy.deepcopy(row);facts=bad['evidence']['vps_verification'];facts.pop('signature');facts['signature']=native_seal(facts,SECRET)
        self.assertFalse(auto_evidence_valid(bad,SECRET))

    def test_linked_area_direct_country_postal_and_visible_namesake_state(self):
        for obj in ({'areaServed':{'name':'Prescott','addressRegion':'WI'}},
                    {'addressCountry':'Canada'}, {'areaServed':{'name':'Prescott','postalCode':'91053'}}):
            obj.update(name='Example Exterior LLC',url=URL)
            with self.subTest(obj=obj),self.assertRaises(ValueError):
                parse(DOCUMENT+'<script type="application/ld+json">'+json.dumps(obj)+'</script>')
        with self.assertRaises(ValueError):parse(DOCUMENT+'<p>We serve Prescott, Wisconsin.</p>')

    def test_nested_designer_contact_and_supplier_paragraph_identity(self):
        doc=DOCUMENT.replace('<a href="mailto:office@different-mail.test">Email</a>',
            '<p>Website designed by <a href="mailto:office@different-mail.test">Example designer</a></p>')
        with self.assertRaises(ValueError):parse(doc)
        doc=DOCUMENT.replace('Example Exterior LLC','Example Exterior Equipment').replace('<h1>Example Exterior Equipment</h1>',
            '<p>Example Exterior Equipment provides our professional services.</p>')
        with self.assertRaises(ValueError):parse(doc)

    def test_wrapper_preserves_physical_success_when_v2_fails(self):
        from official_research import VERSION as V1
        obj={'@type':'LocalBusiness','name':CANDIDATE['business_name'],'url':URL,'telephone':'9285550100',
             'description':'Commercial pressure washing','address':{'streetAddress':'100 Main Street',
                'addressLocality':'Prescott','addressRegion':'AZ','postalCode':'86301'}}
        doc='<script type="application/ld+json">'+json.dumps(obj)+'</script>'
        row=dict(CANDIDATE);row.update(parse_record(row,URL,doc,'a'*64,SECRET))
        self.assertEqual(row['verifier'],V1);self.assertTrue(auto_evidence_valid(row,SECRET))
        obj['email']='office@different-mail.test'
        row=dict(CANDIDATE);row.update(parse_record(row,URL,DOCUMENT+'<script type="application/ld+json">'+json.dumps(obj)+'</script>','a'*64,SECRET))
        self.assertEqual(row['verifier'],V1)

    def test_wrapper_no_email_physical_can_use_visible_v2(self):
        obj={'@type':'LocalBusiness','name':CANDIDATE['business_name'],'url':URL,'telephone':'9285550100',
             'description':'Commercial pressure washing','address':{'streetAddress':'100 Main Street',
                'addressLocality':'Prescott','addressRegion':'AZ','postalCode':'86301'}}
        row=dict(CANDIDATE);row.update(parse_record(row,URL,DOCUMENT+'<script type="application/ld+json">'+json.dumps(obj)+'</script>','a'*64,SECRET))
        self.assertEqual(row['verifier'],VERSION);self.assertTrue(auto_evidence_valid(row,SECRET))

    def test_equipment_advertising_is_not_service_delivery(self):
        for text in ('We sell pressure washing equipment for business properties.',
                     'We provide pressure washing equipment for businesses.',
                     'We offer pressure washing training courses.'):
            with self.subTest(text=text),self.assertRaises(ValueError):
                parse(DOCUMENT.replace('We provide commercial pressure washing for business properties.',text))

    def test_linked_structured_withdrawal_cannot_be_hidden_by_positive_text(self):
        for description in ('We no longer serve Prescott.', 'Pressure washing is not available.', 'Permanently closed'):
            obj={'name':'Example Exterior LLC','url':URL,'description':description}
            with self.subTest(description=description),self.assertRaises(ValueError):
                parse(DOCUMENT+'<script type="application/ld+json">'+json.dumps(obj)+'</script>')

    def test_affirmative_extension_idiom_not_withdrawn_but_real_exclusion_remains(self):
        doc=DOCUMENT.replace('We provide commercial pressure washing for business properties.',
            "We provide commercial pressure washing and that doesn't stop with our commercial clients.")
        self.assertTrue(auto_evidence_valid(parse(doc),SECRET))
        with self.assertRaises(ValueError):parse(doc+'<p>We do not serve Prescott.</p>')
        with self.assertRaises(ValueError):parse(doc.replace("doesn't stop with our commercial clients.","doesn't stop with our commercial clients, but we no longer provide pressure washing."))

    def test_explicit_county_including_city_cleaning_offer_is_service_area(self):
        candidate=dict(CANDIDATE,category_key='commercial_cleaning',category_label='Commercial cleaning')
        doc=DOCUMENT.replace('commercial pressure washing','commercial cleaning').replace(
            'We serve Prescott, Prescott Valley and Chino Valley, Arizona.',
            'We proudly offer our deep-cleaning services to all of Example County including Prescott and Prescott Valley, Arizona.')
        self.assertTrue(auto_evidence_valid(parse(doc,candidate),SECRET))
        with self.assertRaises(ValueError):parse(doc.replace('Prescott and Prescott Valley','Other City'),candidate)
        with self.assertRaises(ValueError):parse(doc.replace('We proudly offer','We do not offer'),candidate)

    def test_foreign_and_blocked_source_and_missing_digest_rejected(self):
        for url,digest in (('https://yelp.com/biz/example','a'*64),(URL,'bad')):
            with self.subTest(url=url),self.assertRaises(ValueError):parse_vendor_published_area(CANDIDATE,url,DOCUMENT,digest,SECRET)


if __name__=='__main__':unittest.main()
