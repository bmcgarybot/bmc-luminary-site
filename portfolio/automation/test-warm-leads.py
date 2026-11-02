#!/usr/bin/env python3
import sys,unittest
from pathlib import Path
from datetime import datetime,timedelta,timezone
sys.path.insert(0,str(Path(__file__).parent/'api'))
from warm_leads import assess
class Tests(unittest.TestCase):
    def setUp(self):
        self.now=datetime.now(timezone.utc)
        self.lead=dict(fulfillment_mode='provider_match',consent=True,scope='Clean driveway',market='Phoenix',email='customer@example.invalid',status='received',submitted_at=self.now)
        self.review=dict(reviewed_at=self.now,contact_verified=True,job_confirmed=True,sharing_confirmed=True,not_duplicate=True)
    def test_verified_request_still_cannot_be_charged(self):
        r=assess(self.lead,self.review,self.now);self.assertEqual(r['qualification'],'confirmed_request');self.assertFalse(r['can_charge'])
    def test_public_payload_does_not_substitute_for_review(self):
        self.lead.update(self.review);self.assertEqual(assess(self.lead,now=self.now)['qualification'],'needs_review')
    def test_prospect_or_internal_product_never_qualifies(self):
        self.lead['fulfillment_mode']='internal_delivery';self.assertIn('not_a_customer_job',assess(self.lead,self.review,self.now)['blockers'])
    def test_consent_and_contact_are_required_even_after_review(self):
        self.lead.update(consent=False,email='');r=assess(self.lead,self.review,self.now);self.assertIn('customer_consent_missing',r['blockers']);self.assertIn('contact_missing',r['blockers'])
    def test_expiry_future_and_closed_requests_fail(self):
        for change in ({'submitted_at':self.now-timedelta(days=8)},{'submitted_at':self.now+timedelta(hours=1)},{'status':'won'}):
            self.assertEqual(assess(dict(self.lead,**change),self.review,self.now)['qualification'],'needs_review')
        self.review['reviewed_at']=self.now-timedelta(hours=25);self.assertEqual(assess(self.lead,self.review,self.now)['qualification'],'needs_review')
    def test_string_booleans_do_not_confirm_permission(self):
        self.review['sharing_confirmed']='true';self.assertIn('sharing_confirmed_required',assess(self.lead,self.review,self.now)['blockers'])
if __name__=='__main__':unittest.main()
