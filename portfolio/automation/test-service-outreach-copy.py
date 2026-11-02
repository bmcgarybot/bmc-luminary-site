#!/usr/bin/env python3
"""Production copy and sender paths with synthetic rows and captured mail only."""
import ast
from datetime import datetime,timedelta,timezone
import html
import json
from pathlib import Path
import runpy
from types import SimpleNamespace
import unittest

HERE=Path(__file__).resolve().parent
coverage=runpy.run_path(str(HERE/'service-template-coverage.py'))
SOURCE=ast.parse((HERE/'api/app.py').read_text())

class Context:
    def __init__(self,value):self.value=value
    async def __aenter__(self):return self.value
    async def __aexit__(self,*args):return False
class Connection:
    async def fetchval(self,*args):return 0
    async def fetch(self,*args):return [dict(entity_id='fixture',outreach_id='fixture',sequence_step=0,status='queued',
        business_name='Fixture Co',public_email='fixture@example.invalid',association_signal='',market='Phoenix',
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
                    legacy='first_wave_vendor_copy' if wave=='pilot1' else 'vendor_recruitment_copy'
                    self.assertEqual(self.ns[legacy](row,step),(subject,plain))
    def test_growth_is_short_human_and_honest_in_both_channels(self):
        fn=next(n for n in SOURCE.body if isinstance(n,ast.FunctionDef) and n.name=='growth_outreach_message')
        self.ns['growth_invitation_url']=lambda row,owner_preview=False:'https://preview.example.invalid/growth-packs/'+row['service_key']+'/?claim=NONLIVE'
        exec(compile(ast.Module(body=[fn],type_ignores=[]),'production_growth_copy','exec'),self.ns)
        for service,example in [('pressure_washing','restaurant patios'),('commercial_cleaning','shared apartment areas')]:
            for step in (1,2):
                row=dict(service_key=service,business_name='Very Long Business Name LLC',market='Phoenix')
                _,subject,plain,rendered,url=self.ns['growth_outreach_message'](row,step)
                self.assertTrue(plain.startswith('Hi,\n\n'));self.assertNotIn(row['business_name'],plain)
                for content in (plain,html.unescape(rendered)):
                    for text in (example,'Phoenix','$499','100 businesses total, including those five','no obligation','not people who have asked for a quote','See the five businesses'):
                        self.assertIn(text,content)
                    for text in ('strong commercial prospects','public contact route','practical outreach angle','—'):
                        self.assertNotIn(text,content)
                self.assertEqual(plain.count(url),1);self.assertIn(html.escape(url,quote=True),rendered)
                self.assertLess(len(plain.split()),170)
        with self.assertRaises(ValueError):self.ns['growth_outreach_message'](dict(service_key='landscaping'),1)
    async def test_live_sender_and_admin_preview_share_actual_html_without_smtp(self):
        nodes=[n for n in SOURCE.body if isinstance(n,ast.AsyncFunctionDef) and n.name in ('process_outreach','admin_outreach_wave_preview','provider_outreach_review')]
        for n in nodes:n.decorator_list=[]
        sent=[]
        async def mail(*args):sent.append(args);return True
        async def event(*args):pass
        self.ns.update(Header=lambda **kw:None,ADMIN_KEY='fixture',HTTPException=RuntimeError,
          OWNER_LAUNCH_HOLD=False,OUTREACH_ENABLED=True,BUYER_OUTREACH_ENABLED=False,OUTREACH_DAILY_LIMIT=1,
          OUTREACH_WAVE='pilot1',send_mail_once=mail,event=event,datetime=datetime,timedelta=timedelta,timezone=timezone,
          app=SimpleNamespace(state=SimpleNamespace(pool=SimpleNamespace(acquire=lambda:Context(Connection())))))
        exec(compile(ast.Module(body=nodes,type_ignores=[]),'production_provider_sender','exec'),self.ns)
        result=await self.ns['process_outreach']('fixture');self.assertEqual(result['sent'],1)
        self.assertEqual(len(sent[0]),5);self.assertEqual(sent[0][0],'provider-outreach:fixture:1');self.assertIn('<!doctype html>',sent[0][4])
        preview=await self.ns['admin_outreach_wave_preview']('vendor','pilot1',25,'fixture')
        self.assertEqual(preview['records'][0]['body'],sent[0][3])
        self.assertEqual(preview['records'][0]['html_body'],sent[0][4])
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

if __name__=='__main__':unittest.main()
