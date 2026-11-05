"""Installer rendering/commands only; never contacts systemd, sudo, API or Docker."""
import importlib.util,json,sys,tempfile,unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch
BASE=Path(__file__).parent;sys.path.insert(0,str(BASE))
import api_research_queue_service as s

class Tests(unittest.TestCase):
    def setup(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup)
        self.root=Path(self.tmp.name);self.automation=self.root/'automation path';self.automation.mkdir()
        self.units=self.root/'units';self.units.mkdir();self.home=self.root/'home';self.home.mkdir()
        private=self.home/'.local/state/bmc-api-research';private.mkdir(parents=True,mode=0o700)
        for path in (self.automation/'api_research_queue_worker.py',self.automation/'api_research_pilot.py',self.automation/'.env',private/'openai.env',private/'pilot.sqlite3'):
            path.write_text('synthetic-placeholder');path.chmod(0o600)
        self.private=private;self.calls=[]
    def fakecall(self,args,*,text=None,timeout=30):
        self.calls.append((args,text))
        if args[:3]==['sudo','-n','tee']:
            Path(args[3]).write_text(text);return SimpleNamespace(returncode=0,stdout='')
        return SimpleNamespace(returncode=0,stdout='')
    def test_units_fixed_scope_handoff_flags_and_no_credential_copy(self):
        self.setup()
        with patch.object(s,'AUTOMATION',self.automation):service,timer=s.unit_texts('vpsuser','vpsuser',self.home)
        self.assertIn('User=vpsuser',service);self.assertIn(' --once',service)
        self.assertIn('BMC_API_RESEARCH_QUEUE_ENABLED=true',service);self.assertIn('BMC_API_RESEARCH_MAC_DRIVER_STOPPED=true',service)
        self.assertIn('OnUnitInactiveSec=5min',timer);self.assertIn('TimeoutStartSec=900',service)
        self.assertNotIn('OPENAI_API_KEY',service);self.assertNotIn('EnvironmentFile=',service);self.assertNotIn('synthetic-placeholder',service)
        self.assertIn('ConditionPathExists=',service);self.assertIn('UMask=0077',service)
        self.assertIn('"'+str(self.automation/'api_research_queue_worker.py')+'"',service)
    def test_install_only_fixed_destinations_and_timer_no_direct_service_start(self):
        self.setup();before=(self.private/'pilot.sqlite3').read_bytes()
        expected={'status':'research_queue_service_status','timer_enabled':True,'timer_active':True,'fixed_units_match':True}
        with patch.object(s,'AUTOMATION',self.automation),patch.object(s,'UNIT_DIR',self.units),patch.object(s,'identity',return_value=('vpsuser','vpsuser',self.home)),patch.object(s,'call',side_effect=self.fakecall),patch.object(s,'status',return_value=expected):
            result=s.install()
        self.assertEqual(result['status'],'research_queue_timer_installed')
        commands=[args for args,text in self.calls]
        self.assertEqual(commands,[['sudo','-n','tee',str(self.units/s.SERVICE)],['sudo','-n','tee',str(self.units/s.TIMER)],
            ['sudo','-n','systemctl','daemon-reload'],['sudo','-n','systemctl','enable','--now',s.TIMER]])
        self.assertEqual((self.private/'pilot.sqlite3').read_bytes(),before)
    def test_missing_configuration_or_unsafe_permissions_do_not_activate(self):
        for mode in ('missing','permissions','symlink'):
            self.setup();path=self.private/'openai.env'
            if mode=='missing':path.unlink()
            elif mode=='permissions':path.chmod(0o644)
            else:path.unlink();path.symlink_to(self.automation/'.env')
            with patch.object(s,'AUTOMATION',self.automation),patch.object(s,'identity',return_value=('vpsuser','vpsuser',self.home)),patch.object(s,'call',side_effect=self.fakecall):
                with self.assertRaises(s.Held):s.install()
            self.assertEqual(self.calls,[])
    def test_status_never_invokes_once_install_or_privileged_commands(self):
        self.setup()
        with patch.object(s,'AUTOMATION',self.automation),patch.object(s,'UNIT_DIR',self.units),patch.object(s,'identity',return_value=('vpsuser','vpsuser',self.home)),patch.object(s,'call',side_effect=self.fakecall),patch.object(s.pwd,'getpwnam',return_value=SimpleNamespace(pw_uid=-1)):
            result=s.status()
        self.assertFalse(result['fixed_units_match'])
        self.assertTrue(all(args[0]=='systemctl' for args,text in self.calls));self.assertNotIn('--once',str(self.calls))
    def test_unit_values_reject_control_chars_and_escape_specifiers(self):
        self.assertEqual(s.quoted('/path/100%'), '"/path/100%%"')
        with self.assertRaises(s.Held):s.quoted('/path\nExecStart=unsafe')
        with self.assertRaises(s.Held):s.unit_texts('root;bad','users',Path('/home/user'))

if __name__=='__main__':unittest.main()
