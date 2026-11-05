"""Host-only encrypted pilot credential transport. No API, billing or mail calls."""
import base64,fcntl,json,os,re,stat,subprocess,tempfile
from contextlib import contextmanager
from decimal import Decimal,InvalidOperation
from pathlib import Path

DEFAULT_BUDGET=Decimal('10')
MAX_PAYLOAD=400
class ConfigError(ValueError):pass

def _root(state_dir=None):return Path(state_dir) if state_dir is not None else Path.home()/'.local/state/bmc-api-research'
def _file(path):
    try:info=path.lstat()
    except FileNotFoundError:return False
    if not stat.S_ISREG(info.st_mode) or info.st_nlink!=1 or info.st_uid!=os.geteuid() or stat.S_IMODE(info.st_mode)!=0o600:
        raise ConfigError('unsafe_private_file')
    return True

def _directory(path,create=False):
    if not path.exists() and not path.is_symlink():
        if not create:return False
        path.mkdir(parents=True,mode=0o700,exist_ok=True)
    info=path.lstat()
    if not stat.S_ISDIR(info.st_mode) or info.st_uid!=os.geteuid():raise ConfigError('unsafe_private_directory')
    if stat.S_IMODE(info.st_mode)!=0o700:
        if not create:raise ConfigError('unsafe_private_directory')
        os.chmod(path,0o700)
    return True

@contextmanager
def _lock(root):
    _directory(root,True);path=root/'config.lock'
    if path.exists() or path.is_symlink():_file(path)
    fd=os.open(path,os.O_CREAT|os.O_RDWR|os.O_NOFOLLOW,0o600)
    try:
        fcntl.flock(fd,fcntl.LOCK_EX);yield
    finally:
        fcntl.flock(fd,fcntl.LOCK_UN);os.close(fd)

def _openssl(args,data=None,timeout=15):
    try:result=subprocess.run(['openssl',*args],input=data,stdout=subprocess.PIPE,stderr=subprocess.DEVNULL,timeout=timeout,check=False)
    except (OSError,subprocess.SubprocessError):raise ConfigError('private_crypto_unavailable') from None
    if result.returncode:raise ConfigError('private_crypto_failed')
    return result.stdout

def _atomic(path,data):
    if path.exists() or path.is_symlink():_file(path)
    fd,name=tempfile.mkstemp(prefix='.config-',dir=path.parent)
    try:
        os.fchmod(fd,0o600)
        with os.fdopen(fd,'wb') as output:output.write(data);output.flush();os.fsync(output.fileno())
        # Recheck before rename; replacement never follows a symlink target.
        if path.exists() or path.is_symlink():_file(path)
        os.replace(name,path)
    finally:
        try:os.unlink(name)
        except FileNotFoundError:pass

def _public(private):
    if not _file(private):raise ConfigError('prepare_required')
    public=_openssl(['pkey','-in',str(private),'-pubout'])
    details=_openssl(['pkey','-pubin','-text','-noout'],public)
    if b'(4096 bit)' not in details or b'Modulus:' not in details:raise ConfigError('invalid_transport_key')
    return public.decode('ascii')

def prepare(state_dir=None):
    root=_root(state_dir)
    with _lock(root):
        private=root/'config-private.pem'
        if not _file(private):_atomic(private,_openssl(['genpkey','-algorithm','RSA','-pkeyopt','rsa_keygen_bits:4096'],timeout=60))
        public=_public(private)
    return {'public_key_pem':public,'rsa_bits':4096,'transport':'RSA-OAEP-SHA256','max_plaintext_bytes':MAX_PAYLOAD}

def _budget(value):
    if isinstance(value,bool) or not isinstance(value,(str,int,float,Decimal)):raise ConfigError('invalid_pilot_budget')
    try:amount=Decimal(str(value))
    except InvalidOperation:raise ConfigError('invalid_pilot_budget') from None
    if not amount.is_finite() or amount<=0 or amount>DEFAULT_BUDGET or amount.as_tuple().exponent < -2:raise ConfigError('invalid_pilot_budget')
    return amount

