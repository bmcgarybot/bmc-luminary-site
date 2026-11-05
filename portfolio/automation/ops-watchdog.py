#!/usr/bin/env python3
"""Host watchdog: private metrics, bounded restarts, durable owner alerts. No campaign authority."""
import argparse, base64, datetime as dt, fcntl, hashlib, hmac, importlib.util
import json, os, pathlib, re, smtplib, ssl, subprocess, time, urllib.request, urllib.error
from concurrent.futures import ThreadPoolExecutor
from contextlib import ExitStack
from email.message import EmailMessage
from email.utils import make_msgid

ROOT=pathlib.Path(__file__).resolve().parent
STATE_DIR=pathlib.Path.home()/".local/state/bmc-watchdog"
STATE_FILE=STATE_DIR/"state.json"
FLAGS=("OUTREACH_ENABLED","BUYER_OUTREACH_ENABLED","GROWTH_OUTREACH_ENABLED","BMC_OWNER_LAUNCH_HOLD")

def module(name,filename):
    spec=importlib.util.spec_from_file_location(name,ROOT/filename)
    obj=importlib.util.module_from_spec(spec);spec.loader.exec_module(obj);return obj

policy=module("ops_policy","ops-policy.py")

def read_env():
    result={}
    for line in (ROOT/".env").read_text().splitlines():
        if line.strip() and not line.lstrip().startswith("#") and "=" in line:
            key,value=line.split("=",1);result[key.strip()]=value.strip().strip('"').strip("'")
    return result

def run(cmd,timeout=8,input=None):
    try:
        p=subprocess.run(cmd,cwd=ROOT,text=True,capture_output=True,timeout=timeout,input=input)
        return p.returncode,p.stdout.strip(),p.stderr.strip()
    except Exception as exc:return 99,"",type(exc).__name__

def db_json(env,sql):
    rc,out,_=run(["docker","exec","-i","-e","PGOPTIONS=-c statement_timeout=10000","bmc-postgres-1",
        "psql","-v","ON_ERROR_STOP=1","-U",env["POSTGRES_USER"],"-d",env["POSTGRES_DB"],"-Atc",sql])
    if rc:raise RuntimeError("Database observation unavailable")
    return json.loads(out)

def http(url,payload=None,env=None,timeout=5):
    headers={"User-Agent":"Mozilla/5.0 BMC-Operations-Monitor","Accept":"application/json"}
    if env:headers["X-BMC-Admin-Key"]=env.get("BMC_ADMIN_KEY") or env.get("ADMIN_KEY","")
    data=json.dumps(payload).encode() if payload is not None else None
    if data:headers["Content-Type"]="application/json"
    try:
        with urllib.request.urlopen(urllib.request.Request(url,data=data,headers=headers),timeout=timeout) as response:
            content=response.read(2_000_000);code=response.status
            try:value=json.loads(content)
            except ValueError:value=None
            return code,value
    except urllib.error.HTTPError as exc:return exc.code,None
    except Exception:return None,None

def load_state():
    try:return json.loads(STATE_FILE.read_text())
    except (OSError,ValueError):return {}

def save_state(state):
    tmp=STATE_FILE.with_suffix(".tmp");tmp.write_text(json.dumps(state,indent=2)+"\n")
    os.chmod(tmp,0o600);tmp.replace(STATE_FILE)

def container_flags_match(env):
    values={k:env.get(k,"").strip().lower() for k in FLAGS}
    if any(v not in ("true","false") for v in values.values()):return False
    if values[FLAGS[3]]=="true" and any(values[k]=="true" for k in FLAGS[:3]):return False
    expected=[k+"="+v for k,v in values.items()]
    # Ask Docker only for these exact booleans; never dump its full secret environment.
    conditions=" ".join('(eq . "'+value+'")' for value in expected)
    template='{{range .Config.Env}}{{if or '+conditions+'}}{{println .}}{{end}}{{end}}'
    rc,out,_=run(["docker","inspect","--format",template,"bmc-ops_api-1"])
    return rc==0 and sorted(out.splitlines())==sorted(expected)

