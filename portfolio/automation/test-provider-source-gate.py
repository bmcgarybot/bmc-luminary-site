"""Actual native V1/V2 signatures and actual sender integration; no network/mail."""
import ast,copy,hashlib,json,re,runpy,sys,unittest,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import AsyncMock
ROOT=Path(__file__).parent;sys.path.insert(0,str(ROOT/'api'))
import official_research as r
import provider_source_gate as g
SECRET='synthetic-source-gate'
def v1(name='Synthetic Garden LLC',market='Phoenix',service='landscaping',email='office@example.test'):
 row=dict(candidate_id=uuid.uuid4(),business_name=name,side='vendor',market=market,category_key=service,status='discovered',closed_at=None)
 entity={'@type':'LocalBusiness','name':name,'url':'https://provider-fixture.example/','description':r.VENDOR_TERMS[service][0],'email':email,'telephone':'6025550100',
   'address':{'streetAddress':'123 Business Lane','addressLocality':market,'addressRegion':'AZ','postalCode':'85004' if market=='Phoenix' else '86301'}}
 doc='<script type="application/ld+json">'+json.dumps(entity)+'</script>'
 return dict(row,**r.parse_record(row,entity['url'],doc,hashlib.sha256(doc.encode()).hexdigest(),SECRET))
def recipient(row):return dict(business_name=row['business_name'],public_email=row['public_email'],market=row['market'],service_key=row['category_key'])
def v2():
 row=dict(candidate_id=uuid.uuid4(),business_name='Synthetic Exterior LLC',side='vendor',market='Phoenix',category_key='pressure_washing',status='discovered',closed_at=None)
 doc='<title>Synthetic Exterior LLC</title><main><p>Synthetic Exterior LLC provides commercial pressure washing.</p><p>We serve Phoenix, Arizona.</p></main><p>602-555-0100</p><a href="mailto:office@example.test">Email</a>'
 return dict(row,**r.parse_record(row,'https://provider-fixture.example/',doc,hashlib.sha256(doc.encode()).hexdigest(),SECRET))
class Conn:
 def __init__(self,candidates):self.candidates=candidates;self.queries=[];self.writes=[]
 async def __aenter__(self):return self
 async def __aexit__(self,*a):pass
 async def fetch(self,sql,*args):self.queries.append((sql,args));return self.candidates
class Tests(unittest.IsolatedAsyncioTestCase):
 async def test_real_v1_v2_signed_current_sources_match_and_query_is_bounded(self):
  for row in (v1(),v2()):
   self.assertTrue(r.auto_evidence_valid(row,SECRET));conn=Conn([row]);self.assertTrue(await g.provider_source_gate(conn,recipient(row),SECRET))
   self.assertIn('limit 5',conn.queries[0][0]);self.assertEqual(conn.queries[0][1][:3],(row['market'],row['category_key'],row['public_email']))
   self.assertIn("status='discovered' and closed_at is null",conn.queries[0][0]);self.assertIn('vps_vendor_published_area_v2',conn.queries[0][1][3])
 async def test_valid_native_proofs_for_other_recipient_identity_service_market_email_are_rejected(self):
  expected=recipient(v1())
  for other in (v1(name='Synthetic Garden Equipment Supply'),v1(market='Prescott'),v1(service='junk_hauling'),v1(email='off.ice@example.test')):
   self.assertTrue(r.auto_evidence_valid(other,SECRET));self.assertFalse(await g.provider_source_gate(Conn([other]),expected,SECRET))
 async def test_stale_even_canonically_valid_v1_forged_mac_closed_or_import_only_block(self):
  row=v1();expected=recipient(row)
  stale=copy.deepcopy(row);signed=stale['evidence']['vps_verification'];signed['checked_at']=(datetime.now(timezone.utc)-timedelta(days=8)).isoformat();facts=dict(signed);facts.pop('signature');signed['signature']=r.seal(facts,SECRET)
  self.assertTrue(r.auto_evidence_valid(stale,SECRET));self.assertFalse(await g.provider_source_gate(Conn([stale]),expected,SECRET))
  for changed in ('mac','import','closed','qualification_hold'):
   bad=copy.deepcopy(row)
   if changed=='mac':bad['evidence']['vps_verification']['signature']='0'*64
   elif changed=='import':bad['evidence']={'researched_by':'assistant_manual_census'}
   elif changed=='closed':bad['closed_at']=datetime.now(timezone.utc)
   else:bad['evidence']['qualification_hold']='needs_review'
   self.assertFalse(await g.provider_source_gate(Conn([bad]),expected,SECRET))
 async def test_all41_configured_provider_types_use_same_real_signed_gate(self):
  registry=json.loads((ROOT.parent/'data/services.json').read_text())['services'];providers=[s for s in registry if s['fulfillment_mode']=='provider_match']
  self.assertEqual(len(providers),41)
  for service in providers:
   row=v1(service=service['service_key']);self.assertTrue(r.auto_evidence_valid(row,SECRET))
   self.assertTrue(await g.provider_source_gate(Conn([row]),recipient(row),SECRET),service['service_key'])
 async def test_exact_legal_suffix_ampersand_normalization_and_jsonb_evidence(self):
  row=v1(name='Synthetic Garden & Tree LLC');expected=recipient(row);expected['business_name']='Synthetic Garden and Tree, Inc.'
  row['evidence']=json.dumps(row['evidence']);self.assertTrue(await g.provider_source_gate(Conn([row]),expected,SECRET))
 async def test_actual_provider_sender_gates_before_smtp_and_preserves_send_once_for_current_proof(self):
  for valid in (False,True):
   row=v1();outreach=dict(recipient(row),outreach_id='synthetic-outreach',entity_id='synthetic-vendor',status='queued',sequence_step=0,wave='synthetic-wave')
   conn=Conn([row] if valid else []);source_fetch=conn.fetch
   async def fetch(sql,*args):return await source_fetch(sql,*args) if sql==g.SOURCE_SQL else [outreach]
   async def fetchval(*args):return 0
   async def execute(sql,*args):conn.writes.append((sql,args))
   conn.fetch=fetch;conn.fetchval=fetchval;conn.execute=execute
   ns=dict(Header=lambda **kw:None,ADMIN_KEY=SECRET,OWNER_LAUNCH_HOLD=False,OUTREACH_ENABLED=True,BUSINESS_POSTAL_ADDRESS='Synthetic address',OUTREACH_DAILY_LIMIT=10,OUTREACH_WAVE='synthetic-wave',datetime=datetime,timedelta=timedelta,timezone=timezone,
      app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:conn))),provider_outreach_review=AsyncMock(),send_mail_once=AsyncMock(return_value=True),event=AsyncMock(),provider_outreach_message=lambda *a:('subject','body','html'))
   node=next(n for n in ast.parse((ROOT/'api/app.py').read_text()).body if isinstance(n,ast.AsyncFunctionDef) and n.name=='process_outreach');node.decorator_list=[]
   exec(compile(ast.Module(body=[node],type_ignores=[]),'actual_provider_sender','exec'),ns)
   result=await ns['process_outreach'](SECRET)
   if valid:
    self.assertEqual(result['sent'],1);ns['send_mail_once'].assert_awaited_once();self.assertEqual(ns['send_mail_once'].await_args.args[0],'provider-outreach:synthetic-outreach:1');ns['provider_outreach_review'].assert_not_awaited()
   else:
    self.assertEqual(result['sent'],0);ns['send_mail_once'].assert_not_awaited();ns['provider_outreach_review'].assert_awaited_once();self.assertEqual(conn.writes,[])
if __name__=='__main__':unittest.main()
