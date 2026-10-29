#!/usr/bin/env python3
"""Private loopback monitor. Reads local relay metrics; never uploads or sends mail."""
import argparse
import http.server
import importlib.util
import json
import datetime as dt
import os
import sqlite3
import threading
import time
from urllib.parse import urlsplit, parse_qs
from pathlib import Path

ROOT = Path(__file__).resolve().parent


def module(name, filename):
    spec = importlib.util.spec_from_file_location(name, ROOT / filename)
    loaded = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(loaded)
    return loaded


console = module("operator_console", "operator-console.py")
metrics = module("operator_metrics", "operator-metrics.py")


def history_points(rows):
    """Evenly spaced real observations; preserve gaps across downsampling."""
    if not rows: return []
    size=min(240,len(rows))
    indexes=sorted({round(i*(len(rows)-1)/max(size-1,1)) for i in range(size)})
    gaps=[0]
    for index,row in enumerate(rows):
        gaps.append(gaps[-1]+int(index>0 and row[0]-rows[index-1][0]>180))
    result=[]; previous=-1
    for index in indexes:
        try:
            point=json.loads(rows[index][1]) if isinstance(rows[index][1],str) else rows[index][1]
            if not isinstance(point,dict) or not isinstance(point.get("growth"),dict): continue
            observed=point.get("observed_at")
            if not isinstance(observed,str): continue
            parsed=dt.datetime.fromisoformat(observed.replace("Z","+00:00"))
            if parsed.tzinfo is None: continue
            growth={key:value if type(value) is int and value>=0 else None for key in console.METRICS for value in [point["growth"].get(key)]}
            result.append({"observed_at":observed,"growth":growth,"resources":metrics.sanitize(point.get("resources")),
                           "gap_before":gaps[index+1]>gaps[previous+1] if previous>=0 else False})
            previous=index
        except (ValueError,TypeError): continue
    return result


def collect():
    # execute() is called only with this constant read-only action. It does not
    # poll GitHub, upload results, consume pending requests or invoke mail paths.
    relay = module("operator_local_relay", "vps-gitops-relay.py")
    envelope=relay.execute({"version": 1, "request_id": "private-operator-local",
                          "action": "operator_snapshot", "args": {},
                          "allow_external_actions": False})
    if envelope.get("status")=="success":
        snapshot=json.loads(envelope["stdout"])
        resources=metrics.host()
        try:
            stats=relay.run(["docker","stats","--no-stream","--format","{{json .}}"],timeout=10)
            if stats.returncode==0: resources["containers"]=metrics.docker_rows(stats.stdout)
        except Exception: pass
        snapshot["resources"]=resources
        envelope["stdout"]=json.dumps(snapshot)
    return envelope


