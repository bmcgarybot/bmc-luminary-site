"""Whitelisted host/container resource measurements. No configuration exports."""
import math
import os
import re
import shutil
from pathlib import Path

NUMBERS=("cpu_percent","memory_percent","memory_total_bytes","memory_available_bytes",
         "disk_percent","disk_free_bytes","disk_total_bytes","load_1m","cpu_count")
SERVICES={"ollama":"Local AI","ops_api":"Operations API","postgres":"Database",
          "scheduler":"Scheduler","research_refresher":"Research","n8n":"Workflows",
          "searxng":"Search","webhook_proxy":"Gateway","cloudflared":"Tunnel"}


def number(value):
    return value if type(value) in (int,float) and math.isfinite(value) and value>=0 else None


def sanitize(raw):
    raw=raw if isinstance(raw,dict) else {}
    result={key:number(raw.get(key)) for key in NUMBERS}
    for key in ("cpu_percent","memory_percent","disk_percent"):
        if result[key] is not None and result[key]>100: result[key]=None
    result["containers"]=[]
    rows=raw.get("containers",[])
    for row in rows[:12] if isinstance(rows,list) else []:
        if not isinstance(row,dict) or row.get("service") not in SERVICES: continue
        result["containers"].append({"service":row["service"],
            "cpu_percent":number(row.get("cpu_percent")),"memory_percent":number(row.get("memory_percent"))})
    return result


def host():
    raw={"cpu_count":os.cpu_count()}
    try:
        mem={line.split(":")[0]:int(line.split()[1])*1024 for line in Path("/proc/meminfo").read_text().splitlines()}
        total=mem["MemTotal"]; available=mem["MemAvailable"]
        raw.update(memory_total_bytes=total,memory_available_bytes=available,
                   memory_percent=100*(total-available)/total)
    except (OSError,KeyError,ValueError,ZeroDivisionError): pass
    try:
        disk=shutil.disk_usage("/")
        raw.update(disk_total_bytes=disk.total,disk_free_bytes=disk.free,disk_percent=100*disk.used/disk.total)
    except (OSError,ZeroDivisionError): pass
    try: raw["load_1m"]=os.getloadavg()[0]
    except OSError: pass
    return sanitize(raw)


def cpu_ticks():
    try:
        values=[int(value) for value in Path("/proc/stat").read_text().splitlines()[0].split()[1:9]]
        return (sum(values),values[3]+values[4])
    except (OSError,ValueError,IndexError): return None


def docker_rows(text):
    import json
    rows=[]
    for line in text.splitlines()[:40]:
        try:
            item=json.loads(line)
            name=item.get("Name","")
            service=next((key for key in SERVICES if name=="bmc-"+key+"-1"),None)
            if service:
                rows.append({"service":service,"cpu_percent":float(item["CPUPerc"].rstrip("%")),
                             "memory_percent":float(item["MemPerc"].rstrip("%"))})
        except (ValueError,KeyError,TypeError,AttributeError): continue
    return sanitize({"containers":rows})["containers"]