def _read(root):
    path=root/'openai.env'
    if not _file(path):return {}
    # This file is parsed as data, never sourced or evaluated.
    if path.stat().st_size>1024:raise ConfigError('invalid_private_configuration')
    try:lines=path.read_text(encoding='ascii').splitlines();pairs=[line.split('=',1) for line in lines if line]
    except (OSError,UnicodeError):raise ConfigError('invalid_private_configuration') from None
    if any(len(pair)!=2 for pair in pairs) or len({pair[0] for pair in pairs})!=len(pairs):raise ConfigError('invalid_private_configuration')
    value=dict(pairs)
    if set(value)!={'OPENAI_API_KEY','OPENAI_PILOT_BUDGET_USD','OPENAI_BILLING_ATTESTED'} or not re.fullmatch(r'sk-[A-Za-z0-9_-]{12,300}',value['OPENAI_API_KEY']) or value['OPENAI_BILLING_ATTESTED']!='true':raise ConfigError('invalid_private_configuration')
    _budget(value['OPENAI_PILOT_BUDGET_USD']);return value

def status(state_dir=None):
    root=_root(state_dir)
    if not _directory(root):return {'key_present':False,'pilot_budget_usd':10,'billing_attested':False}
    value=_read(root)
    return {'key_present':bool(value),'pilot_budget_usd':float(_budget(value['OPENAI_PILOT_BUDGET_USD'])) if value else 10,'billing_attested':value.get('OPENAI_BILLING_ATTESTED')=='true'}

def configure(ciphertext,state_dir=None):
    # No plaintext secret or decrypted error is ever included in return/errors.
    if not isinstance(ciphertext,str) or len(ciphertext)>700 or not re.fullmatch(r'[A-Za-z0-9+/]+={0,2}',ciphertext):raise ConfigError('invalid_ciphertext')
    try:encrypted=base64.b64decode(ciphertext,validate=True)
    except ValueError:raise ConfigError('invalid_ciphertext') from None
    if len(encrypted)!=512:raise ConfigError('invalid_ciphertext')
    root=_root(state_dir)
    with _lock(root):
        _public(root/'config-private.pem')
        plain=_openssl(['pkeyutl','-decrypt','-inkey',str(root/'config-private.pem'),'-pkeyopt','rsa_padding_mode:oaep','-pkeyopt','rsa_oaep_md:sha256','-pkeyopt','rsa_mgf1_md:sha256'],encrypted)
        if len(plain)>MAX_PAYLOAD:raise ConfigError('invalid_configuration_payload')
        def unique(pairs):
            if len({key for key,_ in pairs})!=len(pairs):raise ConfigError('invalid_configuration_payload')
            return dict(pairs)
        try:value=json.loads(plain,object_pairs_hook=unique)
        except (ValueError,UnicodeError):raise ConfigError('invalid_configuration_payload') from None
        if not isinstance(value,dict) or 'OPENAI_API_KEY' not in value or not set(value)<={'OPENAI_API_KEY','pilot_budget_usd'}:raise ConfigError('invalid_configuration_payload')
        key=value['OPENAI_API_KEY']
        if not isinstance(key,str) or not re.fullmatch(r'sk-[A-Za-z0-9_-]{12,300}',key):raise ConfigError('invalid_api_key_format')
        old=_read(root)
        budget=_budget(value.get('pilot_budget_usd',old.get('OPENAI_PILOT_BUDGET_USD',10)))
        if old and budget!=_budget(old['OPENAI_PILOT_BUDGET_USD']):raise ConfigError('existing_pilot_budget_is_immutable')
        # Local attestation reflects the owner's separately verified pilot billing
        # state; this helper never adds payment, purchases credits or resets usage.
        data=f'OPENAI_API_KEY={key}\nOPENAI_PILOT_BUDGET_USD={budget}\nOPENAI_BILLING_ATTESTED=true\n'
        _atomic(root/'openai.env',data.encode('ascii'))
    return status(root)

def main(argv=None,state_dir=None):
    import argparse
    class SafeParser(argparse.ArgumentParser):
        def error(self,message):self.exit(2,'Invalid private configuration command\n')
    parser=SafeParser(description='Private encrypted API pilot configuration')
    mode=parser.add_mutually_exclusive_group(required=True)
    mode.add_argument('--prepare',action='store_true')
    mode.add_argument('--configure-encrypted',metavar='CIPHERTEXT')
    mode.add_argument('--status',action='store_true')
    args=parser.parse_args(argv)
    try:
        result=prepare(state_dir) if args.prepare else configure(args.configure_encrypted,state_dir) if args.configure_encrypted is not None else status(state_dir)
    except Exception:
        print(json.dumps({'ok':False,'error':'private_configuration_unavailable'}));return 1
    print(json.dumps(result));return 0

if __name__=='__main__':raise SystemExit(main())
