#!/usr/bin/env python3
"""Private loopback monitor. Reads local relay metrics; never uploads or sends mail."""
import argparse
import http.server
import importlib.util
import json
import threading
from pathlib import Path

ROOT = Path(__file__).resolve().parent


def module(name, filename):
    spec = importlib.util.spec_from_file_location(name, ROOT / filename)
    loaded = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(loaded)
    return loaded


console = module("operator_console", "operator-console.py")


def collect():
    # execute() is called only with this constant read-only action. It does not
    # poll GitHub, upload results, consume pending requests or invoke mail paths.
    relay = module("operator_local_relay", "vps-gitops-relay.py")
    return relay.execute({"version": 1, "request_id": "private-operator-local",
                          "action": "operator_snapshot", "args": {},
                          "allow_external_actions": False})


class Monitor:
    def __init__(self, collector=collect):
        self.collector = collector
        self.lock = threading.Lock()
        self.snapshot = None
        self.collection_failed = True

    def refresh(self):
        try:
            candidate = console.decode_snapshot(self.collector())
            # Retain only the assessment whitelist, never raw API/env data.
            result = console.assess(candidate)
            sanitized = {key: candidate.get(key) for key in
                         ("observed_at", "runtime_healthy", "scheduler_healthy", "api_healthy")}
            for key in ("deployed_sha", "owner_launch_hold_active", "outreach_switches", "growth"):
                sanitized[key] = result[key]
        except Exception:
            with self.lock:
                self.collection_failed = True
            return False
        with self.lock:
            self.snapshot = sanitized
            self.collection_failed = False
        return True

    def read(self):
        with self.lock:
            saved = self.snapshot
            failed = self.collection_failed
        # Reassess age on every HTTP read, even if the collector has stopped.
        if saved is None:
            result = console.assess({}, max_age_minutes=5)
        else:
            result = console.assess(saved, max_age_minutes=5)
        if failed:
            result["issues"].append("Snapshot collection failed; last known data only")
            result["status"] = "REVIEW"
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
            if self.path not in ("/", "/status.json"):
                self.send_error(404)
                return
            result = monitor.read()
            if self.path == "/status.json":
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
    args = parser.parse_args()
    monitor = Monitor()
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
