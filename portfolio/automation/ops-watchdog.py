#!/usr/bin/env python3
import json, os, pathlib, smtplib, ssl, subprocess, sys, urllib.request, urllib.error
from datetime import datetime, timezone
from email.message import EmailMessage

ROOT=pathlib.Path(__file__).resolve().parent
ENV_FILE=ROOT/".env"
STATE_DIR=pathlib.Path.home()/".local/state/bmc-watchdog"
STATE_FILE=STATE_DIR/"state.json"
REPORT_ONLY="--report" in sys.argv

def read_env():
    env={}
    if not ENV_FILE.exists():
        return env
    for raw in ENV_FILE.read_text().splitlines():
        line=raw.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        k,v=line.split("=",1)
        env[k.strip()]=v.strip().strip('"').strip("'")
    return env

ENV=read_env()

def run(cmd, timeout=20):
    try:
        p=subprocess.run(cmd,cwd=ROOT,text=True,capture_output=True,timeout=timeout)
        return p.returncode,p.stdout.strip(),p.stderr.strip()
    except Exception as e:
        return 99,"",str(e)

def http_code(url, method="GET", timeout=15):
    req=urllib.request.Request(url,method=method,headers={"User-Agent":"BMC-Watchdog/1.0"})
    try:
        with urllib.request.urlopen(req,timeout=timeout) as r:
            return int(r.status),None
    except urllib.error.HTTPError as e:
        return int(e.code),None
    except Exception as e:
        return None,str(e)

def http_json(url, payload=None, timeout=15):
    data=None
    headers={"User-Agent":"BMC-Watchdog/1.0","Accept":"application/json"}
    method="GET"
    if payload is not None:
        data=json.dumps(payload).encode("utf-8")
        headers["Content-Type"]="application/json"
        method="POST"
    req=urllib.request.Request(url,data=data,method=method,headers=headers)
    try:
        with urllib.request.urlopen(req,timeout=timeout) as r:
            raw=r.read(1_000_000).decode("utf-8","replace")
            return int(r.status),json.loads(raw),None
    except urllib.error.HTTPError as e:
        return int(e.code),None,None
    except Exception as e:
        return None,None,str(e)

def db_scalar(sql):
    user=ENV.get("POSTGRES_USER","")
    db=ENV.get("POSTGRES_DB","")
    if not user or not db:
        return None,"database env missing"
    rc,out,err=run(["docker","exec","-i","bmc-postgres-1","psql","-U",user,"-d",db,"-Atc",sql])
    return (out if rc==0 else None),(err if rc else None)

checks=[]
def add(name,ok,detail,severity="failure"):
    checks.append({"name":name,"ok":bool(ok),"detail":detail,"severity":severity})

# Core containers: deliberately independent of n8n so n8n can be monitored from outside itself.
rc,out,err=run(["docker","ps","--format","{{.Names}}"])
running=set(out.splitlines()) if rc==0 else set()
expected=[
    "bmc-postgres-1","bmc-ops_api-1","bmc-scheduler-1","bmc-n8n-1",
    "bmc-searxng-1","bmc-webhook_proxy-1","bmc-cloudflared-1"
]
if ENV.get("LOCAL_AI_ENABLED","false").lower()=="true":
    expected.append("bmc-ollama-1")
missing=[x for x in expected if x not in running]
add("Docker services",not missing,"all core services running" if not missing else "missing: "+", ".join(missing))

# Postgres health.
rc,out,err=run(["docker","inspect","-f","{{if .State.Health}}{{.State.Health.Status}}{{else}}{{.State.Status}}{{end}}","bmc-postgres-1"])
add("Postgres",rc==0 and out=="healthy",out or err or "unavailable")

# Local app and n8n health.
code,err=http_code("http://127.0.0.1:8000/health")
add("Ops API",code==200,f"HTTP {code}" if code else err or "unreachable")

search_code,search_data,search_err=http_json(
    "http://127.0.0.1:8000/api/service-search",
    {"query":"fix my fryer"},
    timeout=8
)
search_key=((search_data or {}).get("match") or {}).get("service_key")
add(
    "Intelligent service search",
    search_code==200 and search_key=="restaurant_equipment",
    f"'fix my fryer' -> {search_key}" if search_code==200 else (search_err or f"HTTP {search_code}"),
    "failure"
)
code,err=http_code("http://127.0.0.1:5678/healthz")
add("n8n",code==200,f"HTTP {code}" if code else err or "unreachable")

# Local AI is required only when configured; deterministic search still handles known phrases.
if ENV.get("LOCAL_AI_ENABLED","false").lower()=="true":
    code,err=http_code("http://127.0.0.1:11434/api/tags",timeout=6)
    add("Local AI / Ollama",code==200,f"HTTP {code}" if code else err or "unreachable","failure")

# Research is useful but not launch-critical.
code,err=http_code("http://127.0.0.1:8888/")
add("SearXNG",code in (200,302,303),f"HTTP {code}" if code else err or "unreachable","warning")

# Public surfaces.
code,err=http_code("https://bmcservicenetwork.com/")
add("Public website",code==200,f"HTTP {code}" if code else err or "unreachable")
code,err=http_code("https://hooks.bmcservicenetwork.com/")
add("Cloudflare ingress",code==404,f"HTTP {code} (expected 404 at root)" if code else err or "unreachable")