def research_queue_check():
    """Observe only an existing research queue; never start jobs or API work."""
    queue=pathlib.Path.home()/'.local/state/bmc-api-research/research-queue.sqlite3'
    if not queue.exists():return None
    name='Phoenix research queue'
    if queue.is_symlink() or not queue.is_file():return {'name':name,'ok':False,'detail':'unsafe_queue_state'}
    rc,out,_=run(['/usr/bin/python3',str(ROOT/'api_research_queue_worker.py'),'--status'],timeout=10)
    if rc or len(out.encode())>50000:return {'name':name,'ok':False,'detail':'queue_status_unavailable'}
    try:
        value=json.loads(out);reason=value.get('stop_reason')
        if (value.get('scope')!='Phoenix/property_management' or type(value.get('needs_help')) is not bool
            or (reason is not None and (not isinstance(reason,str) or not re.fullmatch('[a-z_]{3,80}',reason)))):
            raise ValueError('invalid_status')
    except (ValueError,TypeError,AttributeError):return {'name':name,'ok':False,'detail':'queue_status_invalid'}
    terminal=reason in ('insufficient_six_dollar_reserve','lifetime_job_limit')
    needs_help=value['needs_help'] or terminal
    detail=(reason or 'queue_help_required') if needs_help else ('research_job_in_progress' if reason=='running_or_unresolved_job' else 'bounded_research_ready')
    return {'name':name,'ok':not needs_help,'detail':detail}

