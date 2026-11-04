"""AZ postal sanity revalidates old signed proof; no network or real providers."""
import copy,json,sys,unittest
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import official_research as r
C=dict(side='vendor',market='Prescott',category_key='pressure_washing',category_label='Pressure washing',business_name='Synthetic Wash')
URL='https://synthetic.example/'
def entity(zip_code='86301',region='AZ'):
 return {'@type':'LocalBusiness','name':C['business_name'],'url':URL,'description':'Commercial pressure washing',
         'telephone':'9285550111','address':{'streetAddress':'100 Commercial Way','addressLocality':'Prescott','addressRegion':region,'postalCode':zip_code}}
def document(e):return '<script type="application/ld+json">'+json.dumps(e)+'</script>'
def parse(e):return r.parse_record(C,URL,document(e),'a'*64,'synthetic-secret')
class Tests(unittest.TestCase):
 def test_valid_az_prefixes_and_zip4_still_pass(self):
  for code in ['85004','85040','86301','86442','86503','86301-1234']:
   out=parse(entity(code));self.assertTrue(r.auto_evidence_valid(out,'synthetic-secret'),code)
 def test_other_state_or_malformed_postal_rejected_at_parse(self):
  for code in ['71891','91053','59510','99999','8500','850001','85004-123','85004-12345','85004 AZ','AZ 85004','']:
   with self.subTest(code=code),self.assertRaises(ValueError):parse(entity(code))
  with self.assertRaises(ValueError):parse(entity('85004','NV'))
 def test_old_hmac_before_policy_rejected_without_deleting_history(self):
  for code in ['71891','91053','59510']:
   # Simulate exact prior acceptance condition, sealing the bad geography with
   # the real native signer. Current persisted validator must still reject.
   with patch.object(r,'az_postal_code_valid',return_value=True):old=parse(entity(code))
   before=copy.deepcopy(old)
   self.assertFalse(r.auto_evidence_valid(old,'synthetic-secret'),code)
   self.assertEqual(old,before)
 def test_persisted_postal_format_rechecked_even_with_correct_signature(self):
  for address in ['100 Commercial Way, Prescott, AZ 85004 extra','100 Commercial Way, Prescott, NV 85004',
                  '100 Commercial Way, Prescott, AZ 91053','100 Commercial Way, Prescott, AZ 85004-123']:
   out=parse(entity());signed=out['evidence']['vps_verification'];signed.pop('signature')
   signed['physical_address']=address;signed['signature']=r.seal(signed,'synthetic-secret')
   self.assertFalse(r.auto_evidence_valid(out,'synthetic-secret'))
if __name__=='__main__':unittest.main()
