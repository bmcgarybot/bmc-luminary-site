#!/usr/bin/env python3
"""Read-only BMC console. Accept a sanitized JSON export from the VPS relay."""
import argparse
import datetime as dt
import json
import pathlib
import sys

SWITCHES=("OUTREACH_ENABLED","BUYER_OUTREACH_ENABLED","GROWTH_OUTREACH_ENABLED")
METRICS=("paid_orders","revenue_cents","samples_requested","samples_delivered","replies","open_growth_exceptions","staged_active")

def decode_snapshot(payload):
    """Accept standalone sanitized snapshot or a verified relay result envelope."""
    if not isinstance(payload,dict):
        raise ValueError("Expected JSON object")
    if "action" not in payload:
        return payload
    if payload.get("action")!="operator_snapshot" or payload.get("status")!="success" or payload.get("exit_code")!=0:
        raise ValueError("Not a successful operator_snapshot relay result")
    if payload.get("allow_external_actions") is not False:
        raise ValueError("External actions were not disabled")
    result=json.loads(payload.get("stdout") or "null")
    if not isinstance(result,dict):
        raise ValueError("Invalid snapshot payload")
    if result.get("deployed_sha")!=payload.get("git_commit_after"):
        raise ValueError("Relay reported mismatched deployment SHA")
    return result

def assess(s, now=None, max_age_minutes=90):
    if not isinstance(s,dict):
        raise ValueError("Snapshot must be a JSON object")
    now=now or dt.datetime.now(dt.timezone.utc)
    issues=[]
    try:
        timestamp=dt.datetime.fromisoformat(s["observed_at"].replace("Z","+00:00"))
        if timestamp.tzinfo is None:
            raise ValueError("Timezone required")
        age=(now-timestamp.astimezone(dt.timezone.utc)).total_seconds()/60
        if age>max_age_minutes: issues.append("Snapshot stale")
        if age< -5: issues.append("Timestamp in future")
    except (KeyError,TypeError,ValueError,AttributeError):
        age=None
        issues.append("Timestamp missing or invalid")
    switches=s.get("outreach_switches")
    if not isinstance(switches,dict): switches={}
    for key in SWITCHES:
        if switches.get(key) is not False:
            issues.append(key+" is NOT confirmed OFF")
    for key in ("runtime_healthy","scheduler_healthy","api_healthy"):
        if s.get(key) is not True: issues.append(key+" not confirmed healthy")
    sha=s.get("deployed_sha")
    if not isinstance(sha,str) or len(sha)!=40:
        issues.append("Deployed SHA unavailable")
        sha=None
    values=s.get("growth")
    if not isinstance(values,dict): values={}
    metrics={k:values.get(k) if type(values.get(k)) is int and values[k]>=0 else None for k in METRICS}
    if any(v is None for v in metrics.values()):
        issues.append("Some metrics unavailable")
    if metrics["open_growth_exceptions"] not in (None,0):
        issues.append("Open Growth exceptions")
    return {"status":"REVIEW" if issues else "HEALTHY / OUTREACH OFF",
      "observed_at":s.get("observed_at"),"age_minutes":round(age,1) if age is not None else None,
      "deployed_sha":sha,"outreach_switches":{k:switches.get(k) for k in SWITCHES},
      "growth":metrics,"issues":issues,"marketing_authorized":False}

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("snapshot",type=pathlib.Path)
    p.add_argument("--json",action="store_true")
    args=p.parse_args()
    try:
        if args.snapshot.stat().st_size>1048576: raise ValueError("File too large")
        result=assess(decode_snapshot(json.loads(args.snapshot.read_text(encoding="utf-8"))))
    except (OSError,ValueError,TypeError):
        print("Cannot read valid snapshot",file=sys.stderr)
        return 2
    if args.json:
        print(json.dumps(result,indent=2))
    else:
        print("BMC SERVICE NETWORK | READ-ONLY")
        print("Status:",result["status"])
        print("Observed:",result["observed_at"],"Age (min):",result["age_minutes"])
        print("Deployed:",result["deployed_sha"])
        for k,v in result["outreach_switches"].items():
            print(k+":", "OFF" if v is False else "NOT CONFIRMED OFF")
        for k,v in result["growth"].items():
            print(k+":",v if v is not None else "unavailable")
        for issue in result["issues"]: print("CHECK:",issue)
        print("Marketing authorization: NEVER granted by this console")
    return 1 if result["issues"] else 0

if __name__=="__main__":
    sys.exit(main())
