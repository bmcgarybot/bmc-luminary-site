"""Bounded proposal queue relay actions cannot change outreach or business state."""
import json,pathlib,runpy,unittest
from unittest.mock import patch
ns=runpy.run_path(str(pathlib.Path(__file__).with_name('vps-gitops-relay.py')),run_name='queue_relay_test');execute=ns['execute'];g=execute.__globals__
class Tests(unittest.TestCase):
 def call(self,action,args=None,env=None):
  self.posts=[];settings=dict(BMC_OWNER_LAUNCH_HOLD='true',OUTREACH_ENABLED='false',BUYER_OUTREACH_ENABLED='false',GROWTH_OUTREACH_ENABLED='false');settings.update(env or {})
  def post(path,timeout=360,body=None):self.posts.append((path,timeout,body));return {'ciphertext':'synthetic-only'}
  with patch.dict(g,dict(app_env=lambda:settings,outreach_state=lambda:{k:v for k,v in settings.items() if k.endswith('OUTREACH_ENABLED')},admin_post=post,current_sha=lambda:'a'*40,current_branch=lambda:'master',redact=lambda x:x)):
   return execute(dict(request_id='census-queue-test-001',action=action,args=args or {},allow_external_actions=False))
 def test_enrollment_and_step_are_bounded_private_internal_actions(self):
  args=dict(source_keys=['a'*64,'b'*64],requested_service='pressure_washing');self.assertEqual(self.call('queue_census_research',args)['status'],'success');self.assertEqual(self.posts,[('/api/admin/queue-census-research',60,args)])
  self.call('census_queue_step');self.assertEqual(self.posts,[('/api/process-census-research',180,None)])
  self.assertTrue({'queue_census_research','census_queue_step'}<=g['MUTATING_INTERNAL_ACTIONS'])
 def test_mutation_rejects_invalid_shape_or_outreach_enabled(self):
  for action,args,env in [('queue_census_research',{},{}),('queue_census_research',dict(source_keys=['a'*64]*2,requested_service='pressure_washing'),{}),('census_queue_step',{'iterations':12},{}),('census_queue_step',{}, {'GROWTH_OUTREACH_ENABLED':'true'}),('queue_census_research',dict(source_keys=['a'*64],requested_service='pressure_washing'),{'BMC_OWNER_LAUNCH_HOLD':'false'})]:
   with self.subTest(action=action,args=args,env=env),self.assertRaises(g['RelayError']):self.call(action,args,env)
   self.assertEqual(self.posts,[])
 def test_status_and_export_are_read_only_even_during_outreach(self):
  self.call('census_queue_status',env={'GROWTH_OUTREACH_ENABLED':'true'});self.assertEqual(self.posts,[('/api/admin/census-research-queue-status',30,None)])
  args={'job_ids':['11111111-1111-4111-8111-111111111111']};self.call('census_queue_export',args);self.assertEqual(self.posts[0][1:],(60,args));self.assertIn('/api/admin/export-census-research-queue?request_id=',self.posts[0][0])
  self.assertTrue({'census_queue_status','census_queue_export'}<=g['READ_ONLY_ACTIONS'])
 def test_export_rejects_duplicate_or_unbounded_ids_and_extra_inputs(self):
  one='11111111-1111-4111-8111-111111111111'
  for args in ({'job_ids':[one]*2},{'job_ids':[one]*6},{'job_ids':['../private']},{'job_ids':[one],'email':'not-allowed@example.invalid'}):
   with self.subTest(args=args),self.assertRaises(g['RelayError']):self.call('census_queue_export',args)
   self.assertEqual(self.posts,[])
if __name__=='__main__':unittest.main()
