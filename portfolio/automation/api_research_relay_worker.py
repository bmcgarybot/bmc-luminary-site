"""Run bounded research through the existing unprivileged VPS relay timer."""
import argparse,fcntl,json,os,subprocess,time
from pathlib import Path
import api_research_pilot as pilot
import api_research_queue_worker as worker

VERSION='existing-relay-research-v1'
def root():return Path.home()/'.local/state/bmc-api-research'
def read_state(directory):
 p=directory/'relay-research.json'
 if not p.exists():return {}
 if p.is_symlink() or p.stat().st_mode&0o077:raise pilot.Held('private_relay_research_state_required')
 value=json.loads(p.read_text())
 if value.get('version')!=VERSION:raise pilot.Held('relay_research_state_version_changed')
 return value
def save_state(directory,value):
 p=directory/'relay-research.json';temp=directory/('relay-research-'+str(os.getpid())+'.tmp')
 pilot.write_private(temp,value);os.replace(temp,p)
def timer_active():
 return subprocess.run(['systemctl','is-active','--quiet','bmc-vps-relay.timer'],capture_output=True,timeout=10).returncode==0
def status(directory=None):
 directory=directory or root();value=read_state(directory);active=timer_active()
 ledger=pilot.Ledger(directory);queue=worker.Queue(directory)
 try:diagnostic=queue.diagnostic(ledger)
 finally:ledger.db.close();queue.db.close()
 enabled=value.get('enabled') is True and value.get('mac_driver_stopped') is True
 return {'status':'relay_research_status','driver':'existing_vps_relay_timer','driver_enabled':enabled,
  'timer_active':active,'driver_ready':enabled and active,'scope':worker.SCOPE,'cadence_seconds':300,
  'last_driver_failure':value.get('last_failure'),'queue':diagnostic,'outreach_sent':0,'customer_actions':False}
def enable(directory=None):
 directory=pilot.private_dir(directory or root())
 for name in ('openai.env','pilot.sqlite3'):
  p=directory/name
  if not p.is_file() or p.is_symlink() or p.stat().st_mode&0o077:raise pilot.Held('existing_private_pilot_configuration_required')
 if not timer_active():raise pilot.Held('existing_vps_relay_timer_not_active')
 value=read_state(directory)
 if not value:value={'version':VERSION,'next_run_after':0}
 value.update(enabled=True,mac_driver_stopped=True)
 save_state(directory,value)
 return status(directory)
def disable(directory=None):
 directory=pilot.private_dir(directory or root());value=read_state(directory)
 if value:value['enabled']=False;save_state(directory,value)
 return status(directory)
def resume_source_fix(directory=None):
 directory=directory or root();value=read_state(directory)
 if value.get('enabled') is not True or not timer_active():raise pilot.Held('existing_research_driver_must_be_enabled')
 ledger=pilot.Ledger(directory);queue=worker.Queue(directory)
 try:
  with worker.worker_lock(directory):recovery=queue.recover_source_fix(ledger)
 finally:ledger.db.close();queue.db.close()
 value['next_run_after']=0;save_state(directory,value)
 return {**status(directory),'recovery':recovery}
def run_due(directory=None,*,run=worker.run_once,clock=time.time):
 directory=directory or root()
 if not (directory/'relay-research.json').exists():return {'status':'relay_research_disabled'}
 value=read_state(directory)
 if value.get('enabled') is not True or value.get('mac_driver_stopped') is not True:return {'status':'relay_research_disabled'}
 path=directory/'relay-research-driver.lock'
 fd=os.open(path,os.O_CREAT|os.O_RDWR|getattr(os,'O_NOFOLLOW',0),0o600)
 try:
  try:fcntl.flock(fd,fcntl.LOCK_EX|fcntl.LOCK_NB)
  except BlockingIOError:return {'status':'relay_research_driver_busy'}
  value=read_state(directory)
  if clock()<value.get('next_run_after',0):return {'status':'relay_research_not_due'}
  value['next_run_after']=clock()+300;save_state(directory,value)
  try:
   result=run(directory,enabled=True,handoff_confirmed=True)
   value['last_failure']=None
   return result
  except Exception:
   value['last_failure']='bounded_research_worker_failed'
   return {'status':'relay_research_needs_help','reason':'bounded_research_worker_failed','outreach_sent':0}
  finally:
   value['next_run_after']=clock()+300;save_state(directory,value)
 finally:os.close(fd)
def main():
 parser=argparse.ArgumentParser();m=parser.add_mutually_exclusive_group(required=True);m.add_argument('--enable',action='store_true');m.add_argument('--status',action='store_true');m.add_argument('--disable',action='store_true');m.add_argument('--resume-after-source-fix',action='store_true');args=parser.parse_args();os.umask(0o077)
 try:print(json.dumps(enable() if args.enable else disable() if args.disable else resume_source_fix() if args.resume_after_source_fix else status(),separators=(',',':')));return 0
 except Exception as exc:
  print(json.dumps({'status':'relay_research_held','reason':str(exc) if isinstance(exc,pilot.Held) else 'relay_research_unavailable','outreach_sent':0}));return 1
if __name__=='__main__':raise SystemExit(main())
