import json,runpy,unittest
from pathlib import Path
from unittest.mock import patch
ns=runpy.run_path(str(Path(__file__).with_name('vps-gitops-relay.py')),run_name='historical_relay_test');execute=ns['execute'];g=execute.__globals__
class Tests(unittest.TestCase):
 def test_readonly_encrypted_forward_only_no_args(self):
  self.assertIn('historical_growth_review',ns['READ_ONLY_ACTIONS']);self.assertNotIn('historical_growth_review',ns['EXTERNAL_ACTIONS'])
  calls=[]
  with patch.dict(g,dict(current_sha=lambda:'a'*40,current_branch=lambda:'master',admin_post=lambda path,**kw:calls.append((path,kw)) or {'ciphertext':'sealed'},run=lambda *a,**k:self.fail('No operational command'),set_env_values=lambda *a:self.fail('No config write'))):
   result=execute(dict(request_id='historical_fixture',action='historical_growth_review',args={}))
   self.assertEqual(json.loads(result['stdout']),{'ciphertext':'sealed'});self.assertEqual(calls,[('/api/admin/historical-growth-review?request_id=historical_fixture',{'timeout':300})])
   with self.assertRaises(ns['RelayError']):execute(dict(request_id='historical_fixture',action='historical_growth_review',args={'target_id':'arbitrary'}))
   self.assertEqual(len(calls),1)
 def test_reentry_requires_exact_opaque_hashes_and_never_sends(self):
  self.assertIn('authorize_historical_reentry',ns['CONTROL_ACTIONS'])
  calls=[]
  with patch.dict(g,dict(current_sha=lambda:'a'*40,current_branch=lambda:'master',admin_post=lambda path,**kw:calls.append((path,kw)) or {'ciphertext':'sealed'},run=lambda *a,**k:self.fail('No operational command'),set_env_values=lambda *a:self.fail('No config write'))):
   result=execute(dict(request_id='historical_auth_fixture',action='authorize_historical_reentry',args={'target_hashes':['a'*64]}))
   self.assertEqual(json.loads(result['stdout']),{'ciphertext':'sealed'})
   self.assertEqual(calls[0],('/api/admin/authorize-historical-growth-reentry?request_id=historical_auth_fixture',{'timeout':120,'body':{'target_hashes':['a'*64]}}))
   for args in ({'target_ids':['private-company-name']},{'target_hashes':['a'*64]*2},{'target_hashes':['a'*64]*8},{'target_hashes':[]}):
    with self.assertRaises(ns['RelayError']):execute(dict(request_id='historical_auth_fixture',action='authorize_historical_reentry',args=args))
   self.assertEqual(len(calls),1)
if __name__=='__main__':unittest.main()