def collect(env,state):
    probes={
      "api":("http://127.0.0.1:8000/health",None,None),
      "n8n":("http://127.0.0.1:5678/healthz",None,None),
      "public":("https://bmcservicenetwork.com/",None,None),
      "ingress":("https://hooks.bmcservicenetwork.com/",None,None),
      "metrics":("http://127.0.0.1:8000/api/admin/business-metrics",{},env),
      "growth":("http://127.0.0.1:8000/api/admin/growth-status",{},env),
      "agent":("http://127.0.0.1:8000/api/admin/agent-status",None,env)}
    with ThreadPoolExecutor(max_workers=7) as executor:
        futures={name:executor.submit(http,*args) for name,args in probes.items()}
        readings={name:future.result() for name,future in futures.items()}
    checks=[]
    def add(name,ok,detail):checks.append(dict(name=name,ok=bool(ok),detail=detail))
    rc,out,_=run(["docker","ps","--format","{{.Names}}"])
    running=set(out.splitlines()) if rc==0 else set()
    services={"Postgres":"postgres","Ops API":"ops_api","Scheduler":"scheduler","n8n":"n8n",
              "SearXNG":"searxng","Webhook gateway":"webhook_proxy","Cloudflare ingress":"cloudflared"}
    if env.get("LOCAL_AI_ENABLED","false").lower()=="true":services["Local AI / Ollama"]="ollama"
    for name,service in services.items():
        present="bmc-"+service+"-1" in running
        add(name,present,"running" if present else "container unavailable")
    health,_=readings["api"]
    next(c for c in checks if c["name"]=="Ops API").update(ok=health==200,detail="HTTP "+str(health))
    for name,url in (("n8n","http://127.0.0.1:5678/healthz"),("Public website","https://bmcservicenetwork.com/")):
        code,_=readings["n8n" if name=="n8n" else "public"];existing=next((c for c in checks if c["name"]==name),None)
        if existing:existing.update(ok=code==200,detail="HTTP "+str(code))
        else:add(name,code==200,"HTTP "+str(code))
    code,_=readings["ingress"]
    next(c for c in checks if c["name"]=="Cloudflare ingress").update(ok=code==404,detail="HTTP "+str(code)+" (404 expected)")
    rc,out,_=run(["docker","inspect","-f","{{.State.Health.Status}}","bmc-postgres-1"])
    next(c for c in checks if c["name"]=="Postgres").update(ok=rc==0 and out=="healthy",detail=out or "unknown")
    rc,out,_=run(["df","-Pk",str(ROOT)])
    try:free=int(out.splitlines()[-1].split()[3])//1024//1024
    except (IndexError,ValueError):free=None
    add("Disk space",free is not None and free>=15,str(free)+" GB free")
    backups=list((ROOT/"backups").glob("*.dump"))
    newest=max((p.stat().st_mtime for p in backups),default=0)
    add("Database backup freshness",time.time()-newest<36*3600,"latest backup age hours: "+str(round((time.time()-newest)/3600,1)) if newest else "no backup found")
    code,metrics=readings["metrics"]
    add("Business metrics",code==200 and isinstance(metrics,dict),"HTTP "+str(code))
    if isinstance(metrics,dict):
        for name,value in (("Unresolved outbound mail",metrics.get("mail",{}).get("unresolved")),
                           ("Paid research fulfillment overdue",metrics.get("orders",{}).get("growth_paid_unfulfilled_over_30m")),
                           ("High-priority business exceptions",metrics.get("exceptions",{}).get("high_priority"))):
            add(name,type(value) is int and value==0,str(value)+" recorded")
    if isinstance(metrics,dict):
        by_route={row["route"]:row for row in metrics.get("api_operations",[])}
        for route in ("/api/process-replies","/api/agent-cycle"):
            stamp=by_route.get(route,{}).get("last_success_at")
            try:age=time.time()-dt.datetime.fromisoformat(stamp).timestamp()
            except (TypeError,ValueError):age=None
            add("Worker freshness "+route,(age is not None and age<2700 and by_route[route].get("last_status",500)<400) or (route not in by_route and time.time()-state.get("configured_at",0)<900),"last successful run age seconds: "+str(round(age) if age is not None else "unknown"))
    code,growth=readings["growth"]
    expected={k:env.get(k,"").strip().lower() for k in FLAGS}
    live=(growth or {}).get("outreach_switches",{})
    safe=(not (expected[FLAGS[3]]=="true" and any(expected[k]=="true" for k in FLAGS[:3]))
          and expected[FLAGS[3]] in ("true","false") and code==200 and all(expected[k] in ("true","false") and live.get(k)==(expected[k]=="true") for k in FLAGS[:3])
          and type((growth or {}).get("owner_launch_hold_active")) is bool
          and growth["owner_launch_hold_active"]==(expected[FLAGS[3]]=="true"))
    offline_confirmed=code!=200 and container_flags_match(env)
    safe=safe or offline_confirmed
    add("Owner alert configuration",bool(state.get("monitor_configured") and env.get("WATCHDOG_EMAIL")),"configured privately" if state.get("monitor_configured") else "not configured")
    add("Campaign configuration consistency",safe,"API unavailable; container flags independently match configuration" if offline_confirmed else ("configuration agrees with running API" if safe else "unknown or drift: do not repair automatically"))
    # Verify a real saved owner click path, never a customer invitation or email.
    # One recipient per cycle covers nine within 45 minutes without heavy polling.
    if state.get("monitor_configured"):
        try:
            cohort=json.loads((ROOT/"api/growth_phoenix_cohort.json").read_text())
            index=int(state.get("preview_probe_index",0))%len(cohort["target_ids"])
            target_id=cohort["target_ids"][index]
            # Only a locally known allowlisted ID is embedded; no arbitrary SQL.
            if not re.fullmatch(r"inventory:[0-9a-f-]{36}",target_id):raise ValueError("Invalid scope")
            target=db_json(env,"select json_build_object('email',public_email) from growth_outreach_targets where target_id='"+target_id+"';")
            key=env.get("BMC_ADMIN_KEY") or env.get("ADMIN_KEY","")
            claim=hmac.new(key.encode(),("owner-preview\n"+target_id+"\n"+target["email"].strip().lower()).encode(),hashlib.sha256).hexdigest()[:40]
            code,sample=http("https://hooks.bmcservicenetwork.com/api/growth/claim-free-five",
                {"target_id":target_id,"claim":claim,"preview":"1"},timeout=10)
            valid=(code==200 and isinstance(sample,dict) and sample.get("preview") is True
                   and len(sample.get("sample",[]))==5 and bool(sample.get("download_pdf_base64"))
                   and "client_reference_id=owner_preview_" in sample.get("checkout_url",""))
            add("Phoenix owner sample journey",valid,"recipient index "+str(index+1)+": HTTP "+str(code))
            state["preview_probe_index"]=index+1
        except Exception:add("Phoenix owner sample journey",False,"probe unavailable; no customer action attempted")
    code,tasks=readings["agent"]
    add("Internal operator agent",code==200 and isinstance(tasks,dict),"HTTP "+str(code))
    queue_check=research_queue_check()
    if queue_check is not None:checks.append(queue_check)
    return checks,metrics,growth,safe

