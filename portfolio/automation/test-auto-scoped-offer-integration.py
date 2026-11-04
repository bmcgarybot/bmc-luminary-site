"""Execute actual invitation processor + actual delegated worker, all IO mocked."""
import ast,runpy,sys,unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import AsyncMock,patch
from fastapi import Header
ROOT=Path(__file__).parent;sys.path.insert(0,str(ROOT/'api'))
class Acquire:
 def __init__(self,conn):self.conn=conn
 async def __aenter__(self):return self.conn
 async def __aexit__(self,*args):pass
class Tests(unittest.IsolatedAsyncioTestCase):
 def setup(self,flag=False,hold=False,marketing=True):
  fixture_type=runpy.run_path(str(ROOT/'test-auto-scoped-offer.py'))['Tests']
  self.fixture=fixture_type();self.fixture.setup();f=self.fixture
  original=f.conn.fetch;self.invitation_checks=[]
  async def fetch(sql,*args):
   if 'join products' in sql:
    self.invitation_checks.append(f.offer['status']);return []
   return await original(sql,*args)
  f.conn.fetch=fetch
  self.send=AsyncMock(side_effect=AssertionError('No live mail in integration test'))
  ns=dict(Header=Header,require_admin=lambda key:None,OWNER_LAUNCH_HOLD=hold,GROWTH_OUTREACH_ENABLED=marketing,
      GROWTH_OUTREACH_TARGET_IDS=('legacy-fixture',),GROWTH_OUTREACH_WAVE='legacy-wave',GROWTH_WAVES=f.waves,
      ADMIN_KEY='synthetic-secret',app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Acquire(f.conn)))),
      growth_offer_payload_current=f.current,send_mail_once=self.send)
  if flag is not None:ns['GROWTH_AUTO_APPROVE_REQUESTED_25']=flag
  node=next(n for n in ast.parse((ROOT/'api/app.py').read_text()).body if isinstance(n,ast.AsyncFunctionDef) and n.name=='process_growth_offer_invitations')
  node.decorator_list=[];exec(compile(ast.Module(body=[node],type_ignores=[]),'actual_invitation_worker','exec'),ns)
  self.ns=ns;self.resolve=AsyncMock(return_value=f.scopes)
 async def call(self):
  with patch('scoped_dispatch.resolve_dispatch_scopes',self.resolve):return await self.ns['process_growth_offer_invitations']('admin')
 async def test_enabled_real_worker_approves_before_invitation_selection(self):
  self.setup(flag=True);out=await self.call()
  self.assertEqual(out['requested_25_approval']['approved'],1);self.assertEqual(self.invitation_checks,['approved']);self.assertEqual(out['sent'],0);self.send.assert_not_awaited()
 async def test_explicit_disabled_or_missing_policy_cannot_infer_from_marketing(self):
  for flag in (False,None,'true',1):
   self.setup(flag=flag);out=await self.call()
   self.assertEqual(out['requested_25_approval']['approved'],0);self.assertEqual(self.fixture.offer['status'],'draft');self.fixture.current.assert_not_awaited()
 async def test_owner_hold_and_marketing_hold_skip_worker(self):
  for hold,marketing in ((True,True),(False,False)):
   self.setup(True,hold,marketing);out=await self.call()
   self.assertTrue(out['held']);self.assertEqual(self.fixture.calls,[]);self.resolve.assert_not_awaited();self.send.assert_not_awaited()
 async def test_requested_unqualified_offer_remains_draft_and_reports_help(self):
  self.setup(True);self.fixture.suppressed=True;out=await self.call()
  self.assertEqual(out['requested_25_approval']['needs_review'],1);self.assertEqual(self.invitation_checks,['draft']);self.send.assert_not_awaited()
 def test_config_and_container_default_false(self):
  node=next(n for n in ast.parse((ROOT/'api/app.py').read_text()).body if isinstance(n,ast.Assign) and any(isinstance(t,ast.Name) and t.id=='GROWTH_AUTO_APPROVE_REQUESTED_25' for t in n.targets))
  for setting,expected in ((None,False),('true',True),('false',False)):
   ns={'os':SimpleNamespace(getenv=lambda key,default:default if setting is None else setting)}
   exec(compile(ast.Module(body=[node],type_ignores=[]),'actual_config','exec'),ns);self.assertIs(ns['GROWTH_AUTO_APPROVE_REQUESTED_25'],expected)
  compose=(ROOT/'docker-compose.yml').read_text();self.assertEqual(compose.count('GROWTH_AUTO_APPROVE_REQUESTED_25: ${GROWTH_AUTO_APPROVE_REQUESTED_25:-false}'),1)
if __name__=='__main__':unittest.main()
