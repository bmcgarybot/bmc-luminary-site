"""Synthetic-only RSA transport tests; no live credentials, API or host state."""
import base64,contextlib,hashlib,io,json,os,stat,subprocess,tempfile,unittest
from pathlib import Path
import api_research_config as c
SYNTHETIC='sk-synthetic_test_key_not_real_0123456789'
class Tests(unittest.TestCase):
 @classmethod
 def setUpClass(cls):
  cls.temp=tempfile.TemporaryDirectory();cls.root=Path(cls.temp.name)/'prepared';cls.prepared=c.prepare(cls.root);cls.private=(cls.root/'config-private.pem').read_bytes()
 @classmethod
 def tearDownClass(cls):cls.temp.cleanup()
 def setup(self):
  self.tempdir=tempfile.TemporaryDirectory();self.addCleanup(self.tempdir.cleanup);self.root=Path(self.tempdir.name)/'state';self.root.mkdir(mode=0o700)
  (self.root/'config-private.pem').write_bytes(self.private);os.chmod(self.root/'config-private.pem',0o600)
 def encrypt(self,value,raw=False):
  payload=value if raw else json.dumps(value).encode()
  # Private temporary file contains only the public key; plaintext stays in pipes.
  pub=self.root/'public.pem';pub.write_text(self.prepared['public_key_pem'])
  encrypted=subprocess.run(['openssl','pkeyutl','-encrypt','-pubin','-inkey',str(pub),'-pkeyopt','rsa_padding_mode:oaep','-pkeyopt','rsa_oaep_md:sha256','-pkeyopt','rsa_mgf1_md:sha256'],input=payload,stdout=subprocess.PIPE,stderr=subprocess.DEVNULL,check=True).stdout
  return base64.b64encode(encrypted).decode()
 def test_real4096_roundtrip_private_modes_and_no_leaks(self):
  self.setup();stdout=io.StringIO();stderr=io.StringIO()
  with contextlib.redirect_stdout(stdout),contextlib.redirect_stderr(stderr):
   result=c.configure(self.encrypt({'OPENAI_API_KEY':SYNTHETIC}),self.root)
  self.assertEqual(result,{'key_present':True,'pilot_budget_usd':10.0,'billing_attested':True});self.assertNotIn(SYNTHETIC,json.dumps(result)+stdout.getvalue()+stderr.getvalue())
  for file in ('config-private.pem','openai.env','config.lock'):self.assertEqual(stat.S_IMODE((self.root/file).stat().st_mode),0o600)
  self.assertEqual(stat.S_IMODE(self.root.stat().st_mode),0o700)
  self.assertIn('OPENAI_PILOT_BUDGET_USD=10', (self.root/'openai.env').read_text())
 def test_reprepare_preserves_private_key_and_reconfigure_never_resets_budget_or_ledger(self):
  self.setup();before=hashlib.sha256((self.root/'config-private.pem').read_bytes()).hexdigest();self.assertEqual(c.prepare(self.root)['public_key_pem'],self.prepared['public_key_pem']);self.assertEqual(hashlib.sha256((self.root/'config-private.pem').read_bytes()).hexdigest(),before)
  c.configure(self.encrypt({'OPENAI_API_KEY':SYNTHETIC,'pilot_budget_usd':5}),self.root)
  ledger=self.root/'cost-ledger.json';ledger.write_text('synthetic usage=3')
  c.configure(self.encrypt({'OPENAI_API_KEY':SYNTHETIC+'new'}),self.root);self.assertEqual(c.status(self.root)['pilot_budget_usd'],5)
  with self.assertRaises(c.ConfigError):c.configure(self.encrypt({'OPENAI_API_KEY':SYNTHETIC,'pilot_budget_usd':10}),self.root)
  self.assertEqual(ledger.read_text(),'synthetic usage=3')
 def test_strict_payloads_budget_and_secret_safe_errors_leave_config_absent(self):
  self.setup()
  bad=[{'OPENAI_API_KEY':SYNTHETIC,'send':True},{'OPENAI_API_KEY':SYNTHETIC+'\nEVIL=yes'},{'OPENAI_API_KEY':42},{'OPENAI_API_KEY':'not-a-key'},[],{'OPENAI_API_KEY':SYNTHETIC,'pilot_budget_usd':True},{'OPENAI_API_KEY':SYNTHETIC,'pilot_budget_usd':11},{'OPENAI_API_KEY':SYNTHETIC,'pilot_budget_usd':0},{'OPENAI_API_KEY':SYNTHETIC,'pilot_budget_usd':float('nan')}]
  for value in bad:
   with self.subTest(kind=type(value).__name__),self.assertRaises(c.ConfigError) as caught:c.configure(self.encrypt(value),self.root)
   self.assertNotIn(SYNTHETIC,str(caught.exception));self.assertFalse((self.root/'openai.env').exists())
  with self.assertRaises(c.ConfigError):c.configure(self.encrypt(b'{"OPENAI_API_KEY":"sk-synthetic_test_key_not_real_0123456789","OPENAI_API_KEY":"sk-synthetic_test_key_not_real_0123456789"}',raw=True),self.root)
 def test_malformed_ciphertext_and_wrong_key_do_not_leak(self):
  self.setup()
  for value in ('not ciphertext','A'*900,base64.b64encode(b'0'*512).decode()):
   with self.assertRaises(c.ConfigError) as caught:c.configure(value,self.root)
   self.assertNotIn(SYNTHETIC,str(caught.exception));self.assertFalse((self.root/'openai.env').exists())
 def test_symlink_and_unsafe_mode_targets_fail_closed(self):
  self.setup();outside=Path(self.tempdir.name)/'outside';outside.write_text('untouched')
  env=self.root/'openai.env';env.symlink_to(outside)
  with self.assertRaises(c.ConfigError):c.configure(self.encrypt({'OPENAI_API_KEY':SYNTHETIC}),self.root)
  self.assertEqual(outside.read_text(),'untouched');env.unlink()
  private=self.root/'config-private.pem';private.unlink();private.symlink_to(outside)
  with self.assertRaises(c.ConfigError):c.prepare(self.root)
  link=Path(self.tempdir.name)/'state-link';link.symlink_to(self.root,target_is_directory=True)
  with self.assertRaises(c.ConfigError):c.prepare(link)
 def test_status_without_configuration_is_safe_and_does_not_create_state(self):
  self.setup();missing=self.root/'absent';self.assertFalse(c.status(missing)['key_present']);self.assertFalse(missing.exists())
  self.assertFalse(c.status(self.root)['key_present']);self.assertNotIn('public_key_pem',c.status(self.root))
 def test_cli_contract_emits_only_public_or_safe_metadata(self):
  self.setup();output=io.StringIO()
  with contextlib.redirect_stdout(output):self.assertEqual(c.main(['--prepare'],self.root),0)
  self.assertIn('public_key_pem',json.loads(output.getvalue()));self.assertNotIn('PRIVATE KEY',output.getvalue())
  output=io.StringIO()
  with contextlib.redirect_stdout(output):self.assertEqual(c.main(['--configure-encrypted',self.encrypt({'OPENAI_API_KEY':SYNTHETIC})],self.root),0)
  self.assertTrue(json.loads(output.getvalue())['key_present']);self.assertNotIn(SYNTHETIC,output.getvalue())
  output=io.StringIO()
  with contextlib.redirect_stdout(output):self.assertEqual(c.main(['--configure-encrypted','malformed'],self.root),1)
  self.assertEqual(json.loads(output.getvalue()),{'ok':False,'error':'private_configuration_unavailable'})
 def test_invalid_cli_never_echoes_argument_values(self):
  self.setup();output=io.StringIO();error=io.StringIO()
  with contextlib.redirect_stdout(output),contextlib.redirect_stderr(error),self.assertRaises(SystemExit):c.main(['--unknown',SYNTHETIC],self.root)
  self.assertNotIn(SYNTHETIC,output.getvalue()+error.getvalue())
if __name__=='__main__':unittest.main()
