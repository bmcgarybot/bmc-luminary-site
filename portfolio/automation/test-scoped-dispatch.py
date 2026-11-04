"""Actual profile/dispatch MACs and actual consumers' additive wave-bound queries."""
import ast,copy,json,runpy,sys,unittest,uuid
from datetime import datetime,timezone,timedelta
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import AsyncMock
sys.path.insert(0,str(Path(__file__).parent/'api'))
from scoped_growth import signature
from scoped_dispatch import authorize_dispatch,dispatch_for_target,target_dispatch_wave,resolve_dispatch_scopes
SECRET='secret';WAVES={'commercial_cleaning':'growth-cleaning-1','pressure_washing':'growth-pressure-1'}

def target(service='commercial_cleaning'):
    fixture=runpy.run_path(str(Path(__file__).with_name('test-scoped-growth.py')))['Tests']();fixture.setup()
    row=fixture.target;row['status']='contactable';row['service_key']=service
    p=row['source_data']['scoped_offer'];p.pop('signature');p.update(state='approved',service_key=service);p['signature']=signature(p,SECRET)
    return row

def authorized(service='commercial_cleaning'):
    row=target(service);row['source_data']['scoped_dispatch']=authorize_dispatch(row,SECRET,'test-dispatch-request',WAVES[service]);return row

