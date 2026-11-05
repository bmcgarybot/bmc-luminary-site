#!/usr/bin/env python3
"""One host-side Phoenix property-research/import job per invocation.

No timer installation, self-loop, customer dispatch, orders, provider acceptance
or budget reset. Requires explicit enable + stopped-Mac handoff environment.
Uses the existing private pilot ledger and existing cryptographic importer.
"""
import argparse,fcntl,json,os,sqlite3,subprocess,sys
from contextlib import contextmanager
from datetime import datetime,timezone
from pathlib import Path
import api_research_pilot as pilot

SCOPE='Phoenix/property_management';MAX_JOBS=40;MIN_AVAILABLE_MICRO=3_000_000
SOURCE_FIX_REVISION='completed-answer-and-phase-budget-v3'
AUTOMATION=Path(__file__).resolve().parent
class Held(ValueError):pass

def now():return datetime.now(timezone.utc).isoformat()
def state_root():return Path.home()/'.local/state/bmc-api-research'

@contextmanager
def worker_lock(root):
    path=root/'queue-worker.lock'
    if path.is_symlink():raise Held('unsafe_worker_lock')
    fd=os.open(path,os.O_CREAT|os.O_RDWR|getattr(os,'O_NOFOLLOW',0),0o600)
    try:
        try:fcntl.flock(fd,fcntl.LOCK_EX|fcntl.LOCK_NB)
        except BlockingIOError:raise Held('worker_already_running')
        yield
    finally:
        os.close(fd)

def worker_active(root):
    """Read-only lock observation; no lockfile creation or job execution."""
    path=root/'queue-worker.lock'
    if not path.is_file() or path.is_symlink():return False
    fd=os.open(path,os.O_RDONLY|getattr(os,'O_NOFOLLOW',0))
    try:
        try:fcntl.flock(fd,fcntl.LOCK_EX|fcntl.LOCK_NB)
        except BlockingIOError:return True
        fcntl.flock(fd,fcntl.LOCK_UN);return False
    finally:os.close(fd)

