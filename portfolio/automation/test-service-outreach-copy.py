#!/usr/bin/env python3
"""Production copy and sender paths with synthetic rows and captured mail only."""
import ast,hashlib,sys,uuid
from datetime import datetime,timedelta,timezone
import html
import json
import urllib.parse
from pathlib import Path
import runpy
from types import SimpleNamespace
import unittest

HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE/'api'))
import official_research as research
coverage=runpy.run_path(str(HERE/'service-template-coverage.py'))
SOURCE=ast.parse((HERE/'api/app.py').read_text())

class Context:
    def __init__(self,value):self.value=value
    async def __aenter__(self):return self.value
    async def __aexit__(self,*args):return False
class Connection:
    async def fetchval(self,*args):return 0
    async def fetch(self,*args):
        if 'join buyers' in args[0]:return []
        if 'from market_inventory_candidates' in args[0]:
            row=dict(candidate_id=uuid.uuid4(),business_name='Fixture Co',side='vendor',market='Phoenix',category_key='landscaping',status='discovered',closed_at=None)
            entity={'@type':'LocalBusiness','name':'Fixture Co','url':'https://provider-fixture.example/','description':research.VENDOR_TERMS['landscaping'][0],
                'email':'fixture@example.invalid','telephone':'6025550100','address':{'streetAddress':'123 Fixture Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
            document='<script type="application/ld+json">'+json.dumps(entity)+'</script>'
            row.update(research.parse_record(row,entity['url'],document,hashlib.sha256(document.encode()).hexdigest(),'fixture'))
            return [row]
        return [dict(entity_id='fixture',outreach_id='fixture',sequence_step=0,status='queued',
        business_name='Fixture Co',public_email='fixture@example.invalid',association_signal='',market='Phoenix',
        public_phone='',website='',source_url='',
        service_key='landscaping',service_name='Landscaping & Yard Cleanup',wave='pilot1')]
    async def execute(self,*args):pass

class Tests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.ns,_=coverage['production_renderers']()
    def test_all_41_services_have_correct_examples_in_both_channels(self):
        registry=json.loads((HERE.parent/'data/services.json').read_text())['services']
        providers=[s for s in registry if s['fulfillment_mode']=='provider_match']
        self.assertEqual(set(self.ns['PROVIDER_JOB_EXAMPLES']),{s['service_key'] for s in providers})
        for s in providers:
            row=dict(entity_id='fixture',business_name='Fixture Co',public_email='fixture@example.invalid',market='Phoenix',
                     service_key=s['service_key'],service_name=s['display_name'])
            for wave in ('pilot1','recruitment'):
                row['wave']=wave
                for step in (1,2,3):
                    subject,plain,rendered=self.ns['provider_outreach_message'](row,step)
                    for content in (plain,html.unescape(rendered)):
                        self.assertIn(self.ns['PROVIDER_JOB_EXAMPLES'][s['service_key']],content)
                        self.assertIn('Fixture Co',content);self.assertIn('Phoenix',content)
                        self.assertIn('Reply',content);self.assertIn('NONLIVE',content)
                        self.assertNotIn('$499',content);self.assertNotIn('—',content)
                    _,lines,activation=self.ns['provider_outreach_parts'](row,step,wave=='pilot1')
                    self.assertIn(activation,plain);self.assertIn(html.escape(activation,quote=True),rendered)
                    for line in lines:
                        self.assertIn(line,plain);self.assertIn(html.escape(line),rendered)
                    self.assertNotIn(subject,html.unescape(rendered))
                    if step==1:
                        self.assertIn("Hey, this is Brett with BMC Service Network.",plain)
                        self.assertIn("We cannot promise jobs",plain)
                    legacy='first_wave_vendor_copy' if wave=='pilot1' else 'vendor_recruitment_copy'
                    self.assertEqual(self.ns[legacy](row,step),(subject,plain))
    def test_first_wave_preview_uses_campaign_target_before_vendor_defaults(self):
        node=next(n for n in SOURCE.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='admin_first_wave')
        query=next(n.value for n in ast.walk(node) if isinstance(n,ast.Constant) and isinstance(n.value,str) and 'from outreach o join vendors' in n.value)
        self.assertIn('coalesce(o.target_market,vm.market) as market',query)
        self.assertIn('coalesce(o.target_service_key,vs.service_key) as service_key',query)
        self.assertIn('svc.service_key=coalesce(o.target_service_key,vs.service_key)',query)
    def test_growth_is_short_human_and_honest_in_both_channels(self):
        fns=[n for n in SOURCE.body if isinstance(n,ast.FunctionDef) and
          n.name in ('growth_verified_opener','growth_outreach_message')]
        self.ns['growth_invitation_url']=lambda row,owner_preview=False:'https://preview.example.invalid/growth-packs/'+row['service_key']+'/?claim=NONLIVE'
        self.ns['json_dict']=lambda x:x if isinstance(x,dict) else {}
        self.ns.update(datetime=datetime,timedelta=timedelta,timezone=timezone,
          urllib=SimpleNamespace(parse=urllib.parse),GROWTH_SERVICE_LABELS={
            'commercial_cleaning':'commercial cleaning / janitorial','pressure_washing':'commercial pressure washing / exterior cleaning'})
        exec(compile(ast.Module(body=fns,type_ignores=[]),'production_growth_copy','exec'),self.ns)
        for service,example in [('pressure_washing','commercial exterior'),('commercial_cleaning','janitorial cleaning')]:
            for step in (1,2):
                row=dict(target_id='vendor:fixture',service_key=service,business_name='Very Long Business Name LLC',market='Phoenix',
                  source_url='https://fixture.example.invalid',source_data={'reviewed_copy':{
                    'fact':f'Your company offers {example} work around Phoenix.',
                    'source_url':'https://fixture.example.invalid','service_key':service,'market':'Phoenix','approved':True}})
                _,subject,plain,rendered,url=self.ns['growth_outreach_message'](row,step)
                self.assertTrue(plain.startswith('Hello Very Long Business Name LLC team,\n\n'))
                self.assertNotIn(subject,html.unescape(rendered))
                for content in (plain,html.unescape(rendered)):
                    for text in (example,'Phoenix','Review the five researched businesses','haven\'t requested quotes' if step==1 else 'not requested a quote'):
                        self.assertIn(text,content)
                    for text in ('strong commercial prospects','practical outreach angle','—'):
                        self.assertNotIn(text,content)
                if step==1:
                    self.assertIn('Hey, this is Brett with BMC Service Network.',plain)
                    self.assertNotIn('here in Prescott',plain)
                    self.assertNotIn('here in Prescott',rendered)
                    self.assertIn('$499',plain);self.assertIn('100 total, including those five',plain)
                    self.assertIn('no subscription or obligation',plain.lower())
                else:
                    self.assertNotIn('$499',plain)
                self.assertEqual(plain.count(url),1);self.assertIn(html.escape(url,quote=True),rendered)
                self.assertLess(len(plain.split()),170)
        row=dict(target_id='vendor:v_prescott_americancrown',service_key='commercial_cleaning',
          business_name='American Crown Commercial Cleaning',market='Prescott',
          source_url='https://americancrowncc.com/')
        _,subject,plain,rendered,_=self.ns['growth_outreach_message'](row,1)
        self.assertEqual(subject,'Five commercial prospects for American Crown in Prescott')
        self.assertIn('offices and common areas across Yavapai County',plain)
        self.assertIn('Hello American Crown team,',rendered)
        with self.assertRaisesRegex(ValueError,'source-backed'):
            self.ns['growth_outreach_message'](dict(target_id='vendor:unreviewed',service_key='commercial_cleaning',
              business_name='Unreviewed Co',market='Prescott',source_url='https://unreviewed.example'),1)
        direct=dict(target_id='inventory:fixture',service_key='commercial_cleaning',
          business_name='Fixture Janitorial',market='Prescott',source_kind='deep_inventory',
          source_url='https://fixture.example',public_email='hello@fixture.example',
          source_data={'source_tier':'direct','verification_status':'direct_evidence',
            'official_site':True,'research_note':'Direct site lists Prescott offices and restaurants for cleaning.',
            'last_verified_at':datetime.now(timezone.utc).isoformat()})
        self.assertIn('offices around Prescott',self.ns['growth_outreach_message'](direct,1)[2])
        direct['source_data']['last_verified_at']=(datetime.now(timezone.utc)-timedelta(days=31)).isoformat()
        with self.assertRaisesRegex(ValueError,'source-backed'):
            self.ns['growth_outreach_message'](direct,1)
        with self.assertRaises(ValueError):self.ns['growth_outreach_message'](dict(service_key='landscaping'),1)
    async def test_live_sender_and_admin_preview_share_actual_html_without_smtp(self):
        nodes=[n for n in SOURCE.body if isinstance(n,ast.AsyncFunctionDef) and n.name in ('process_outreach','admin_outreach_wave_preview','provider_outreach_review','admin_first_wave')]
        for n in nodes:n.decorator_list=[]
        sent=[]
        async def mail(*args):sent.append(args);return True
        async def event(*args):pass
        self.ns.update(Header=lambda **kw:None,require_admin=lambda key:None,ADMIN_KEY='fixture',HTTPException=RuntimeError,
          OWNER_LAUNCH_HOLD=False,OUTREACH_ENABLED=True,BUYER_OUTREACH_ENABLED=False,OUTREACH_DAILY_LIMIT=1,
          OUTREACH_WAVE='pilot1',send_mail_once=mail,event=event,datetime=datetime,timedelta=timedelta,timezone=timezone,
          app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(Connection())))))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'production_provider_sender','exec'),self.ns)
        result=await self.ns['process_outreach']('fixture');self.assertEqual(result['sent'],1)
        self.assertEqual(len(sent[0]),5);self.assertEqual(sent[0][0],'provider-outreach:fixture:1');self.assertIn('<!doctype html>',sent[0][4])
        preview=await self.ns['admin_outreach_wave_preview']('vendor','pilot1',25,'fixture')
        self.assertEqual(preview['records'][0]['body'],sent[0][3])
        self.assertEqual(preview['records'][0]['html_body'],sent[0][4])
        first=await self.ns['admin_first_wave']('fixture')
        self.assertEqual(first['count'],1)
        self.assertEqual(first['records'][0]['template_status'],'supported_service')
        self.assertEqual(first['records'][0]['html_body'],sent[0][4])
        self.assertIn(first['records'][0]['activation_url'],first['records'][0]['body'])
        reviews=[]
        async def review(conn,row,step,reason):reviews.append(reason)
        self.ns['provider_outreach_review']=review
        async def uncertain(*args):return False
        self.ns['send_mail_once']=uncertain
        result=await self.ns['process_outreach']('fixture')
        self.assertEqual(result['sent'],0);self.assertIn('delivery uncertain or payload changed',reviews)
        self.ns['PROVIDER_JOB_EXAMPLES']={}
        result=await self.ns['process_outreach']('fixture')
        self.assertEqual(result['sent'],0);self.assertIn('unsupported service template',reviews)
        preview=await self.ns['admin_outreach_wave_preview']('vendor','pilot1',25,'fixture')
        self.assertEqual(preview['records'][0]['template_status'],'unsupported_service')
        self.assertIsNone(preview['records'][0]['html_body'])
        first=await self.ns['admin_first_wave']('fixture')
        self.assertEqual(first['count'],1)
        self.assertEqual(first['records'][0]['template_status'],'unsupported_service')
        self.assertTrue(first['records'][0]['review_required'])
        self.assertIsNone(first['records'][0]['body']);self.assertIsNone(first['records'][0]['activation_url'])

if __name__=='__main__':unittest.main()