class Tests(unittest.IsolatedAsyncioTestCase):
    def test_current_profile_token_wave_and_expiry_bindings_fail_closed(self):
        row=authorized();self.assertEqual(dispatch_for_target(row,SECRET,WAVES),'growth-cleaning-1')
        for kind in ('absent','token','profile','recipient','wave','expired','suppressed'):
            changed=copy.deepcopy(row)
            if kind=='absent':changed['source_data'].pop('scoped_dispatch')
            elif kind=='token':changed['source_data']['scoped_dispatch']['request_id']='forged'
            elif kind=='profile':
                p=changed['source_data']['scoped_offer'];p.pop('signature');p['approved_at']='changed';p['signature']=signature(p,SECRET)
            elif kind=='recipient':changed['public_email']='other@example.test'
            elif kind=='wave':changed['source_data']['scoped_dispatch']=authorize_dispatch(changed,SECRET,'test-dispatch-request','wrong-wave')
            elif kind=='suppressed':changed['status']='suppressed'
            else:
                p=changed['source_data']['scoped_offer'];p.pop('signature');p['expires_at']=(datetime.now(timezone.utc)-timedelta(seconds=1)).isoformat();p['signature']=signature(p,SECRET)
            self.assertIsNone(dispatch_for_target(changed,SECRET,WAVES),kind)
    def test_draft_cannot_authorize_and_no_public_boolean_override(self):
        row=target();p=row['source_data']['scoped_offer'];p.pop('signature');p['state']='draft';p['signature']=signature(p,SECRET)
        with self.assertRaises(ValueError):authorize_dispatch(row,SECRET,'test-dispatch-request',WAVES['commercial_cleaning'])
        row['source_data']['scoped_dispatch']=True;self.assertIsNone(dispatch_for_target(row,SECRET,WAVES))
    async def test_resolver_adds_both_waves_without_mutating_original_nine(self):
        legacy=['legacy:'+str(i) for i in range(9)];before=list(legacy)
        cleaning=authorized();pressure=authorized('pressure_washing');missing=target()
        class Conn:
            async def fetch(self,*args):return [cleaning,pressure,missing]
        result=await resolve_dispatch_scopes(Conn(),SECRET,legacy,'growth-cleaning-1',WAVES)
        self.assertEqual({k:result[k] for k in legacy},{k:'growth-cleaning-1' for k in legacy});self.assertEqual(legacy,before)
        self.assertEqual(result[pressure['target_id']],'growth-pressure-1');self.assertNotIn(missing['target_id'],result)
        self.assertEqual(target_dispatch_wave(pressure,SECRET,legacy,'growth-cleaning-1',WAVES),'growth-pressure-1')
    async def test_actual_initial_and_paid_consumers_use_same_authorized_ids_and_exact_wave_pairs(self):
        source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        nodes=[n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name in ('process_growth_outreach','process_growth_offer_invitations')]
        for n in nodes:n.decorator_list=[]
        cleaning=authorized();pressure=authorized('pressure_washing');legacy=['legacy:'+str(i) for i in range(9)];queries=[]
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            async def fetch(self,query,*args):
                queries.append((query,args))
                if "source_data ? 'scoped_dispatch'" in query:return [cleaning,pressure]
                return []
            async def fetchval(self,*args):return 0
        class Pool:
            def acquire(self):return Conn()
        ns=dict(Header=lambda **kw:None,HTTPException=RuntimeError,ADMIN_KEY=SECRET,require_admin=lambda key:None,
            OWNER_LAUNCH_HOLD=False,GROWTH_OUTREACH_ENABLED=True,GROWTH_OUTREACH_TARGET_IDS=legacy,GROWTH_OUTREACH_WAVE='growth-cleaning-1',GROWTH_WAVES=WAVES,
            BUSINESS_POSTAL_ADDRESS='Synthetic postal',IMAP_ENABLED=True,IMAP_HOST='test',IMAP_USER='test',IMAP_PASSWORD='test',GROWTH_OUTREACH_DAILY_LIMIT=10,
            app=SimpleNamespace(state=SimpleNamespace(pool=Pool())),send_mail_once=AsyncMock(side_effect=AssertionError('No SMTP permitted')))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'actual_scoped_dispatch_consumers','exec'),ns)
        await ns['process_growth_outreach'](SECRET);await ns['process_growth_offer_invitations'](SECRET)
        initial=next((q,args) for q,args in queries if 'join unnest' in q)
        self.assertIn('authorized.wave=o.wave',initial[0]);pairs=dict(zip(initial[1][1],initial[1][2]))
        self.assertEqual(pairs[pressure['target_id']],'growth-pressure-1');self.assertEqual(pairs[cleaning['target_id']],'growth-cleaning-1')
        paid=next(args for query,args in queries if 'select f.offer_id' in query)
        self.assertEqual(set(paid[0]),set(pairs));ns['send_mail_once'].assert_not_awaited()

    async def test_actual_paid_inviter_rechecks_revoked_token_before_any_send(self):
        source=ast.parse(Path(__file__).with_name('api').joinpath('app.py').read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='process_growth_offer_invitations');node.decorator_list=[]
        row=authorized();revoked=copy.deepcopy(row);revoked['source_data'].pop('scoped_dispatch')
        oid=uuid.uuid4();sid=uuid.uuid4()
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            def transaction(self):return self
            async def fetch(self,sql,*args):return [row] if "source_data ? 'scoped_dispatch'" in sql else [dict(offer_id=oid)]
            async def fetchrow(self,sql,*args):
                if 'from growth_purchase_offers' in sql:return dict(offer_id=oid,sample_id=sid,email=row['public_email'])
                return revoked
            async def fetchval(self,*args):return True
            async def execute(self,*args):raise AssertionError('Revoked target must not mutate/send')
        class Pool:
            def acquire(self):return Conn()
        ns=dict(Header=lambda **kw:None,require_admin=lambda key:None,ADMIN_KEY=SECRET,OWNER_LAUNCH_HOLD=False,
            GROWTH_OUTREACH_ENABLED=True,GROWTH_OUTREACH_TARGET_IDS=['legacy:'+str(i) for i in range(9)],
            GROWTH_OUTREACH_WAVE='growth-cleaning-1',GROWTH_WAVES=WAVES,
            app=SimpleNamespace(state=SimpleNamespace(pool=Pool())),growth_lock_exposure_allocator=AsyncMock(),send_mail_once=AsyncMock())
        exec(compile(ast.Module(body=[node],type_ignores=[]),'actual_paid_scope_revocation','exec'),ns)
        result=await ns['process_growth_offer_invitations']('secret')
        self.assertEqual(result['sent'],0);ns['send_mail_once'].assert_not_awaited()

if __name__=='__main__':unittest.main()
