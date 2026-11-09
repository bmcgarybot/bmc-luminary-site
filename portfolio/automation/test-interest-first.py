#!/usr/bin/env python3
"""Interest-first launch: deterministic, no-cost tests with synthetic companies."""
import ast,sys,unittest
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE/'api'))
import interest_first as m

class Tests(unittest.TestCase):
    def row(self,**overrides):
        base={'business_name':'Example Yard Care','public_email':'hello@example.invalid',
              'market':'Prescott','service_key':'landscaping','service_name':'Landscaping & Yard Cleanup'}
        return dict(base,**overrides)
    def test_invite_does_not_pretend_samples_are_ready(self):
        subject,plain,html=m.invitation(self.row(),'123 Test Business Way, Prescott, AZ 86301')
        self.assertIn('Example Yard Care',subject)
        self.assertIn('Hey, this is Brett with BMC Service Network.',plain)
        self.assertIn('reply FIVE',plain)
        self.assertIn('then research five',plain)
        self.assertIn('no obligation',plain)
        self.assertIn('not people who asked for quotes',plain)
        self.assertNotIn('already researched',plain)
        self.assertNotIn('guaranteed',plain.lower())
        self.assertNotIn('24 hours',plain.lower())
        self.assertIn('reply NO',plain)
        self.assertIn('123 Test Business Way',plain)
        self.assertNotIn('<script>',html)
    def test_copy_escapes_html_and_blocks_newline_header(self):
        _,plain,html=m.invitation(self.row(business_name='<script>Trial & Yard</script>'),'Safe postal address')
        self.assertNotIn('<script>',html)
        self.assertIn('&lt;script&gt;',html)
        self.assertIn('<script>',plain)
        with self.assertRaises(ValueError):
            m.invitation(self.row(business_name='Injected\nBcc: bad@example.com'),'Safe postal address')
    def test_public_email_validation_and_no_website_requirement(self):
        self.assertTrue(m.candidate_eligible(self.row()))
        for mail in ['invalid','noreply@example.com','DoNotReply@example.com','bad@','a@b','abc\\@example.com']:
            self.assertFalse(m.email_valid(mail),mail)
        self.assertFalse(m.candidate_eligible(self.row(public_email='not-an-email')))
        with self.assertRaises(ValueError):
            m.invitation(self.row(),'')
    def test_query_does_not_require_upfront_samples_or_invent_licenses(self):
        sql=m.CANDIDATE_SQL.lower()
        self.assertIn('outreach_suppressions',sql)
        self.assertIn('sent_at is not null',sql)
        self.assertIn('market_inventory_candidates',sql)
        self.assertIn('vendors',sql)
        self.assertNotIn('growth_sample_prospects',sql)
        self.assertNotIn('growth_sample_min_reserve',sql)
        self.assertNotIn('license',sql)
        self.assertNotIn('outreach_enabled',sql)
        self.assertIn('o.sent_at is not null',sql)
        self.assertIn('o.opt_out=true',sql)
        self.assertIn('growth_interest_first',sql)
        self.assertNotIn('update outreach',sql)
        self.assertNotIn('delete from',sql)
    def test_docker_image_copies_demand_first_module(self):
        dockerfile=(HERE/'api'/'Dockerfile').read_text()
        self.assertIn('interest_first.py',dockerfile)
        self.assertIn('app.py',dockerfile)

    def test_compose_and_scheduler_wire_independent_campaign(self):
        compose=(HERE/'docker-compose.yml').read_text()
        scheduler=(HERE/'scheduler.sh').read_text()
        self.assertIn('INTEREST_FIRST_OUTREACH_ENABLED: ${INTEREST_FIRST_OUTREACH_ENABLED:-false}',compose)
        self.assertIn('INTEREST_FIRST_DAILY_LIMIT: ${INTEREST_FIRST_DAILY_LIMIT:-10}',compose)
        self.assertIn('post /api/admin/interest-first-stage 120',scheduler)
        self.assertIn('post /api/admin/interest-first-send-batch',scheduler)
        self.assertIn('if OWNER_LAUNCH_HOLD or not INTEREST_FIRST_OUTREACH_ENABLED:',(HERE/'api/app.py').read_text())

    def test_aggregate_readiness_is_read_only_and_reports_staged_matrix(self):
        source=(HERE/'api/app.py').read_text()
        self.assertIn('@app.post("/api/admin/interest-first-readiness")',source)
        self.assertIn("INVENTORY_CONTACT_MATRIX_SQL",source)
        self.assertIn("STAGED_INTEREST_MATRIX_SQL",source)
        self.assertIn("'staged_by_market_and_type':staged",source)
        self.assertIn("'launch_held':OWNER_LAUNCH_HOLD",source)
        self.assertNotIn('update market_inventory_candidates',m.INVENTORY_CONTACT_MATRIX_SQL.lower())
        self.assertNotIn('delete from',m.STAGED_INTEREST_MATRIX_SQL.lower())
        relay=(HERE/'vps-gitops-relay.py').read_text()
        self.assertIn('"interest_first_readiness": "/api/admin/interest-first-readiness"',relay)

    def test_production_stays_gated_and_reply_first(self):
        source=(HERE/'api/app.py').read_text()
        tree=ast.parse(source)
        fns={n.name:n for n in tree.body if isinstance(n,(ast.FunctionDef,ast.AsyncFunctionDef))}
        self.assertIn('interest_first_preview',fns)
        self.assertIn('interest_first_stage',fns)
        self.assertIn('interest_first_send_batch',fns)
        self.assertIn('OWNER_LAUNCH_HOLD or not INTEREST_FIRST_OUTREACH_ENABLED',source)
        self.assertIn('send_mail_once(\'interest-first:',source)
        self.assertIn("'interest_first_free_five_requested'",source)
        self.assertIn("row.get('campaign')!='growth_interest_first'",source)
        self.assertIn('GROWTH_OUTREACH_ENABLED=os.getenv',source)
        self.assertIn('INTEREST_FIRST_OUTREACH_ENABLED=os.getenv',source)

