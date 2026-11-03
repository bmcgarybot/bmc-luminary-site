"""Bounded recovery and durable alert decisions, independent of infrastructure."""
import hashlib
import json

SERVICES={"Ops API":"ops_api","n8n":"n8n","SearXNG":"searxng",
          "Cloudflare ingress":"cloudflared","Webhook gateway":"webhook_proxy",
          "Local AI / Ollama":"ollama","Scheduler":"scheduler",
          "Worker freshness /api/process-replies":"scheduler","Worker freshness /api/agent-cycle":"scheduler"}


def repair_plan(checks,state,now,enabled):
    if not enabled:return []
    if any(not c["ok"] and c["name"] in ("Postgres","Disk space") for c in checks):return []
    history=[r for r in state.get("repairs",[]) if r.get("at",0)>now-3600]
    result=[]
    for check in checks:
        service=SERVICES.get(check["name"])
        if check["ok"] or not service or service in result:continue
        attempts=[r for r in history if r.get("service")==service]
        if len(attempts)>=2 or (attempts and now-attempts[-1]["at"]<900):continue
        result.append(service)
    return result[:1]


def alert_decision(checks,state,now):
    # Use stable issue identities, not volatile counts, timestamps or free space.
    problems=sorted(c["name"] for c in checks if not c["ok"])
    signature=hashlib.sha256(json.dumps(problems).encode()).hexdigest()
    prior=state.get("last_notified_signature")
    last=state.get("last_mail_attempt_at",0)
    unchanged=signature==prior
    reminder=bool(problems and now-state.get("last_notified_at",0)>=86400)
    wants=(bool(problems) and (not unchanged or reminder)) or (not problems and state.get("last_notified_had_issue") is True)
    if state.get("pending_notice"):wants=True
    # SMTP failure retries after 15 minutes; uncertain outcome does not flood.
    return {"send":bool(wants and now-last>=900),"signature":signature,
            "has_issue":bool(problems),"problems":problems}


def record_alert(state,decision,now,accepted):
    state["last_mail_attempt_at"]=now
    state["pending_notice"]=not accepted
    if accepted:
        state.update(last_notified_signature=decision["signature"],
                     last_notified_at=now,last_notified_had_issue=decision["has_issue"])
