#!/usr/bin/env python3
"""Reload only this user's existing monitor process; systemd Restart=always restarts it.
No sudo, unit edits, new listener, arbitrary PID or command arguments.
"""
import os,pathlib,signal,subprocess,sys,time,urllib.request
UNIT='bmc-operator-monitor.service'
TARGET=pathlib.Path(__file__).resolve().with_name('operator-monitor.py')
def valid_process(pid,owner,argv,current_uid,target):
    return type(pid) is int and pid>1 and owner==current_uid and str(target) in argv

def main():
    result=subprocess.run(['systemctl','show','--property=MainPID','--value',UNIT],capture_output=True,text=True,check=True)
    pid=int(result.stdout.strip())
    if pid<=1:raise RuntimeError('Monitor has no running main process')
    # Hold the kernel process identity while checking ownership and exact entrypoint.
    fd=os.pidfd_open(pid)
    try:
        proc=pathlib.Path('/proc')/str(pid)
        argv=[x.decode() for x in (proc/'cmdline').read_bytes().split(b'\0') if x]
        if not valid_process(pid,proc.stat().st_uid,argv,os.getuid(),TARGET):
            raise RuntimeError('Monitor is not owned by this user or has a different entrypoint; manual service restart required')
        signal.pidfd_send_signal(fd,signal.SIGTERM)
    finally:os.close(fd)
    for _ in range(20):
        time.sleep(1)
        try:
            current=subprocess.run(['systemctl','show','--property=MainPID','--value',UNIT],capture_output=True,text=True,check=True)
            if int(current.stdout.strip())==pid:continue
            with urllib.request.urlopen('http://127.0.0.1:8765/',timeout=2) as response:
                if response.status==200:
                    print('Private monitor reloaded under its existing user and listener; stored history retained.');return 0
        except (OSError,ValueError,subprocess.SubprocessError):continue
    raise RuntimeError('Monitor reload did not become healthy; check the existing service')
if __name__=='__main__':
    try:sys.exit(main())
    except Exception as exc:print('Monitor reload incomplete:',str(exc),file=sys.stderr);sys.exit(1)