class Queue:
    def __init__(self,root):
        self.root=pilot.private_dir(root);path=self.root/'research-queue.sqlite3'
        if path.is_symlink():raise Held('unsafe_queue_database')
        fd=os.open(path,os.O_CREAT|os.O_RDWR|getattr(os,'O_NOFOLLOW',0),0o600);os.close(fd)
        if path.stat().st_mode&0o077:raise Held('private_queue_permissions')
        self.db=sqlite3.connect(path,timeout=10,isolation_level=None)
        self.db.execute('pragma synchronous=FULL')
        self.db.execute('create table if not exists jobs(job_no integer primary key,request_id text unique not null,state text not null,created text not null,finished text,verified integer,inserted integer,report_path text,stop_reason text)')
        self.db.execute("create trigger if not exists jobs_no_delete before delete on jobs begin select raise(abort,'research_job_history_immutable'); end")
        self.db.execute("create trigger if not exists jobs_finished_immutable before update on jobs when old.state<>'running' begin select raise(abort,'research_job_history_immutable'); end")
        self.db.execute('create table if not exists source_recoveries(revision text primary key,after_job integer not null,reason text not null,created text not null)')
        self.db.execute("create trigger if not exists source_recovery_no_update before update on source_recoveries begin select raise(abort,'research_recovery_immutable'); end")
        self.db.execute("create trigger if not exists source_recovery_no_delete before delete on source_recoveries begin select raise(abort,'research_recovery_immutable'); end")
    def recover_source_fix(self,ledger):
        self.db.execute('begin immediate')
        try:
            prior=self.db.execute('select after_job from source_recoveries where revision=?',(SOURCE_FIX_REVISION,)).fetchone()
            if prior:
                self.db.execute('commit');return {'status':'source_fix_already_recorded','after_job':prior[0],'history_reset':False}
            diagnostic=self.diagnostic(ledger)
            eligible=diagnostic['stop_reason']=='consecutive_no_progress' and not ledger.status()['uncertain_calls']
            if diagnostic['stop_reason']=='research_incomplete_no_retry':
                # One known completed answer failed source parsing. Never retry that
                # request or free its $3 reservation; allow a distinct next mission.
                row=self.rows()[-1]
                path=ledger.root/row[1]/'report-private.json'
                if path.is_file() and not path.is_symlink() and path.stat().st_size<850000:
                    report=json.loads(path.read_text())
                    eligible=(report.get('request_id')==row[1] and report.get('gate_reason')=='grounded_tool_count_unproven'
                        and report.get('discovery_accounting_diagnostic',{}).get('response_status')=='completed'
                        and ledger.status()['uncertain_calls']==1)
            if not eligible or ledger.status()['available_usd']<3 or self.lifetime_count(ledger)>=MAX_JOBS:raise Held('source_fix_recovery_not_eligible')
            last=self.rows()[-1][0]
            self.db.execute('insert into source_recoveries values(?,?,?,?)',(SOURCE_FIX_REVISION,last,'deployed_completed_answer_and_phase_budget_fix',now()))
            self.db.execute('commit');return {'status':'source_fix_recovery_recorded','after_job':last,'history_reset':False}
        except Exception:self.db.execute('rollback');raise
    def rows(self):return self.db.execute('select job_no,request_id,state,verified,inserted,stop_reason from jobs order by job_no').fetchall()
    def finish(self,request_id,state,*,verified=0,inserted=0,path=None,reason=None):
        changed=self.db.execute("update jobs set state=?,finished=?,verified=?,inserted=?,report_path=?,stop_reason=? where request_id=? and state='running'",
            (state,now(),verified,inserted,str(path) if path else None,reason,request_id)).rowcount
        if changed!=1:raise Held('job_state_changed')
    def lifetime_count(self,ledger):
        ours={row[1] for row in self.rows()}
        external=sum(row[0] not in ours for row in ledger.db.execute('select id from missions'))
        return len(ours)+external
    def diagnostic(self,ledger):
        rows=self.rows();unresolved=[row for row in rows if row[2]=='running']
        recovery_after=self.db.execute('select coalesce(max(after_job),0) from source_recoveries').fetchone()[0]
        failed=[row for row in rows if row[0]>recovery_after and row[2] not in ('running','completed','no_progress')]
        streak=0
        for row in reversed(rows):
            if row[0]<=recovery_after or row[2]!='no_progress':break
            streak+=1
        live=worker_active(self.root) if unresolved else False
        stop=failed[-1][5] if failed else (('running_or_unresolved_job' if live else 'orphaned_running_job') if unresolved else None)
        if not stop and streak>=3:stop='consecutive_no_progress'
        if not stop and self.lifetime_count(ledger)>=MAX_JOBS:stop='lifetime_job_limit'
        budget=ledger.status()
        if not stop and round(budget['available_usd']*1e6)<MIN_AVAILABLE_MICRO:stop='insufficient_next_phase_reserve'
        return {'status':'research_queue_status','scope':SCOPE,'lifetime_job_limit':MAX_JOBS,
            'lifetime_attempts':self.lifetime_count(ledger),'queue_jobs':len(rows),'completed_jobs':sum(row[2]=='completed' for row in rows),
            'verified_sources':sum(row[3] or 0 for row in rows),'inserted_inventory':sum(row[4] or 0 for row in rows),
            'stop_reason':stop,'consecutive_no_progress':streak,'source_recovery_after_job':recovery_after,'last_job_reason':rows[-1][5] if rows else None,
            'worker_active':live,'needs_help':bool(failed or streak>=3 or stop in ('insufficient_next_phase_reserve','lifetime_job_limit','orphaned_running_job')),'budget':budget,'outreach_sent':0,'customer_actions':False}
    def claim(self,ledger):
        self.db.execute('begin immediate')
        try:
            running=[row for row in self.rows() if row[2]=='running']
            if running:
                for row in running:self.finish(row[1],'research_uncertain',reason='prior_unfinished_job_no_retry')
                self.db.execute('commit');return None
            if self.diagnostic(ledger)['stop_reason']:
                self.db.execute('commit');return None
            number=self.db.execute('select coalesce(max(job_no),0)+1 from jobs').fetchone()[0]
            request_id='bmc-vps-phoenix-property-'+str(number).zfill(4)
            if ledger.db.execute('select 1 from missions where id=?',(request_id,)).fetchone():
                # Preserve a collision as a terminal recorded attempt; never run it.
                self.db.execute('insert into jobs(job_no,request_id,state,created,finished,stop_reason) values(?,?,?,?,?,?)',
                    (number,request_id,'duplicate',now(),now(),'request_id_already_used_no_retry'))
                self.db.execute('commit');return None
            self.db.execute('insert into jobs(job_no,request_id,state,created) values(?,?,?,?)',(number,request_id,'running',now()))
            self.db.execute('commit');return request_id
        except Exception:self.db.execute('rollback');raise

def run_research(request_id):
    # Child owns credentials and the API budget. No credentials in arguments.
    cp=subprocess.run([sys.executable,str(AUTOMATION/'api_research_pilot.py'),'--run-grounded','--request-id',request_id],
        cwd=AUTOMATION,capture_output=True,text=True,timeout=780)
    if cp.returncode or len(cp.stdout.encode())>50000:raise Held('research_process_uncertain')
    try:return json.loads(cp.stdout)
    except ValueError:raise Held('research_result_unreadable')

def import_report(report):
    command=['docker','compose','--env-file',str(AUTOMATION/'.env'),'exec','-T','-e','BMC_API_PILOT_IMPORT=1',
        'ops_api','python','-c','import asyncio;from api_pilot_import import main;asyncio.run(main())']
    cp=subprocess.run(command,cwd=AUTOMATION,input=pilot.canonical(report),text=True,capture_output=True,timeout=90)
    if cp.returncode or len(cp.stdout.encode())>50000:raise Held('import_process_uncertain')
    try:return json.loads(cp.stdout)
    except ValueError:raise Held('import_result_unreadable')