class ContactResearchTests(unittest.IsolatedAsyncioTestCase):
    """Pure HTTP-free cases for the bounded public-site candidate verifier."""
    def row(self, **changes):
        d={'candidate_id':'f9821c31-a402-4aef-8267-07c8be0bac43',
           'business_name':'Example Yard Care','market':'Prescott',
           'category_key':'landscaping','source_url':'https://example-yard-care.com/',
           'source_domain':'example-yard-care.com','public_phone':'928-555-0133'}
        d.update(changes)
        return d

    def receipt(self,url,document,redirect_chain=()):
        from official_research import FetchedPageReceipt
        from hashlib import sha256
        data=document.encode()
        return FetchedPageReceipt(url,url,data,sha256(data).hexdigest(),
            '2026-11-08T20:00:00+00:00',200,'text/html',tuple(redirect_chain))

    async def test_verified_company_mailbox_is_research_only(self):
        from interest_contact_research import inspect_public_contact
        doc=('<html><head><title>Example Yard Care | Prescott</title></head>'
             '<body><h1>Example Yard Care</h1><p>Prescott, Arizona</p>'
             '<a href="tel:928-555-0133">Call</a>'
             '<a href="mailto:info@example-yard-care.com">Email</a></body></html>')
        async def illegal(*args,**kwargs):
            raise AssertionError('no network')
        result=await inspect_public_contact(self.row(),
            fetch=lambda url:self.receipt(url,doc))
        self.assertEqual(result['status'],'ready')
        self.assertEqual(result['email'],'info@example-yard-care.com')
        self.assertNotIn('sent',result)
        self.assertEqual(result['area_basis'],'city')

    async def test_wrong_site_and_foreign_geography_are_held(self):
        from interest_contact_research import inspect_public_contact,start_url
        self.assertEqual(start_url(self.row(source_domain='other.com')),'')
        self.assertEqual(start_url(self.row(source_url='https://www.tripadvisor.com/Restaurants/')),'')
        doc=('<html><head><title>Example Yard Care | Halifax</title></head>'
             '<body><h1>Example Yard Care Halifax</h1>'
             '<a href="mailto:hello@example-yard-care.com">Email</a></body></html>')
        value=await inspect_public_contact(self.row(public_phone='928-555-1111'),
            fetch=lambda url:self.receipt(url,doc))
        self.assertEqual(value['status'],'needs_review')
        self.assertNotIn('email',value)

    async def test_public_page_without_mailbox_stays_unstaged(self):
        from interest_contact_research import inspect_public_contact
        doc=('<html><title>Example Yard Care Prescott</title>'
             '<body>Example Yard Care serving Prescott Arizona</body></html>')
        value=await inspect_public_contact(self.row(),fetch=lambda url:self.receipt(url,doc))
        self.assertEqual(value['status'],'no_public_mailbox')
        self.assertNotIn('email',value)

    def test_stage_requires_fresh_independent_source_evidence(self):
        self.assertIn("ir.status='ready'",m.CANDIDATE_SQL)
        self.assertIn("interest_first_contact_research",m.CANDIDATE_SQL)
        self.assertIn("ir.last_verified_at>now()-interval '30 days'",m.CANDIDATE_SQL)
        docker=(HERE/'api'/'Dockerfile').read_text()
        self.assertIn('interest_contact_research.py',docker)
        scheduler=(HERE/'scheduler.sh').read_text()
        self.assertIn('post /api/process-interest-contact-research 180',scheduler)
        relay=(HERE/'vps-gitops-relay.py').read_text()
        self.assertIn('interest_contact_research_step',relay)
        self.assertIn('interest_contact_research_status',relay)


if __name__=='__main__':unittest.main()
