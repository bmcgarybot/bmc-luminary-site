"""Exact rolling release refuses unrelated, unapproved or previously sent recipients."""
import sys,unittest,runpy,copy
from pathlib import Path
from unittest.mock import AsyncMock
BASE=Path(__file__).parent;sys.path.insert(0,str(BASE/'api'))
from scoped_launch import target_ids,check_batch
fixture=runpy.run_path(str(BASE/'test-scoped-dispatch.py'))

class Tests(unittest.IsolatedAsyncioTestCase):
 async def test_exact_current_profile_and_queued_row_required(self):
  row=fixture['authorized']('pressure_washing');row['experiment_cell']='test-cell'
  conn=type('Conn',(),{})();conn.fetchrow=AsyncMock(return_value=row);conn.fetchval=AsyncMock(return_value=True)
  body={'target_ids':[row['target_id']]}
  result=await check_batch(conn,body,fixture['SECRET'],fixture['WAVES'])
  self.assertEqual(result['target_ids'],body['target_ids']);self.assertEqual(result['sent'],0)
  for status in ('contacted','suppressed','bad_fit'):
   conn.fetchrow.return_value={**row,'status':status}
   with self.assertRaises(ValueError):await check_batch(conn,body,fixture['SECRET'],fixture['WAVES'])
  conn.fetchrow.return_value=row;conn.fetchval.return_value=False
  with self.assertRaises(ValueError):await check_batch(conn,body,fixture['SECRET'],fixture['WAVES'])
  conn.fetchval.return_value=True;changed=copy.deepcopy(row);changed['source_data'].pop('scoped_dispatch');conn.fetchrow.return_value=changed
  with self.assertRaises(ValueError):await check_batch(conn,body,fixture['SECRET'],fixture['WAVES'])
 def test_no_empty_duplicate_or_legacy_scope(self):
  tid='inventory:00000000-0000-0000-0000-000000000001'
  for payload in ({},{'target_ids':[]},{'target_ids':[tid,tid]},{'target_ids':['legacy:1']},{'target_ids':[tid],'wave':'old'}):
   with self.assertRaises(ValueError):target_ids(payload)

class RelayTests(unittest.TestCase):
 def test_release_posts_only_exact_new_ids_and_rolls_back_on_health_failure(self):
  from types import SimpleNamespace
  from unittest.mock import patch
  ns=runpy.run_path(str(BASE/'vps-gitops-relay.py'),run_name='relay_test')
  fn=ns['execute'];g=fn.__globals__;tid='inventory:00000000-0000-0000-0000-000000000001'
  for healthy in (True,False):
   posts=[];changes=[]
   def admin(path,**kw):
    posts.append((path,kw.get('body')))
    if path=='/api/admin/check-scoped-launch':return {'ok':True,'target_ids':[tid]}
    if path=='/api/process-growth-health':return {'health_ok':healthy}
    return {'sent':1}
   with patch.dict(g,assert_outreach_off=lambda: {},app_env=lambda:{'BMC_OWNER_LAUNCH_HOLD':'true'},
      current_sha=lambda:'a'*40,admin_post=admin,set_env_values=lambda v:changes.append(v),
      run=lambda *a,**k:SimpleNamespace(returncode=0,stdout='',stderr='')):
    request={'action':'growth_scoped_launch_enable','args':{'target_ids':[tid]},'request_id':'test-new-scoped-release'}
    if healthy:fn(request)
    else:
     with self.assertRaises(ns['RelayError']):fn(request)
   self.assertNotIn('/api/admin/authorize-reviewed-phoenix-launch',[p for p,b in posts])
   if healthy:self.assertIn(('/api/process-growth-outreach',{'target_ids':[tid]}),posts)
   else:
    self.assertNotIn('/api/process-growth-outreach',[p for p,b in posts])
    self.assertEqual(changes[-1],{'BMC_OWNER_LAUNCH_HOLD':'true','GROWTH_OUTREACH_ENABLED':'false'})

if __name__=='__main__':unittest.main()