def alert_audit(message_id,status):
    try:
        path=STATE_DIR/"alert-attempts.jsonl"
        with path.open("a") as stream:
            os.chmod(path,0o600)
            stream.write(json.dumps({"at":dt.datetime.now(dt.timezone.utc).isoformat(),"message_id":message_id,"status":status})+"\n")
            stream.flush();os.fsync(stream.fileno())
    except OSError:print("Operational alert audit unavailable",flush=True)

def send_alert(env,subject,body,message_id):
    recipient=env.get("WATCHDOG_EMAIL","")
    if not re.fullmatch(r"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}",recipient):return False
    msg=EmailMessage();msg["From"]=env.get("SMTP_FROM") or env.get("SMTP_USER","")
    msg["To"]=recipient;msg["Subject"]=subject;msg["Message-ID"]=message_id
    msg.set_content(body)
    alert_audit(message_id,"attempting")
    try:
        with smtplib.SMTP(env["SMTP_HOST"],int(env.get("SMTP_PORT","587")),timeout=8) as smtp:
            smtp.ehlo()
            if env.get("SMTP_STARTTLS","true").lower()=="true":smtp.starttls(context=ssl.create_default_context());smtp.ehlo()
            smtp.login(env["SMTP_USER"],env["SMTP_PASSWORD"]);smtp.send_message(msg)
        alert_audit(message_id,"smtp_accepted")
        return True
    except Exception:
        alert_audit(message_id,"uncertain");return False

def prepare_key():
    private=STATE_DIR/"configuration-key.pem";public=STATE_DIR/"configuration-public.pem"
    if not private.exists():
        rc,_,_=run(["openssl","genpkey","-algorithm","RSA","-pkeyopt","rsa_keygen_bits:3072","-out",str(private)],timeout=60)
        if rc:raise RuntimeError("Unable to prepare private configuration transfer")
        os.chmod(private,0o600)
    rc,pem,_=run(["openssl","pkey","-in",str(private),"-pubout"])
    if rc:raise RuntimeError("Unable to read public configuration key")
    return {"public_key":pem,"purpose":"VPS-only encrypted operational configuration"}

