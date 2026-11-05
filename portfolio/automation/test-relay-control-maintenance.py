"""Finite real flock + mocked runtime reconciliation; no host/ops/network writes."""
import fcntl,json,pathlib,runpy,subprocess,tempfile,unittest
from unittest.mock import patch
PATH=pathlib.Path(__file__).with_name('vps-gitops-relay.py');ns=runpy.run_path(str(PATH),run_name='maintenance_unit');g=ns['execute'].__globals__
class Tests(unittest.TestCase):
 def test_exclusive_control_lock_blocks_watchdog_shared_lock_and_releases_on_error(self):
  with tempfile.TemporaryDirectory() as directory:
   path=pathlib.Path(directory)/'maintenance.lock'
   for action in ns['WATCHDOG_CONTROL_ACTIONS']:
    with self.assertRaises(RuntimeError):
     with ns['watchdog_control_maintenance'](action,path):
      with path.open('a') as watchdog:
       with self.assertRaises(BlockingIOError):fcntl.flock(watchdog,fcntl.LOCK_SH|fcntl.LOCK_NB)
      raise RuntimeError('synthetic control failure')
    with path.open('a') as watchdog:fcntl.flock(watchdog,fcntl.LOCK_SH|fcntl.LOCK_NB);fcntl.flock(watchdog,fcntl.LOCK_UN)
 def test_lock_wait_is_bounded_and_deploy_never_relocks(self):
  with tempfile.TemporaryDirectory() as directory:
   path=pathlib.Path(directory)/'maintenance.lock'
   with path.open('a') as watchdog:
    fcntl.flock(watchdog,fcntl.LOCK_SH|fcntl.LOCK_NB)
    with self.assertRaises(ns['RelayError']):
     with ns['watchdog_control_maintenance']('growth_launch_disable',path,acquire_timeout=0):self.fail('Busy maintenance lock acquired')
    with ns['watchdog_control_maintenance']('deploy_update',path,acquire_timeout=0):pass
   missing=pathlib.Path(directory)/'must-not-exist'/'maintenance.lock'
   with ns['watchdog_control_maintenance']('operator_snapshot',missing):pass
   self.assertFalse(missing.exists())
 def test_actual_request_wrapper_releases_lock_on_execution_failure(self):
  with tempfile.TemporaryDirectory() as directory:
   path=pathlib.Path(directory)/'maintenance.lock';real=ns['watchdog_control_maintenance'];seen=[]
   def execute(req):
    seen.append(req['action'])
    with path.open('a') as watchdog:
     with self.assertRaises(BlockingIOError):fcntl.flock(watchdog,fcntl.LOCK_SH|fcntl.LOCK_NB)
    raise ValueError('synthetic')
   with patch.dict(g,{'execute':execute,'watchdog_control_maintenance':lambda action:real(action,path)}):
    with self.assertRaises(ValueError):ns['execute_request']({'action':'growth_launch_disable'})
   self.assertEqual(seen,['growth_launch_disable'])
   with path.open('a') as handle:fcntl.flock(handle,fcntl.LOCK_SH|fcntl.LOCK_NB)
 def test_owner_release_requires_runtime_hold_false_all_switches_off_and_rolls_back(self):
  cohort=json.loads(PATH.with_name('api').joinpath('growth_phoenix_cohort.json').read_text());sha='a'*40
  off={k:'false' for k in ('OUTREACH_ENABLED','BUYER_OUTREACH_ENABLED','GROWTH_OUTREACH_ENABLED')}
  for failure in (None,'restart','hold','flag','unknown','status_error'):
   with self.subTest(failure=failure):
    env=dict(off,BMC_OWNER_LAUNCH_HOLD='true',GROWTH_OUTREACH_WAVE=cohort['wave'],GROWTH_OUTREACH_TARGET_IDS=','.join(cohort['target_ids']));changes=[];commands=[];posts=[]
    def set_env(values):changes.append(values);env.update(values)
    def run(cmd,**kw):
     commands.append(cmd);return subprocess.CompletedProcess(cmd,1 if failure=='restart' and len(commands)==1 else 0,'','')
    def admin(path,**kw):
     posts.append(path)
     if path=='/api/admin/authorize-reviewed-phoenix-launch':return dict(ok=True,approved_queued=1)
     self.assertEqual(path,'/api/admin/growth-status')
     if failure=='status_error':raise RuntimeError('private host/secret')
     flags={key:False for key in off}
     if failure=='flag':flags['GROWTH_OUTREACH_ENABLED']=True
     if failure=='unknown':flags={}
     return dict(owner_launch_hold_active=failure=='hold',outreach_switches=flags)
    with patch.dict(g,{'app_env':lambda:dict(env),'assert_outreach_off':lambda:dict(off),'current_sha':lambda:sha,'current_branch':lambda:'master','set_env_values':set_env,'run':run,'admin_post':admin}):
     req=dict(request_id='synthetic_owner_release',action='growth_owner_preview_approve',args=dict(release_owner_hold=True,expected_sha=sha,wave=cohort['wave'],target_ids=cohort['target_ids']))
     if failure:
      with self.assertRaises(ns['RelayError']) as error:ns['execute'](req)
      self.assertNotIn('private host',str(error.exception));self.assertEqual(env['BMC_OWNER_LAUNCH_HOLD'],'true');self.assertEqual(changes[-1],dict(off,BMC_OWNER_LAUNCH_HOLD='true'))
     else:
      result=ns['execute'](req);self.assertTrue(result['metadata']['owner_release_runtime']['runtime_reconciled']);self.assertEqual(env['BMC_OWNER_LAUNCH_HOLD'],'false')
    self.assertTrue(all(env[key]=='false' for key in off));self.assertNotIn('/api/process-growth-outreach',posts)
    self.assertTrue(any(cmd[0]=='docker' and '--force-recreate' in cmd for cmd in commands))
if __name__=='__main__':unittest.main()
