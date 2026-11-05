#!/usr/bin/env python3
"""Fixed host timer installer for the bounded Phoenix property-research worker.

--install is an explicit activation action: caller must first stop the Mac driver.
This file never installs/starts anything on import. No credential values or env
files are copied into units; the existing pilot reads its private file at runtime.
"""
import argparse,json,os,pwd,grp,re,subprocess,sys
from pathlib import Path

AUTOMATION=Path(__file__).resolve().parent
SERVICE='bmc-api-research-queue.service';TIMER='bmc-api-research-queue.timer'
UNIT_DIR=Path('/etc/systemd/system');SCOPE='Phoenix/property_management'
class Held(ValueError):pass

def call(args,*,text=None,timeout=30):
    return subprocess.run(args,input=text,text=True,capture_output=True,timeout=timeout)

def checked(args,*,text=None):
    result=call(args,text=text)
    if result.returncode:raise Held('fixed_systemd_operation_failed')
    return result

def identity():
    result=call(['systemctl','show','--property=User','--value','bmc-vps-relay.service'])
    username=result.stdout.strip() if result.returncode==0 else ''
    if not username:
        username=pwd.getpwuid(os.getuid()).pw_name
    if not re.fullmatch('[a-z_][a-z0-9_-]{0,31}',username):raise Held('existing_vps_user_unproven')
    user=pwd.getpwnam(username)
    if user.pw_uid==0:raise Held('nonroot_existing_vps_user_required')
    return username,grp.getgrgid(user.pw_gid).gr_name,Path(user.pw_dir)

def quoted(value):
    value=str(value)
    if any(ord(c)<32 for c in value):raise Held('unsafe_unit_value')
    return '"'+value.replace('\\','\\\\').replace('"','\\"').replace('%','%%')+'"'

def unit_texts(user,group,home):
    if not re.fullmatch('[a-z_][a-z0-9_-]{0,31}',user) or not re.fullmatch('[a-z_][a-z0-9_-]{0,31}',group):raise Held('unsafe_service_identity')
    private=home/'.local/state/bmc-api-research';worker=AUTOMATION/'api_research_queue_worker.py'
    service=f'''[Unit]
Description=BMC bounded Phoenix property research and native inventory import
After=network-online.target docker.service
Wants=network-online.target
ConditionPathExists={quoted(private/'openai.env')}
ConditionPathExists={quoted(private/'pilot.sqlite3')}

[Service]
Type=oneshot
User={user}
Group={group}
WorkingDirectory={quoted(AUTOMATION)}
Environment={quoted('HOME='+str(home))}
Environment=PYTHONUNBUFFERED=1
Environment=PYTHONDONTWRITEBYTECODE=1
Environment=BMC_API_RESEARCH_QUEUE_ENABLED=true
Environment=BMC_API_RESEARCH_MAC_DRIVER_STOPPED=true
ExecStart=/usr/bin/python3 {quoted(worker)} --once
TimeoutStartSec=900
UMask=0077
Nice=10
NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=full
'''
    timer=f'''[Unit]
Description=Run bounded Phoenix property research at most once every five minutes

[Timer]
OnBootSec=2min
OnUnitInactiveSec=5min
AccuracySec=30s
Unit={SERVICE}

[Install]
WantedBy=timers.target
'''
    return service,timer

def status():
    user,group,home=identity();expected=unit_texts(user,group,home)
    matches=[]
    for name,text in zip((SERVICE,TIMER),expected):
        path=UNIT_DIR/name
        try:matches.append(path.is_file() and not path.is_symlink() and path.read_text()==text)
        except OSError:matches.append(False)
    enabled=call(['systemctl','is-enabled','--quiet',TIMER]).returncode==0
    active=call(['systemctl','is-active','--quiet',TIMER]).returncode==0
    result={'status':'research_queue_service_status','scope':SCOPE,'service_user':user,
        'timer_enabled':enabled,'timer_active':active,'fixed_units_match':all(matches),
        'cadence':'5 minutes after prior job completes','credentials_copied':False,'outreach_sent':0,'customer_actions':False}
    worker=AUTOMATION/'api_research_queue_worker.py'
    # Read-only queue status uses existing user HOME; never invokes --once.
    if worker.is_file() and os.getuid()==pwd.getpwnam(user).pw_uid:
        cp=call(['/usr/bin/python3',str(worker),'--status'])
        if cp.returncode==0 and len(cp.stdout.encode())<=50000:
            try:
                value=json.loads(cp.stdout)
                if value.get('scope')==SCOPE:result['queue']=value
            except (ValueError,TypeError):pass
    return result

def install():
    user,group,home=identity();private=home/'.local/state/bmc-api-research'
    for path in (AUTOMATION/'api_research_queue_worker.py',AUTOMATION/'api_research_pilot.py',AUTOMATION/'.env',private/'openai.env',private/'pilot.sqlite3'):
        if not path.is_file() or path.is_symlink():raise Held('existing_worker_configuration_required')
    if private.stat().st_mode&0o077 or (private/'openai.env').stat().st_mode&0o077:raise Held('private_pilot_permissions_required')
    service,timer=unit_texts(user,group,home)
    # Fixed privileged destinations; no shell, arbitrary unit name, command or
    # credential content. Existing SQLite state/report history is never changed.
    checked(['sudo','-n','tee',str(UNIT_DIR/SERVICE)],text=service)
    checked(['sudo','-n','tee',str(UNIT_DIR/TIMER)],text=timer)
    checked(['sudo','-n','systemctl','daemon-reload'])
    checked(['sudo','-n','systemctl','enable','--now',TIMER])
    result=status();result['status']='research_queue_timer_installed'
    if not result['timer_enabled'] or not result['timer_active'] or not result['fixed_units_match']:raise Held('timer_activation_not_verified')
    return result

def main():
    parser=argparse.ArgumentParser(description=__doc__);mode=parser.add_mutually_exclusive_group(required=True)
    mode.add_argument('--install',action='store_true');mode.add_argument('--status',action='store_true');args=parser.parse_args()
    try:
        if not sys.platform.startswith('linux'):raise Held('vps_linux_execution_required')
        result=install() if args.install else status()
        print(json.dumps(result,separators=(',',':')));return 0
    except Exception as exc:
        reason=str(exc) if isinstance(exc,Held) else 'queue_service_unavailable'
        print(json.dumps({'status':'research_queue_service_held','scope':SCOPE,'gate_reason':reason,'outreach_sent':0,'customer_actions':False}));return 1
if __name__=='__main__':raise SystemExit(main())