def configure(ciphertext):
    raw=base64.b64decode(ciphertext,validate=True)
    p=subprocess.run(["openssl","pkeyutl","-decrypt","-inkey",str(STATE_DIR/"configuration-key.pem"),
        "-pkeyopt","rsa_padding_mode:oaep","-pkeyopt","rsa_oaep_md:sha256"],input=raw,capture_output=True,timeout=10)
    if p.returncode:raise ValueError("Encrypted configuration could not be read")
    data=json.loads(p.stdout)
    if set(data)!={"alert_email","autofix"} or type(data["autofix"]) is not bool or not re.fullmatch(r"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}",data["alert_email"]):
        raise ValueError("Invalid operational configuration")
    path=ROOT/".env";lines=path.read_text().splitlines()
    keys={"WATCHDOG_EMAIL":data["alert_email"],"WATCHDOG_AUTOFIX":str(data["autofix"]).lower()}
    for key,value in keys.items():
        lines=[line for line in lines if not line.startswith(key+"=")];lines.append(key+"="+value)
    tmp=path.with_suffix(".ops-config.tmp");tmp.write_text("\n".join(lines)+"\n");os.chmod(tmp,path.stat().st_mode);tmp.replace(path)
    state=load_state();state["monitor_configured"]=True;state["configured_at"]=time.time();save_state(state)
    return {"configured":True,"alert_recipient_configured":True,"autofix":data["autofix"]}

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for flag in ("report","json","status","prepare-config","test-alert"):parser.add_argument("--"+flag,action="store_true")
    parser.add_argument("--configure-encrypted")
    args=parser.parse_args()
    os.umask(0o077)
    STATE_DIR.mkdir(parents=True,exist_ok=True,mode=0o700)
    os.chmod(STATE_DIR,0o700)
    with (STATE_DIR/"lock").open("a") as lock, ExitStack() as resources:
        os.chmod(STATE_DIR/"lock",0o600)
        try:fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
        except BlockingIOError:print(json.dumps({"busy":True}));return 0
        if args.prepare_config:print(json.dumps(prepare_key()));return 0
        if args.configure_encrypted:print(json.dumps(configure(args.configure_encrypted)));return 0
        env=read_env();state=load_state()
        if args.status:
            print(json.dumps({"configured":bool(state.get("monitor_configured")),"recipient_configured":bool(env.get("WATCHDOG_EMAIL")),
                "autofix":env.get("WATCHDOG_AUTOFIX")=="true","last_check":state.get("last_check"),"private_alert_audit_available":(STATE_DIR/"alert-attempts.jsonl").exists(),
                "last_report":state.get("last_report"),"pending_alert":state.get("pending_notice"),
                "test_alert_smtp_accepted":state.get("test_alert_smtp_accepted",False)}));return 0
        maintenance=resources.enter_context((STATE_DIR/"maintenance.lock").open("a"))
        try:fcntl.flock(maintenance,fcntl.LOCK_SH|fcntl.LOCK_NB)
        except BlockingIOError:
            print(json.dumps({"maintenance_active":True,"repairs_paused":True,"alerts_paused":True}));return 0
        checks,metrics,growth,consistent=collect(env,state)
        now=time.time();repairs=[]
        if not args.report and not args.json and not args.test_alert and consistent:
            plan=policy.repair_plan(checks,state,now,env.get("WATCHDOG_AUTOFIX")=="true")
            for service in plan:
                if service not in policy.SERVICES.values():continue
                entry={"at":now,"service":service,"command_ok":None};repairs.append(entry)
                state.setdefault("repairs",[]).append(entry)
                save_state(state)  # Claim the bounded attempt before touching a service.
                rc,_,_=run(["docker","compose","--env-file",".env","--profile","tunnel","--profile","local-ai","restart",service],timeout=20)
                entry["command_ok"]=rc==0
            for entry in repairs:
                urls={"ops_api":"http://127.0.0.1:8000/health","n8n":"http://127.0.0.1:5678/healthz",
                      "cloudflared":"https://hooks.bmcservicenetwork.com/","searxng":"http://127.0.0.1:8888/",
                      "ollama":"http://127.0.0.1:11434/api/tags"}
                service=entry["service"]
                if service in urls:
                    code,_=http(urls[service]);verified=code==(404 if service=="cloudflared" else 200)
                else:
                    rc,names,_=run(["docker","ps","--format","{{.Names}}"])
                    verified=rc==0 and "bmc-"+service+"-1" in names.splitlines()
                entry["verified_healthy"]=verified
                for check in checks:
                    if policy.SERVICES.get(check["name"])==service and not check["name"].startswith("Worker freshness"):
                        check.update(ok=verified,detail="bounded restart verification: "+str(verified))
                # Failed worker heartbeat stays failed until a successful real cycle.

            if any(read_env().get(k)!=env.get(k) for k in FLAGS):
                checks.append({"name":"Campaign settings changed during recovery","ok":False,"detail":"manual review required"})
        state["repairs"]=[r for r in state.get("repairs",[]) if r.get("at",0)>now-7*86400]
        problems=[c for c in checks if not c["ok"]]
        report={"observed_at":dt.datetime.now(dt.timezone.utc).isoformat(),"status":"ACTION NEEDED" if problems else "HEALTHY",
            "checks":checks,"business_metrics":metrics,"growth_scope":{"wave":(growth or {}).get("wave"),
            "recipient_scope_count":(growth or {}).get("recipient_scope_count"),"owner_hold":(growth or {}).get("owner_launch_hold_active"),
            "outreach_switches":(growth or {}).get("outreach_switches")},"repairs":repairs}
        if args.json:print(json.dumps(report));return int(bool(problems))*2
        lines=["BMC VPS "+report["status"],"Checked: "+report["observed_at"],""]
        lines += [("PASS " if c["ok"] else "CHECK ")+c["name"]+": "+c["detail"] for c in checks]
        lines += ["","Bounded recovery: "+json.dumps(repairs),"",("Help needed: share this report in your BMC maintenance chat." if problems else "No action is needed for these checks."),
                  "No customer outreach, charges, refunds, provider approvals, credential changes or code deployments were authorized by this monitor.",
                  "If the VPS or its mail provider is entirely offline, it cannot send an alert. Independent external monitoring is still required."]
        body="\n".join(lines)
        if args.report:print(body);return int(bool(problems))*2
        decision=policy.alert_decision(checks,state,now)
        if args.test_alert:
            if not state.get("monitor_configured"):raise RuntimeError("Configure the designated owner alert recipient first")
            if state.get("test_alert_attempted_at") and not state.get("test_alert_smtp_accepted"):
                print(json.dumps({"test_alert_smtp_accepted":False,"uncertain_prior_attempt":True,"duplicate_avoided":True}));return 2
            if not state.get("test_alert_smtp_accepted"):
                state["test_alert_attempted_at"]=now;save_state(state)
                accepted=send_alert(env,"[BMC VPS] Operational alert test",body,make_msgid(domain="bmcservicenetwork.com"))
                state["test_alert_smtp_accepted"]=accepted
                state["test_alert_attempted_at"]=now
            else:accepted=True
            save_state(state);print(json.dumps({"test_alert_smtp_accepted":accepted,"duplicate_avoided":accepted and bool(state.get("test_alert_attempted_at",0)<now)}));return 0 if accepted else 2
        if decision["send"] and state.get("monitor_configured"):
            policy.record_alert(state,decision,now,False);save_state(state)
            accepted=send_alert(env,"[BMC VPS] "+("ACTION NEEDED" if problems else "RECOVERED"),body,make_msgid(domain="bmcservicenetwork.com"))
            policy.record_alert(state,decision,now,accepted)
        state.update(last_check=report["observed_at"],last_report=report)
        save_state(state)
        history=STATE_DIR/"history.jsonl"
        with history.open("a") as stream:stream.write(json.dumps(report)+"\n")
        os.chmod(history,0o600)
        # Bound private operational history; detailed commerce ledgers stay in PostgreSQL.
        if history.stat().st_size>20_000_000:
            rows=history.read_text().splitlines()[-4032:];history.write_text("\n".join(rows)+"\n")
        print(body);return int(bool(problems))*2

if __name__=="__main__":
    try:raise SystemExit(main())
    except Exception as exc:
        # An independent SMTP path can ask for help even when the API/database fails.
        try:
            env=read_env();state=load_state();now=time.time()
            check={"name":"Watchdog internal error","ok":False,"detail":type(exc).__name__}
            decision=policy.alert_decision([check],state,now)
            if state.get("monitor_configured") and decision["send"] and not any(x in __import__("sys").argv for x in ("--report","--json","--status","--prepare-config","--configure-encrypted")):
                accepted=send_alert(env,"[BMC VPS] Monitor needs help","The host watchdog could not finish: "+type(exc).__name__+". Review the timer journal; preserve outreach settings.",make_msgid(domain="bmcservicenetwork.com"))
                policy.record_alert(state,decision,now,accepted);save_state(state)
        except Exception:pass
        print(json.dumps({"error":"Operational monitor could not complete","error_type":type(exc).__name__}))
        raise SystemExit(2)