# Disk pressure.
rc,out,err=run(["df","-Pk",str(ROOT)])
try:
    line=out.splitlines()[-1].split()
    free_gb=int(line[3])//1024//1024
    add("Disk space",free_gb>=15,f"{free_gb} GB free","failure" if free_gb<10 else "warning")
except Exception:
    add("Disk space",False,err or "could not read disk space","warning")

# BMC business exceptions. These are operational events, not necessarily infrastructure failures.
open_ex,out_err=db_scalar("select count(*) from exceptions where status='open';")
try:
    open_exceptions=int(open_ex)
except Exception:
    open_exceptions=None
add("Open BMC exceptions",open_exceptions is not None,f"{open_exceptions if open_exceptions is not None else 'unknown'} open", "warning")

# Best-effort n8n execution failures. Schema may vary by version, so this never takes the stack down.
reg,regerr=db_scalar("select to_regclass('public.execution_entity');")
n8n_failures=None
n8n_latest=""
if reg and reg.strip()=="execution_entity":
    val,qerr=db_scalar('select count(*) from execution_entity where status in (\'error\',\'crashed\') and "startedAt" > now()-interval \'15 minutes\';')
    try:
        n8n_failures=int(val)
    except Exception:
        n8n_failures=None
    if n8n_failures:
        latest,_=db_scalar('select id||\' | \'||status||\' | workflow=\'||"workflowId" from execution_entity where status in (\'error\',\'crashed\') and "startedAt" > now()-interval \'15 minutes\' order by "startedAt" desc limit 5;')
        n8n_latest=latest or ""
    add("Recent n8n workflow failures",n8n_failures==0,f"{n8n_failures} in last 15 minutes"+(("; "+n8n_latest.replace("\n","; ")) if n8n_latest else ""),"failure")
else:
    add("Recent n8n workflow failures",True,"execution table not available; container health still monitored","warning")

failures=[c for c in checks if not c["ok"] and c["severity"]=="failure"]
warnings=[c for c in checks if not c["ok"] and c["severity"]=="warning"]

status="HEALTHY" if not failures else "ISSUE"
signature=json.dumps({
    "status":status,
    "failures":[(c["name"],c["detail"]) for c in failures],
    "warnings":[(c["name"],c["detail"]) for c in warnings],
    "open_exceptions":open_exceptions,
    "n8n_failures":n8n_failures
},sort_keys=True)

STATE_DIR.mkdir(parents=True,exist_ok=True)
previous={}
try:
    previous=json.loads(STATE_FILE.read_text())
except Exception:
    pass

now=datetime.now(timezone.utc).isoformat()
report_lines=[
    f"BMC Ops Watchdog — {status}",
    f"Checked: {now}",
    "",
]
for c in checks:
    mark="PASS" if c["ok"] else ("FAIL" if c["severity"]=="failure" else "WARN")
    report_lines.append(f"{mark}  {c['name']}: {c['detail']}")
report_lines += [
    "",
    "If you need ChatGPT to troubleshoot, run:",
    "cd ~/bmc-luminary-site/portfolio/automation && python3 ./ops-watchdog.py --report",
    "",
    "Then paste the report into the BMC business conversation."
]
report="\n".join(report_lines)

if REPORT_ONLY:
    print(report)
    raise SystemExit(0 if not failures else 2)

# Alert only on state/signature changes so a persistent outage does not spam every five minutes.
changed=previous.get("signature")!=signature
recovered=previous.get("status")=="ISSUE" and status=="HEALTHY"
should_mail=changed and (status=="ISSUE" or recovered)

def send_alert(subject,body):
    host=ENV.get("SMTP_HOST","")
    port=int(ENV.get("SMTP_PORT","587") or "587")
    user=ENV.get("SMTP_USER","")
    password=ENV.get("SMTP_PASSWORD","")
    sender=ENV.get("SMTP_FROM") or user
    recipient=ENV.get("WATCHDOG_EMAIL") or sender
    starttls=(ENV.get("SMTP_STARTTLS","true").lower()=="true")
    if not all([host,user,password,sender,recipient]):
        return False,"SMTP configuration incomplete"
    msg=EmailMessage()
    msg["From"]=sender
    msg["To"]=recipient
    msg["Subject"]=subject
    msg.set_content(body)
    try:
        with smtplib.SMTP(host,port,timeout=20) as smtp:
            smtp.ehlo()
            if starttls:
                smtp.starttls(context=ssl.create_default_context())
                smtp.ehlo()
            smtp.login(user,password)
            smtp.send_message(msg)
        return True,"sent"
    except Exception as e:
        return False,str(e)

mail_result=None
if should_mail:
    subject=f"[BMC Watchdog] {'RECOVERED' if recovered else 'ACTION NEEDED'}"
    mail_result=send_alert(subject,report)

STATE_FILE.write_text(json.dumps({
    "checked_at":now,
    "status":status,
    "signature":signature,
    "mail_result":mail_result
},indent=2)+"\n")

print(report)
if mail_result:
    print("\nAlert email:",mail_result[1])
raise SystemExit(0 if not failures else 2)
