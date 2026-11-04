#!/usr/bin/env python3
"""Primary-site identity evidence and signed provenance; no network or customer actions."""
import copy,json,sys,unittest
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import official_research as r

CANDIDATE=dict(side='buyer',category_key='dental',category_label='Dental practice',market='Phoenix',business_name='Desert Dental Phoenix',public_phone='6025550111')
URL='https://desertdental.example/contact'
ENTITY={'@type':'Dentist','name':'Desert Dental','url':URL,'description':'A dental practice in Phoenix.',
 'telephone':'(602) 555-0111','email':'office@desertdental.example',
 'address':{'@type':'PostalAddress','streetAddress':'100 Central Avenue','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
def document(e):return '<html><title>Desert Dental Phoenix</title><script type="application/ld+json">'+json.dumps(e)+'</script></html>'
class Tests(unittest.TestCase):
 def verified(self,entity=None):return r.parse_record(CANDIDATE,URL,document(entity or ENTITY),'a'*64,'test-secret')
 def test_primary_site_evidence_is_identity_bound_and_sealed(self):
  out=self.verified();self.assertTrue(r.auto_evidence_valid(out,'test-secret'))
  for key,value in [('business_name','Other business'),('market','Sedona'),('source_url','https://elsewhere.example'),('public_phone','6025550199'),('snippet','Invented sales pitch'),('side','vendor')]:
   row=copy.deepcopy(out);row[key]=value;self.assertFalse(r.auto_evidence_valid(row,'test-secret'),key)
  self.assertFalse(r.auto_evidence_valid(out,'wrong-secret'))
  self.assertFalse(r.auto_evidence_valid(dict(CANDIDATE,official_site=True,last_verified_at='now'),'test-secret'))
 def test_directory_sources_rejected_even_with_signed_matching_business(self):
  for url in ('https://local.yahoo.com/info-business','https://powerwashmaps.com/landscaping-lawn-care/business','https://www.homeadvisor.com/listing'):
   self.assertFalse(r.allowed_url(url))
   with self.assertRaises(ValueError):r.parse_record(CANDIDATE,url,document(ENTITY),'a'*64,'test-secret')
  # A previous native signature cannot override a newly rejected source policy.
  out=self.verified();out['source_url']='https://powerwashmaps.com/business'
  signed=out['evidence']['vps_verification'];signed['source_url']=out['source_url'];signed.pop('signature');signed['signature']=r.seal(signed,'test-secret')
  self.assertFalse(r.auto_evidence_valid(out,'test-secret'))
 def test_search_snippet_without_structured_identity_never_qualifies(self):
  with self.assertRaises(ValueError):r.parse_record(CANDIDATE,URL,'Phoenix dentist phone6025550111','a'*64,'test-secret')
 def test_wrong_city_region_name_contact_or_directory_cannot_qualify(self):
  for patch_value in [('addressLocality','Sedona'),('addressRegion','NV'),('streetAddress','PO Box 99'),('postalCode','')]:
   e=copy.deepcopy(ENTITY);e['address'][patch_value[0]]=patch_value[1]
   with self.assertRaises(ValueError):self.verified(e)
  for field,value in [('name','Unrelated Clinic'),('telephone','6025550199'),('url','https://directory.example/profile'),('@type','Restaurant')]:
   e=copy.deepcopy(ENTITY);e[field]=value
   with self.assertRaises(ValueError):self.verified(e)
  with self.assertRaises(ValueError):r.parse_record(CANDIDATE,'https://www.whereorg.com/clinic',document(ENTITY),'a'*64,'test-secret')
 def test_ambiguous_branch_addresses_require_review(self):
  second=copy.deepcopy(ENTITY);second['address']['streetAddress']='200 Central Avenue'
  with self.assertRaises(ValueError):self.verified([ENTITY,second])
 def test_fetch_blocks_private_dns_and_bad_url_schemes(self):
  for url in ('http://business.example','https://user:pass@business.example','https://business.example:8443/','https://localhost/','https://business.internal/'):
   self.assertFalse(r.allowed_url(url),url)
  with patch.object(r.socket,'getaddrinfo',return_value=[(2,1,6,'',('127.0.0.1',443))]):
   with self.assertRaises(ValueError):r.public_addresses('business.example')
  with patch.object(r.socket,'getaddrinfo',return_value=[(2,1,6,'',('93.184.216.34',443)),(2,1,6,'',('10.0.0.1',443))]):
   with self.assertRaises(ValueError):r.public_addresses('business.example')
 def test_same_site_visible_mailbox_supplements_only_a_verified_entity(self):
  entity=copy.deepcopy(ENTITY);entity.pop('email')
  page=document(entity)+'<a href="mailto:info@desertdental.example">Contact</a>'
  out=r.parse_record(CANDIDATE,URL,page,'c'*64,'test-secret')
  self.assertEqual(out['public_email'],'info@desertdental.example');self.assertTrue(r.auto_evidence_valid(out,'test-secret'))
  for links in ['<a href="mailto:info@agency.example">Agency</a>', '<a href="mailto:careers@desertdental.example">Careers</a>', '<a href="mailto:info@desertdental.example">Info</a><a href="mailto:contact@desertdental.example">Contact</a>']:
   out=r.parse_record(CANDIDATE,URL,document(entity)+links,'c'*64,'test-secret');self.assertEqual(out['public_email'],'')
  with self.assertRaises(ValueError):r.parse_record(CANDIDATE,URL,'<a href="mailto:info@desertdental.example">Contact</a>','c'*64,'test-secret')
 def test_vendor_requires_explicit_service_evidence(self):
  c=dict(CANDIDATE,side='vendor',category_key='commercial_cleaning',category_label='Commercial cleaning')
  with self.assertRaises(ValueError):r.parse_record(c,URL,document(ENTITY),'a'*64,'test-secret')
  e=copy.deepcopy(ENTITY);e.update({'@type':'LocalBusiness','name':'Desert Cleaning','url':'https://desertcleaning.example/','description':'Commercial cleaning and janitorial services in Phoenix.'})
  c['business_name']='Desert Cleaning Phoenix'
  self.assertTrue(r.parse_record(c,e['url'],document(e),'a'*64,'test-secret')['evidence']['vps_verification'])

class LinkedPageTests(unittest.IsolatedAsyncioTestCase):
 async def test_observed_contact_page_provides_its_own_sealed_evidence(self):
  home='https://desertdental.example/'
  def fetch(url):
   if url==home:return home,'<a href="/contact">Contact</a><a href="https://evil.example/contact">Other</a>','a'*64
   self.assertEqual(url,URL);return URL,document(ENTITY),'b'*64
  with patch.object(r,'fetch_page',side_effect=fetch) as mocked:
   result,error=await r.inspect_source_pages(CANDIDATE,[home],'test-secret')
  self.assertEqual(mocked.call_count,2);self.assertEqual(error,'');self.assertEqual(result['source_url'],URL)
  self.assertTrue(r.auto_evidence_valid(result,'test-secret'))
  self.assertEqual(result['evidence']['vps_verification']['content_sha256'],'b'*64)
 async def test_contact_navigation_stays_bounded_and_does_not_qualify_plain_text(self):
  home='https://desertdental.example/'
  def fetch(url):return url,'Phoenix dentist6025550111 <a href="/contact/a">Contact</a><a href="/locations/b">Locations</a><a href="/about/c">About</a>','a'*64
  with patch.object(r,'fetch_page',side_effect=fetch) as mocked:
   result,error=await r.inspect_source_pages(CANDIDATE,[home],'test-secret')
  self.assertIsNone(result);self.assertEqual(mocked.call_count,3)
  self.assertEqual(error,'structured_identity_location_or_contact_unproven')
 async def test_forbidden_sources_and_action_links_not_followed(self):
  page='<a href="https://other.example/contact">Other</a><a href="/contact?delete=1">Query</a><a href="/contact/delete-account">Delete</a><a href="/login/contact">Login</a><a href="mailto:x@example.test">Email</a><a href="/contact#form">Form</a>'
  self.assertEqual(r.contact_links(URL,page),[])
  with patch.object(r,'fetch_page',side_effect=ValueError('http_403')) as mocked:
   result,error=await r.inspect_source_pages(CANDIDATE,[URL],'test-secret')
  self.assertIsNone(result);self.assertEqual(mocked.call_count,1);self.assertEqual(error,'http_403')

if __name__=='__main__':unittest.main()
