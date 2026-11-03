#!/usr/bin/env python3
"""Failure drills for bounded recovery, alert retries and private configuration."""
import ast,hashlib,json,pathlib,runpy,subprocess,tempfile,time,unittest
from datetime import datetime,timezone
from email.message import EmailMessage
from email.utils import formataddr,format_datetime,make_msgid
from unittest.mock import patch
ROOT=pathlib.Path(__file__).parent
policy=runpy.run_path(str(ROOT/'ops-policy.py'))
watch=runpy.run_path(str(ROOT/'ops-watchdog.py'),run_name='watchdog_test')
class PolicyTests(unittest.TestCase):
    def test_never_repair_database_or_business_decisions(self):
        checks=[dict(name=n,ok=False) for n in ('Postgres','Paid fulfillment overdue','Phoenix owner sample journey')]
        self.assertEqual(policy['repair_plan'](checks,{},100000,True),[])
        self.assertEqual(policy['repair_plan']([dict(name='Ops API',ok=False)],{},100000,False),[])
    def test_cooldown_attempt_limit_and_one_service_per_cycle(self):
        checks=[dict(name='Ops API',ok=False),dict(name='n8n',ok=False)]
        self.assertEqual(policy['repair_plan'](checks,{},100000,True),['ops_api'])
        recent={'repairs':[dict(service='ops_api',at=99999)]}
        self.assertEqual(policy['repair_plan'](checks,recent,100000,True),['n8n'])
        twice={'repairs':[dict(service='ops_api',at=97000),dict(service='ops_api',at=98000)]}
        self.assertEqual(policy['repair_plan'](checks[:1],twice,100000,True),[])
    def test_smtp_failure_is_retried_and_recovery_is_reported_once(self):
        checks=[dict(name='Ops API',ok=False,detail='HTTP 500')];state={};now=100000
        d=policy['alert_decision'](checks,state,now);self.assertTrue(d['send'])
        policy['record_alert'](state,d,now,False)
        self.assertFalse(policy['alert_decision'](checks,state,now+300)['send'])
        d=policy['alert_decision'](checks,state,now+901);self.assertTrue(d['send'])
        policy['record_alert'](state,d,now+901,True)
        self.assertFalse(policy['alert_decision'](checks,state,now+1802)['send'])
        recovered=policy['alert_decision']([],state,now+1802);self.assertTrue(recovered['send'])
        policy['record_alert'](state,recovered,now+1802,True)
        self.assertFalse(policy['alert_decision']([],state,now+2703)['send'])
    def test_changing_counts_does_not_spam(self):
        a=[dict(name='High-priority business exceptions',ok=False,detail='3')]
        b=[dict(name='High-priority business exceptions',ok=False,detail='4')]
        state={};d=policy['alert_decision'](a,state,100000);policy['record_alert'](state,d,100000,True)
        self.assertFalse(policy['alert_decision'](b,state,101000)['send'])
class ConfigurationTests(unittest.TestCase):
    def test_offline_api_recovery_requires_independent_exact_container_flags(self):
        env={key:'false' for key in watch['FLAGS']};env['BMC_OWNER_LAUNCH_HOLD']='true'
        output='\n'.join(key+'='+value for key,value in env.items())
        g=watch['container_flags_match'].__globals__;calls=[]
        def inspect(cmd,**kw):calls.append(cmd);return 0,output,''
        with patch.dict(g,run=inspect):self.assertTrue(watch['container_flags_match'](env))
        self.assertIn('OUTREACH_ENABLED=false',calls[0][3]);self.assertNotIn('SMTP_PASSWORD',calls[0][3])
        with patch.dict(g,run=lambda *a,**k:(0,output.replace('GROWTH_OUTREACH_ENABLED=false',''),'')):
            self.assertFalse(watch['container_flags_match'](env))
        env['GROWTH_OUTREACH_ENABLED']='true'
        with patch.dict(g,run=lambda *a,**k:(_ for _ in ()).throw(AssertionError('Must reject before inspection'))):
            self.assertFalse(watch['container_flags_match'](env))
    def test_encrypted_recipient_stays_on_host_and_campaign_settings_survive(self):
        with tempfile.TemporaryDirectory() as folder:
            root=pathlib.Path(folder);state=root/'state';state.mkdir()
            env=root/'.env';original='OUTREACH_ENABLED=false\nBMC_OWNER_LAUNCH_HOLD=true\n';env.write_text(original)
            g=watch['prepare_key'].__globals__
            with patch.dict(g,ROOT=root,STATE_DIR=state,STATE_FILE=state/'state.json'):
                pub=watch['prepare_key']();pubpath=root/'public.pem';pubpath.write_text(pub['public_key'])
                encrypted=subprocess.run(['openssl','pkeyutl','-encrypt','-pubin','-inkey',str(pubpath),'-pkeyopt','rsa_padding_mode:oaep','-pkeyopt','rsa_oaep_md:sha256'],input=json.dumps(dict(alert_email='owner@example.test',autofix=True)).encode(),capture_output=True,check=True)
                import base64
                result=watch['configure'](base64.b64encode(encrypted.stdout).decode())
                self.assertNotIn('owner@example.test',json.dumps(result));self.assertIn(original,env.read_text())
                self.assertIn('WATCHDOG_EMAIL=owner@example.test',env.read_text())
                self.assertEqual((state/'configuration-key.pem').stat().st_mode&0o777,0o600)
                self.assertTrue(json.loads((state/'state.json').read_text())['monitor_configured'])
