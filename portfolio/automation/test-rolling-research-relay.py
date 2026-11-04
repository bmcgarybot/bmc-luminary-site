"""Research transitions remain bounded and opaque while current outreach runs."""
import pathlib,runpy,unittest
from unittest.mock import patch
ns=runpy.run_path(str(pathlib.Path(__file__).with_name('vps-gitops-relay.py')),run_name='rolling_research_test');execute=ns['execute'];g=execute.__globals__
CID='11111111-1111-4111-8111-111111111111'
class Tests(unittest.TestCase):
 def call(self,action,args):
  self.posts=[]
  def post(path,timeout=360,body=None):self.posts.append((path,body));return {'ciphertext':'synthetic'}
  with patch.dict(g,dict(admin_post=post,current_sha=lambda:'a'*40,current_branch=lambda:'master',redact=lambda x:x,assert_outreach_off=lambda:(_ for _ in ()).throw(AssertionError('Research must not pause outreach')))):
   return execute(dict(request_id='rolling-research-test-001',action=action,args=args,allow_external_actions=False))
 def test_bounded_private_research_while_sending(self):
  for action,args,path in [('research_promote_census',dict(source_keys=['a'*64],requested_service='commercial_cleaning'),'research-promote-census'),('refresh_uncontacted_vendor',dict(candidate_id=CID),'refresh-uncontacted-vendor'),('enrich_native_contact',dict(candidate_id=CID,contact_path='/contact/',email_sha256='b'*64),'enrich-native-contact-by-hash')]:
   with self.subTest(action=action):
    self.assertEqual(self.call(action,args)['status'],'success');self.assertIn('/api/admin/'+path+'?request_id=',self.posts[0][0]);self.assertEqual(self.posts[0][1],args)
 def test_no_plaintext_or_unbounded_inputs(self):
  cases=[('research_promote_census',dict(source_keys=['a'*64]*3,requested_service='commercial_cleaning')),('refresh_uncontacted_vendor',dict(candidate_id=CID,public_email='private@example.invalid')),('enrich_native_contact',dict(candidate_id=CID,contact_path='https://example.invalid/contact',email_sha256='b'*64)),('enrich_native_contact',dict(candidate_id=CID,contact_path='/../admin',email_sha256='b'*64)),('enrich_native_contact',dict(candidate_id=CID,contact_path='/contact',public_email='private@example.invalid'))]
  for action,args in cases:
   with self.subTest(action=action,args=args),self.assertRaises(g['RelayError']):self.call(action,args)
   self.assertEqual(self.posts,[])
if __name__=='__main__':unittest.main()
