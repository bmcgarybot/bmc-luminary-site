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

if __name__=='__main__':unittest.main()
