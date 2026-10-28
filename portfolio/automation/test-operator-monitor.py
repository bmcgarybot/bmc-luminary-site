#!/usr/bin/env python3
"""Private monitor tests: synthetic collectors and loopback HTTP only."""
import datetime as dt
import http.client
import http.server
import importlib.util
import json
from pathlib import Path
import threading
import unittest
from unittest.mock import patch

spec = importlib.util.spec_from_file_location("monitor", Path(__file__).with_name("operator-monitor.py"))
monitor = importlib.util.module_from_spec(spec)
spec.loader.exec_module(monitor)


def snapshot():
    return {"observed_at": dt.datetime.now(dt.timezone.utc).isoformat(),
            "deployed_sha": "a" * 40, "owner_launch_hold_active": True,
            "runtime_healthy": True, "scheduler_healthy": True, "api_healthy": True,
            "outreach_switches": {key: False for key in monitor.console.SWITCHES},
            "growth": {key: 0 for key in monitor.console.METRICS},
            "SMTP_PASSWORD": "private-must-not-escape"}


class Tests(unittest.TestCase):
    def test_startup_unknown_not_green(self):
        self.assertEqual(monitor.Monitor().read()["status"], "REVIEW")

    def test_success_and_secret_filter(self):
        state = monitor.Monitor(snapshot)
        self.assertTrue(state.refresh())
        self.assertEqual(state.read()["status"], "HEALTHY / OUTREACH OFF")
        self.assertNotIn("private-must-not-escape", json.dumps(state.snapshot))

    def test_failure_retains_last_metrics_but_requires_review(self):
        state = monitor.Monitor(snapshot)
        state.refresh()
        def failed():
            raise RuntimeError("private-error-details")
        state.collector = failed
        self.assertFalse(state.refresh())
        result = state.read()
        self.assertEqual(result["status"], "REVIEW")
        self.assertEqual(result["growth"]["paid_orders"], 0)
        self.assertNotIn("private-error-details", json.dumps(result))
        state.collector = snapshot
        state.refresh()
        self.assertEqual(state.read()["status"], "HEALTHY / OUTREACH OFF")

    def test_stopped_collector_becomes_stale(self):
        state = monitor.Monitor(snapshot)
        state.refresh()
        state.snapshot["observed_at"] = (dt.datetime.now(dt.timezone.utc) - dt.timedelta(minutes=6)).isoformat()
        self.assertIn("Snapshot stale", state.read()["issues"])

    def test_runtime_failure_survives_storage(self):
        snap = snapshot(); snap["scheduler_healthy"] = False
        state = monitor.Monitor(lambda: snap)
        state.refresh()
        self.assertEqual(state.read()["status"], "REVIEW")

    def test_collector_calls_only_constant_read_only_action(self):
        class Relay:
            def execute(self, req):
                self.request = req
                return {"sentinel": True}
        relay = Relay()
        with patch.object(monitor, "module", return_value=relay):
            self.assertEqual(monitor.collect(), {"sentinel": True})
        self.assertEqual(relay.request["action"], "operator_snapshot")
        self.assertIs(relay.request["allow_external_actions"], False)

    def test_http_private_routes_and_read_only_methods(self):
        state = monitor.Monitor(snapshot); state.refresh()
        server = http.server.ThreadingHTTPServer(("127.0.0.1", 0), monitor.handler_for(state))
        thread = threading.Thread(target=server.serve_forever, daemon=True)
        thread.start()
        try:
            def request(path, method="GET", host=None):
                conn = http.client.HTTPConnection("127.0.0.1", server.server_port, timeout=3)
                headers = {"Host": host} if host else {}
                conn.request(method, path, headers=headers)
                response = conn.getresponse()
                result = (response.status, dict(response.getheaders()), response.read())
                conn.close()
                return result
            code, headers, body = request("/status.json")
            self.assertEqual(code, 200)
            self.assertEqual(headers["Cache-Control"], "no-store")
            self.assertFalse(json.loads(body)["marketing_authorized"])
            self.assertNotIn(b"private-must-not-escape", body)
            code, headers, body = request("/")
            self.assertEqual(code, 200)
            self.assertIn(b"BMC Mission Control", body)
            self.assertIn("frame-ancestors 'none'", headers["Content-Security-Policy"])
            self.assertEqual(request("/", host="attacker.example")[0], 403)
            for path in ("/.env", "/api/admin", "/../.env", "/status.json?token=secret"):
                self.assertEqual(request(path)[0], 404)
            self.assertEqual(request("/", method="POST")[0], 501)
            self.assertEqual(request("/", method="DELETE")[0], 501)
        finally:
            server.shutdown(); server.server_close(); thread.join(timeout=3)


if __name__ == "__main__":
    unittest.main()
