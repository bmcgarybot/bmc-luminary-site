"""API pilot relay bounds: no credentials, network, Docker or customer actions."""
import json,pathlib,runpy,subprocess,unittest
from unittest.mock import patch
ns=runpy.run_path(str(pathlib.Path(__file__).with_name('vps-gitops-relay.py')),run_name='pilot_relay_test');g=ns['execute'].__globals__
class Tests(unittest.TestCase):
 def execute(self,action,args=None):
  calls=[]
  def run(cmd,**kw):calls.append((cmd,kw));return subprocess.CompletedProcess(cmd,0,'{"ok":true}','')
  with patch.dict(g,{'run':run,'current_sha':lambda:'a'*40,'current_branch':lambda:'master','assert_outreach_off':lambda:self.fail('Research pilot must not alter campaign gates'),'redact':lambda x:x}):
   result=ns['execute']({'request_id':'pilot-test-20261104','action':action,'args':args or {},'allow_external_actions':action=='api_research_run'})
  return result,calls
 def test_prepare_status_and_run_use_fixed_commands(self):
  for action,flag in [('api_research_prepare','--prepare'),('api_research_status','--status'),('api_research_run','--run')]:
   with self.subTest(action=action):
    result,calls=self.execute(action);self.assertEqual(len(calls),1);self.assertIn(flag,calls[0][0]);self.assertFalse(result['metadata']['customer_actions']);self.assertEqual(result['metadata']['pilot_budget_ceiling_usd'],10)
    self.assertLessEqual(calls[0][1]['timeout'],900)
 def test_key_only_accepts_encrypted_fixed_rsa_payload(self):
  for payload in ({'OPENAI_API_KEY':'sk-synthetic'},{'ciphertext':'short'},{'ciphertext':'a'*684,'extra':1},{'ciphertext':'a'*683}):
   with self.subTest(payload=payload),self.assertRaises(ns['RelayError']):self.execute('api_research_configure',payload)
  _,calls=self.execute('api_research_configure',{'ciphertext':'a'*684});self.assertEqual(calls[0][0][-2],'--configure-encrypted')
 def test_run_accepts_no_budget_model_or_arbitrary_task_override(self):
  for key in ('budget','model','prompt','command','OPENAI_API_KEY'):
   with self.subTest(key=key),self.assertRaises(ns['RelayError']):self.execute('api_research_run',{key:'unsafe'})
 def test_run_requires_explicit_external_action_authorization(self):
  from datetime import datetime,timezone
  q={'request_id':'pilot-test-20261104','version':1,'action':'api_research_run','args':{},'created_at':datetime.now(timezone.utc).isoformat(),'allow_external_actions':False}
  with self.assertRaises(ns['RelayError']):ns['validate_request'](q)
  q['allow_external_actions']=True;ns['validate_request'](q)
 def test_export_rejects_paths_and_unknown_args(self):
  for payload in ({},{'source_request_id':'../../secret'},{'source_request_id':'validrequest','path':'/tmp/private'}):
   with self.subTest(payload=payload),self.assertRaises(ns['RelayError']):self.execute('api_research_export',payload)
if __name__=='__main__':unittest.main()
