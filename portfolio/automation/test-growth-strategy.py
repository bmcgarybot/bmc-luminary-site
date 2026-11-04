#!/usr/bin/env python3
"""Strategy drafts retain dated evidence, recipient focus and safe PDF links."""
import copy,io,sys,unittest
from pathlib import Path
from datetime import datetime,timedelta,timezone
sys.path.insert(0,str(Path(__file__).parent/'api'))
from growth_strategy import build_owner_strategy
from growth_offers import validate_strategy,strategy_pdf
from pypdf import PdfReader
class Tests(unittest.TestCase):
 def setUp(self):
  self.now=datetime.now(timezone.utc);self.target={'business_name':'Recipient Fixture','market':'Phoenix','service_key':'commercial_cleaning'}
  self.accounts=[{'business_name':f'Account {i:03d}','market':'Phoenix','category':'Professional office','website_url':f'https://example.test/account-{i}','presentation':{'fit_points':['Published local office information.']}} for i in range(100)]
  self.profiles={str(i):{'business':f'Competitor {i}','opener':'Your site lists office cleaning in Phoenix.','source_url':f'https://competitor{i}.example/','checked_at':self.now.isoformat()} for i in range(3)}
 def draft(self):return build_owner_strategy(self.target,self.accounts,self.profiles,'Your site lists professional office cleaning in Phoenix.',self.now)
 def test_dated_observations_and_specific_accounts_make_complete_owner_draft(self):
  d=self.draft();validate_strategy(d['strategy']);self.assertTrue(d['review']);self.assertEqual(len(d['strategy']['competitors']),3)
  self.assertEqual(d['priority_accounts'],['Account 000','Account 001','Account 002'])
  self.assertIn('Recipient Fixture',d['strategy']['first_email']);self.assertIn('Account 000',d['strategy']['first_email'])
  self.assertTrue(all(c['observed_offer'].startswith('Their site') for c in d['strategy']['competitors']))
 def test_insufficient_stale_wrong_scope_or_duplicate_inputs_rejected(self):
  bad=copy.deepcopy(self.profiles);bad['0']['checked_at']=(self.now-timedelta(days=91)).isoformat()
  for accounts,profiles,target in [(self.accounts[:25],self.profiles,self.target),(self.accounts,bad,self.target),(self.accounts,dict(list(self.profiles.items())[:2]),self.target),(self.accounts,self.profiles,dict(self.target,market='Prescott'))]:
   with self.assertRaises(ValueError):build_owner_strategy(target,accounts,profiles,'Office cleaning',self.now)
  self.accounts[1]=self.accounts[0]
  with self.assertRaises(ValueError):self.draft()
 def test_specific_property_focus_precedes_general_janitorial_office_tests(self):
  self.accounts[50]['category']='property management'
  d=build_owner_strategy(self.target,self.accounts,self.profiles,'Your site pairs commercial janitorial care with property-turnover cleaning.',self.now)
  self.assertEqual(d['priority_accounts'][0],'Account 050');self.assertIn('secondary segment hypotheses',d['strategy']['priorities'])
 def test_rendered_pdf_has_review_mark_recipient_and_clickable_sources(self):
  d=self.draft();raw=strategy_pdf(d,'fixture-owner-reference',preview=True);pdf=PdfReader(io.BytesIO(raw));text='\n'.join(p.extract_text() for p in pdf.pages)
  for phrase in ['OWNER REVIEW DRAFT','Recipient Fixture','Account 000','Four-week plan','fixture-owner-reference']:self.assertIn(phrase,text)
  links=[a.get_object()['/A']['/URI'] for p in pdf.pages for a in p.get('/Annots',[]) if '/A' in a.get_object()]
  for i in range(3):self.assertIn(f'https://competitor{i}.example/',links)
  self.assertIn('mailto:contact@bmcservicenetwork.com',links)
if __name__=='__main__':unittest.main()
