"""Relay shape and hold checks for read-only encrypted census research."""
import json,pathlib,runpy,unittest
from unittest.mock import patch
ns=runpy.run_path(str(pathlib.Path(__file__).with_name('vps-gitops-relay.py')),run_name='census_relay_test');execute=ns['execute'];g=execute.__globals__
class Tests(unittest.TestCase):
 def call(self,args,env=None):
  self.posts=[]
  settings=dict(BMC_OWNER_LAUNCH_HOLD='true',OUTREACH_ENABLED='false',BUYER_OUTREACH_ENABLED='false',GROWTH_OUTREACH_ENABLED='false');settings.update(env or {})
  def post(path,timeout=360,body=None):self.posts.append((path,timeout,body));return {'ciphertext':'synthetic-ciphertext'}
  with patch.dict(g,dict(app_env=lambda:settings,outreach_state=lambda:{k:v for k,v in settings.items() if k.endswith('OUTREACH_ENABLED')},admin_post=post,current_sha=lambda:'a'*40,current_branch=lambda:'master',redact=lambda x:x)):
   return execute(dict(request_id='census-test-request-001',action='census_research_review',args=args,allow_external_actions=False))
 def test_valid_keys_go_only_to_private_local_endpoint(self):
  args=dict(source_keys=['a'*64,'b'*64],requested_service='pressure_washing');r=self.call(args)
  self.assertEqual(r['status'],'success');self.assertEqual(len(self.posts),1);self.assertEqual(self.posts[0][1:],(180,args));self.assertIn('/api/admin/research-census-review?request_id=',self.posts[0][0]);self.assertIn('census_research_review',g['READ_ONLY_ACTIONS'])
 def test_invalid_or_unbounded_input_never_calls_api(self):
  for args in ({},dict(source_keys=['a'*64]*2,requested_service='pressure_washing'),dict(source_keys=['a'*64]*3,requested_service='pressure_washing'),dict(source_keys=['../source'],requested_service='pressure_washing'),dict(source_keys=['a'*64],requested_service='pressure_washing',source_url='https://untrusted.invalid')):
   with self.subTest(args=args),self.assertRaises(g['RelayError']):self.call(args)
   self.assertEqual(self.posts,[])
 def test_hold_or_outreach_change_refuses_before_api(self):
  for env in ({'BMC_OWNER_LAUNCH_HOLD':'false'},{'GROWTH_OUTREACH_ENABLED':'true'},{'BUYER_OUTREACH_ENABLED':'unknown'}):
   with self.subTest(env=env),self.assertRaises(g['RelayError']):self.call(dict(source_keys=['a'*64],requested_service='pressure_washing'),env)
   self.assertEqual(self.posts,[])
if __name__=='__main__':unittest.main()