class RuntimeTests(unittest.TestCase):
    def test_restart_claim_is_saved_first_and_cooldown_survives_next_run(self):
        with tempfile.TemporaryDirectory() as folder:
            state_dir=pathlib.Path(folder);state_file=state_dir/'state.json'
            state_file.write_text(json.dumps(dict(monitor_configured=True)))
            env=dict(OUTREACH_ENABLED='false',BUYER_OUTREACH_ENABLED='false',GROWTH_OUTREACH_ENABLED='false',BMC_OWNER_LAUNCH_HOLD='true',WATCHDOG_AUTOFIX='true')
            commands=[]
            def fake_run(cmd,**kwargs):
                commands.append(cmd)
                saved=json.loads(state_file.read_text())
                self.assertEqual(saved['repairs'][-1]['service'],'ops_api')
                return 0,'',''
            def collect(*args):return [dict(name='Ops API',ok=False,detail='HTTP 500')],None,{},True
            g=watch['main'].__globals__
            with patch.dict(g,STATE_DIR=state_dir,STATE_FILE=state_file,read_env=lambda:dict(env),collect=collect,
                            run=fake_run,http=lambda *a,**k:(200,{}),send_alert=lambda *a:True),patch('sys.argv',['watchdog.py']):
                watch['main']();watch['main']()
            self.assertEqual(len(commands),1)
            self.assertEqual(commands[0][-2:],['restart','ops_api'])
            self.assertNotIn('up',commands[0])
            self.assertEqual(env['GROWTH_OUTREACH_ENABLED'],'false')
    def test_configuration_drift_prevents_repairs(self):
        with tempfile.TemporaryDirectory() as folder:
            state_dir=pathlib.Path(folder)
            def forbidden(*args,**kwargs):raise AssertionError('No restart allowed')
            g=watch['main'].__globals__
            with patch.dict(g,STATE_DIR=state_dir,STATE_FILE=state_dir/'state.json',read_env=lambda:{'WATCHDOG_AUTOFIX':'true'},
                collect=lambda *a:([dict(name='Ops API',ok=False,detail='failed')],None,{},False),run=forbidden),patch('sys.argv',['watchdog.py']):
                watch['main']()
class MailTests(unittest.IsolatedAsyncioTestCase):
    def load(self,fail_audit=False,fail_smtp=False):
        tree=ast.parse((ROOT/'api/app.py').read_text());node=next(n for n in tree.body if isinstance(n,ast.AsyncFunctionDef) and n.name=='send_mail')
        calls=[]
        async def observe(*args):
            calls.append(('audit',args[2]))
            if fail_audit:raise RuntimeError('database unavailable')
        class SMTP:
            async def send(self,*args,**kwargs):
                calls.append(('smtp',None))
                if fail_smtp:raise RuntimeError('uncertain network outcome')
        ns=dict(hashlib=hashlib,record_mail_observation=observe,EmailMessage=EmailMessage,formataddr=formataddr,
            format_datetime=format_datetime,make_msgid=make_msgid,datetime=datetime,timezone=timezone,
            clean=str.strip,SMTP_DRY_RUN=False,SMTP_HOST='smtp.example.test',SMTP_PORT=587,SMTP_USER='',
            SMTP_PASSWORD='',SMTP_FROM='sender@example.test',SMTP_FROM_NAME='Fixture',SMTP_REPLY_TO='owner@example.test',
            SMTP_STARTTLS=True,aiosmtplib=SMTP(),email_unsubscribe_content=lambda to,b,h:(b,h,''))
        exec(compile(ast.Module(body=[node],type_ignores=[]),'production_mail','exec'),ns)
        return ns['send_mail'],calls
    async def test_audit_failure_prevents_smtp(self):
        send,calls=self.load(fail_audit=True);self.assertFalse(await send('recipient@example.test','Subject','Body'))
        self.assertFalse(any(x[0]=='smtp' for x in calls))
    async def test_transport_acceptance_is_recorded_after_durable_attempt(self):
        send,calls=self.load();self.assertTrue(await send('recipient@example.test','Subject','Body'))
        self.assertEqual(calls,[('audit','attempting'),('smtp',None),('audit','smtp_accepted')])
    async def test_uncertain_smtp_is_never_marked_accepted(self):
        send,calls=self.load(fail_smtp=True);self.assertFalse(await send('recipient@example.test','Subject','Body'))
        self.assertEqual(calls[-1],('audit','uncertain'))
if __name__=='__main__':unittest.main()