class Monitor:
    def __init__(self, collector=collect, history_path=None):
        self.collector = collector
        self.lock = threading.Lock()
        self.snapshot = None
        self.collection_failed = True
        self.cpu_baseline=None
        self.history=[]
        self.database=None
        self.history_notice="History is in memory until persistent storage is installed."
        if history_path:
            try:
                path=Path(history_path)
                path.parent.mkdir(parents=True,exist_ok=True,mode=0o700)
                self.database=sqlite3.connect(path,check_same_thread=False)
                os.chmod(path,0o600)
                self.database.execute("create table if not exists readings (recorded_at real primary key, payload text not null)")
                self.database.commit()
                self.history_notice="History is saved privately for 14 days. Earlier activity is not backfilled."
            except (OSError,sqlite3.Error):
                self.database=None
                self.history_notice="History storage unavailable; showing this session only."

    def refresh(self):
        try:
            candidate = console.decode_snapshot(self.collector())
            resource_values=metrics.sanitize(candidate.get("resources"))
            ticks=metrics.cpu_ticks()
            if ticks and self.cpu_baseline:
                total=ticks[0]-self.cpu_baseline[0]; idle=ticks[1]-self.cpu_baseline[1]
                if total>0 and 0<=idle<=total: resource_values["cpu_percent"]=100*(total-idle)/total
            self.cpu_baseline=ticks
            candidate["resources"]=resource_values
            # Retain only the assessment whitelist, never raw API/env data.
            result = console.assess(candidate)
            sanitized = {key: candidate.get(key) for key in
                         ("observed_at", "runtime_healthy", "scheduler_healthy", "api_healthy")}
            for key in ("deployed_sha", "owner_launch_hold_active", "outreach_switches", "growth", "resources"):
                sanitized[key] = result[key]
        except Exception:
            with self.lock:
                self.collection_failed = True
            return False
        with self.lock:
            self.snapshot = sanitized
            self.collection_failed = False
            point={key:sanitized[key] for key in ("observed_at","growth","resources")}
            self.history.append((time.time(),point))
            self.history=[row for row in self.history if row[0]>=time.time()-14*86400][-(240 if self.database else 20160):]
            if self.database:
                try:
                    self.database.execute("insert into readings values (?,?)",(time.time(),json.dumps(point,allow_nan=False)))
                    self.database.execute("delete from readings where recorded_at<?",(time.time()-14*86400,))
                    self.database.commit()
                except (sqlite3.Error,ValueError):
                    self.history_notice="History could not be saved; current readings remain available."
        return True

    def read(self, history_hours=None):
        with self.lock:
            saved = self.snapshot
            failed = self.collection_failed
            history=[]
            if history_hours:
                cutoff=time.time()-history_hours*3600
                try:
                    if self.database:
                        # Bounded output: use evenly spaced observations including endpoints.
                        rows=self.database.execute("select recorded_at,payload from readings where recorded_at>=? order by recorded_at",(cutoff,)).fetchall()
                        history=history_points(rows)
                    else:
                        rows=[(timestamp,point) for timestamp,point in self.history if timestamp>=cutoff]
                        history=history_points(rows)
                except (sqlite3.Error,ValueError): pass
            notice=self.history_notice
        # Reassess age on every HTTP read, even if the collector has stopped.
        if saved is None:
            result = console.assess({}, max_age_minutes=5)
        else:
            result = console.assess(saved, max_age_minutes=5)
        if failed:
            result["issues"].append("Snapshot collection failed; last known data only")
            result["status"] = "REVIEW"
        if history_hours:
            result.update(history=history,history_window_hours=history_hours,history_notice=notice)
        return result


def handler_for(monitor):
    class Handler(http.server.BaseHTTPRequestHandler):
        def log_message(self, *args):
            pass  # No client data or URL query strings in logs.

        def do_GET(self):
            # Loopback binding plus exact Host validation prevents remote-host
            # access through DNS rebinding. SSH forwarding is the access layer.
            allowed = {"127.0.0.1", "localhost"}
            host = self.headers.get("Host", "").split(":")[0].lower()
            if host not in allowed:
                self.send_error(403)
                return
            url=urlsplit(self.path)
            query=parse_qs(url.query)
            if url.path not in ("/", "/status.json") or (url.path=="/status.json" and url.query) or (url.query and (set(query)!={"range"} or len(query["range"])!=1 or query["range"][0] not in ("1","6","24","168"))):
                self.send_error(404)
                return
            result = monitor.read(history_hours=int(query.get("range",["24"])[0]) if url.path=="/" else None)
            if url.path == "/status.json":
                body = json.dumps(result).encode()
                content_type = "application/json"
            else:
                body = console.render_html(result).encode()
                content_type = "text/html; charset=utf-8"
            self.send_response(200)
            self.send_header("Content-Type", content_type)
            self.send_header("Content-Length", str(len(body)))
            self.send_header("Cache-Control", "no-store")
            self.send_header("X-Content-Type-Options", "nosniff")
            self.send_header("Content-Security-Policy", "default-src 'none'; style-src 'unsafe-inline'; frame-ancestors 'none'; base-uri 'none'; form-action 'none'")
            self.send_header("Refresh", "30")
            self.end_headers()
            self.wfile.write(body)
    return Handler


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--port", type=int, default=8765)
    parser.add_argument("--interval", type=int, default=60)
    parser.add_argument("--once", action="store_true", help="Print one sanitized assessment; no server")
    parser.add_argument("--history",type=Path,help="Private SQLite history database")
    args = parser.parse_args()
    monitor = Monitor(history_path=args.history)
    if args.once:
        monitor.refresh()
        result = monitor.read()
        print(json.dumps(result, indent=2))
        return 1 if result["issues"] else 0
    if not 1 <= args.port <= 65535 or not 30 <= args.interval <= 3600:
        parser.error("Port must be 1–65535; interval must be 30–3600 seconds")
    server = http.server.ThreadingHTTPServer(("127.0.0.1", args.port), handler_for(monitor))
    stopped = threading.Event()

    def loop():
        while not stopped.is_set():
            monitor.refresh()
            stopped.wait(args.interval)

    worker = threading.Thread(target=loop, daemon=True)
    worker.start()
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        stopped.set()
        server.server_close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
