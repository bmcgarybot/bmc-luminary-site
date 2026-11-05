"""Apartment communities require the same individual identity/location/contact proof."""
import copy,hashlib,json,sys,unittest
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'api'))
from official_research import parse_record,auto_evidence_valid

class Tests(unittest.TestCase):
    def setup(self):
        self.row=dict(candidate_id='00000000-0000-4000-8000-000000000001',business_name='Synthetic Garden Apartments',side='buyer',market='Phoenix',category_key='property_management',category_label='Property management and apartment communities')
        self.entity={'@type':'ApartmentComplex','name':self.row['business_name'],'url':'https://synthetic-community.example/',
            'telephone':'6025550123','address':{'streetAddress':'123 Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85001'}}
    def parse(self,entity=None,url=None):
        document='<script type="application/ld+json">'+json.dumps(entity or self.entity)+'</script>'
        return parse_record(self.row,url or self.entity['url'],document,hashlib.sha256(document.encode()).hexdigest(),'synthetic-key')
    def test_individual_apartment_complex_qualifies_with_real_native_seal(self):
        self.setup();parsed=self.parse();self.assertTrue(auto_evidence_valid(dict(self.row,**parsed),'synthetic-key'))
        self.assertEqual(parsed['category_key'],'property_management');self.assertEqual(parsed['evidence']['vps_verification']['category_evidence'],['ApartmentComplex'])
    def test_wrong_city_address_identity_phone_or_domain_still_reject(self):
        for mode in ('city','street','name','contact','domain'):
            self.setup();entity=copy.deepcopy(self.entity)
            if mode=='city':entity['address']['addressLocality']='Scottsdale'
            elif mode=='street':entity['address']['streetAddress']='PO Box 123'
            elif mode=='name':entity['name']='Different Community'
            elif mode=='contact':entity.pop('telephone')
            elif mode=='domain':entity['url']='https://unrelated.example/'
            with self.subTest(mode=mode),self.assertRaises(ValueError):self.parse(entity)
    def test_generic_residence_individual_apartment_directory_and_webpage_not_accepted(self):
        for kind in ('Residence','Apartment','Organization','ItemList','WebPage'):
            self.setup();entity=dict(self.entity,**{'@type':kind})
            with self.subTest(kind=kind),self.assertRaises(ValueError):self.parse(entity)
        self.setup()
        with self.assertRaises(ValueError):self.parse(url='https://www.whereorg.com/property')
    def test_existing_real_estate_agent_supported_without_new_generic_type(self):
        self.setup();entity=dict(self.entity,**{'@type':'RealEstateAgent'})
        self.assertTrue(auto_evidence_valid(dict(self.row,**self.parse(entity)),'synthetic-key'))

if __name__=='__main__':unittest.main()
