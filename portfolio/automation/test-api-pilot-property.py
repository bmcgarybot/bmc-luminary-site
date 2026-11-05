"""Synthetic public-neutral pilot role/country gates; no network or API spend."""
import json,sys,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent))
from api_pilot_property import validate_property_source
C={'side':'buyer','category_key':'property_management','business_name':'Example Realty LLC','market':'Phoenix'}
BASE='<title>Example Realty LLC | Phoenix</title><main><p>We provide professional property management services in Phoenix.</p></main>'

def schema(country):return '<script type="application/ld+json">'+json.dumps({'@type':'RealEstateAgent','name':'Example Realty LLC','address':{'addressCountry':country}})+'</script>'

class Tests(unittest.TestCase):
 def test_actual_management_publication_with_exact_identity(self):
  result=validate_property_source(C,BASE+schema('US'))
  self.assertEqual(result['published_role'],'property_management');self.assertFalse(result['confirmed_buying_intent'])
  self.assertFalse(result['native_verification_performed'])
 def test_residential_apartment_community_is_eligible_role(self):
  c=dict(C,business_name='Example Apartment Homes')
  result=validate_property_source(c,'<title>Example Apartment Homes</title><p>Welcome to our residential apartment community in Phoenix. Apartments for rent with leasing tours.</p>')
  self.assertEqual(result['published_role'],'apartment_community')
 def test_company_identity_case_and_legal_suffix_not_fuzzy(self):
  validate_property_source(dict(C,business_name='EXAMPLE REALTY INC'),BASE)
  for doc in (BASE.replace('Example Realty LLC','Other Realty LLC'),BASE.replace('Example Realty LLC','Example Realty Software')):
   with self.subTest(doc=doc),self.assertRaises(ValueError):validate_property_source(C,doc)
 def test_country_string_dict_and_conflicting_multiple_entities(self):
  for country in ('US','USA','United States',{'@type':'Country','name':'United States of America'}, {'@id':'https://schema.org/US'}):validate_property_source(C,BASE+schema(country))
  for country in ('Canada','CA','Mexico',{'@type':'Country','name':'Canada'},{'name':'Canada','identifier':'US'},{}):
   with self.subTest(country=country),self.assertRaises(ValueError):validate_property_source(C,BASE+schema('US')+schema(country))
 def test_nav_footer_testimonial_or_hidden_role_not_operator_proof(self):
  identity='<title>Example Realty LLC</title>'
  for body in ('<nav>Property management services</nav>','<footer><p>We provide property management.</p></footer>',
    '<blockquote><p>We offer property management services.</p></blockquote>',
    '<div class="testimonials"><p>We provide property management services.</p></div>',
    '<p hidden>We provide property management services.</p>',
    '<p style="display:none">We provide property management services.</p>',
    '<p aria-hidden="true">We provide property management services.</p>'):
   with self.subTest(body=body),self.assertRaises(ValueError):validate_property_source(C,identity+body)
 def test_actual_service_declines_veto_positive_claim(self):
  for text in ('We do not provide property management services.','We no longer offer property management.',"We don't handle property management.",'No property management services are offered.','Property management services are not offered.','Property management services are unavailable.'):
   with self.subTest(text=text),self.assertRaises(ValueError):validate_property_source(C,BASE+'<p>'+text+'</p>')
 def test_realtor_sales_only_schema_is_not_management_role(self):
  with self.assertRaises(ValueError):validate_property_source(C,'<title>Example Realty LLC</title><p>We sell residential homes.</p>'+schema('US'))
 def test_suppliers_education_and_nearby_community_not_operator(self):
  for text in ('We provide software for property management companies.','We provide insurance for apartment communities.',
   'We work with property management companies.','We provide maintenance for property management companies.',
   'Our property management clients trust our building repairs.','We offer cleaning for property management companies.',
   'We are near an apartment community.','How to start a property management company.'):
   with self.subTest(text=text),self.assertRaises(ValueError):validate_property_source(C,'<title>Example Realty LLC</title><p>'+text+'</p>')
 def test_wrong_scope_or_missing_identity_or_empty_source(self):
  for c,doc in ((dict(C,side='vendor'),BASE),(dict(C,category_key='retail'),BASE),(dict(C,market='Prescott'),BASE),(C,''),(C,'<p>We provide property management.</p>')):
   with self.assertRaises(ValueError):validate_property_source(c,doc)

if __name__=='__main__':unittest.main()