def load_report(root,request_id,result):
    path=root/request_id/'report-private.json'
    if path.is_symlink() or path.parent.is_symlink() or not path.is_file() or path.stat().st_size>850000 or path.stat().st_mode&0o077:raise Held('private_report_unavailable')
    if result.get('private_report')!=str(path):raise Held('report_path_changed')
    report=json.loads(path.read_text());verified=report.get('verified')
    if (report.get('request_id')!=request_id or report.get('mode')!='grounded_recovery'
        or report.get('status') not in ('research_partial','research_complete') or not isinstance(verified,list)
        or len(verified)>60 or report.get('native_primary_verified_count')!=len(verified)
        or report.get('outreach_sent')!=0 or report.get('offer_ready') is not False or report.get('database_writes') is not False):raise Held('research_report_not_importable')
    for entry in verified:
        row=entry.get('record',{})
        if row.get('side')!='buyer' or row.get('market')!='Phoenix' or row.get('category_key')!='property_management':raise Held('research_scope_changed')
    return path,report

def run_once(root,*,enabled=False,handoff_confirmed=False,research=run_research,importer=import_report):
    root=pilot.private_dir(root)
    if not (root/'pilot.sqlite3').is_file() or (root/'pilot.sqlite3').is_symlink():raise Held('existing_pilot_ledger_required')
    ledger=pilot.Ledger(root);queue=Queue(root)
    try:
        if not enabled:return {**queue.diagnostic(ledger),'status':'research_queue_disabled','stop_reason':'explicit_queue_enable_required'}
        if not handoff_confirmed:return {**queue.diagnostic(ledger),'status':'research_queue_held','stop_reason':'mac_driver_handoff_required'}
        with worker_lock(root):
            request_id=queue.claim(ledger)
            if request_id is None:return queue.diagnostic(ledger)
            path=None;verified=0
            try:
                result=research(request_id)
                if not isinstance(result,dict) or result.get('request_id')!=request_id or result.get('status') not in ('research_partial','research_complete'):
                    raise Held('research_incomplete_no_retry')
                path,report=load_report(root,request_id,result);verified=len(report['verified'])
                if not verified:
                    queue.finish(request_id,'no_progress',path=path,reason='no_verified_sources')
                    return queue.diagnostic(ledger)
            except Exception as exc:
                reason=str(exc) if isinstance(exc,Held) else 'research_uncertain_no_retry'
                queue.finish(request_id,'research_uncertain',verified=verified,path=path,reason=reason)
                return queue.diagnostic(ledger)
            try:
                summary=importer(report)
                if (not isinstance(summary,dict) or summary.get('ok') is not True or summary.get('outreach_sent')!=0
                    or summary.get('provider_accepted') is not False or type(summary.get('inserted')) is not int
                    or not 0<=summary['inserted']<=verified):raise Held('import_result_not_verified')
                inserted=summary['inserted']
                queue.finish(request_id,'completed' if inserted else 'no_progress',verified=verified,inserted=inserted,path=path,
                    reason=None if inserted else 'no_new_inventory')
            except Exception as exc:
                reason=str(exc) if isinstance(exc,Held) else 'import_uncertain_no_retry'
                queue.finish(request_id,'import_uncertain',verified=verified,path=path,reason=reason)
            return queue.diagnostic(ledger)
    finally:
        ledger.db.close();queue.db.close()

def main():
    parser=argparse.ArgumentParser(description=__doc__);group=parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--once',action='store_true');group.add_argument('--status',action='store_true');args=parser.parse_args();os.umask(0o077)
    try:
        if args.status:
            root=pilot.private_dir(state_root())
            if not (root/'pilot.sqlite3').is_file():raise Held('existing_pilot_ledger_required')
            ledger=pilot.Ledger(root);queue=Queue(root)
            try:result=queue.diagnostic(ledger)
            finally:ledger.db.close();queue.db.close()
        else:
            if not sys.platform.startswith('linux'):raise Held('vps_linux_execution_required')
            result=run_once(state_root(),enabled=os.getenv('BMC_API_RESEARCH_QUEUE_ENABLED')=='true',
                handoff_confirmed=os.getenv('BMC_API_RESEARCH_MAC_DRIVER_STOPPED')=='true')
        print(json.dumps(result,separators=(',',':')));return 0
    except Exception as exc:
        reason=str(exc) if isinstance(exc,(Held,pilot.Held)) else 'research_queue_unavailable'
        print(json.dumps({'status':'research_queue_held','scope':SCOPE,'stop_reason':reason,'outreach_sent':0,'customer_actions':False}));return 1
if __name__=='__main__':raise SystemExit(main())
