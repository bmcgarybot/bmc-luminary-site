#!/usr/bin/env python3
"""Real chart, persistence, privacy and history-gap tests; no external services."""
import datetime as dt
import importlib.util
import json
from pathlib import Path
import tempfile
import unittest
import xml.etree.ElementTree as ET

def load(name,filename):
    spec=importlib.util.spec_from_file_location(name,Path(__file__).with_name(filename))
    value=importlib.util.module_from_spec(spec);spec.loader.exec_module(value);return value

monitor=load("monitor_dash_test","operator-monitor.py")
dashboard=load("dashboard_test","operator-dashboard.py")

def snapshot():
    return {"observed_at":dt.datetime.now(dt.timezone.utc).isoformat(),"deployed_sha":"a"*40,
            "owner_launch_hold_active":True,"runtime_healthy":True,"scheduler_healthy":True,"api_healthy":True,
            "outreach_switches":{key:False for key in monitor.console.SWITCHES},
            "growth":{key:0 for key in monitor.console.METRICS},
            "resources":{"memory_percent":29,"SMTP_PASSWORD":"NEVER-EXPORT-ME"}}

class Tests(unittest.TestCase):
    def test_history_survives_restart_but_live_status_does_not(self):
        with tempfile.TemporaryDirectory() as d:
            path=Path(d)/"private"/"history.sqlite3"
            first=monitor.Monitor(snapshot,history_path=path)
            first.refresh();first.database.close()
            second=monitor.Monitor(snapshot,history_path=path)
            view=second.read(history_hours=24)
            self.assertEqual(len(view["history"]),1)
            self.assertEqual(view["status"],"REVIEW")
            self.assertEqual(path.stat().st_mode & 0o777,0o600)
            self.assertNotIn("NEVER-EXPORT-ME",json.dumps(view))
            second.refresh()
            self.assertEqual(second.read()["status"],"HEALTHY / OUTREACH OFF")
            second.database.close()

    def test_bounded_downsampling_preserves_window_endpoints_and_gaps(self):
        start=dt.datetime.now(dt.timezone.utc)-dt.timedelta(days=3)
        rows=[]
        for index in range(2000):
            time=start+dt.timedelta(seconds=index*60+(600 if index>=1000 else 0))
            rows.append((time.timestamp(),dict(snapshot(),observed_at=time.isoformat())))
        points=monitor.history_points(rows)
        self.assertLessEqual(len(points),240)
        self.assertEqual(points[0]["observed_at"],rows[0][1]["observed_at"])
        self.assertEqual(points[-1]["observed_at"],rows[-1][1]["observed_at"])
        self.assertTrue(any(point["gap_before"] for point in points))
        chart=dashboard.chart(points,"revenue_cents",currency=True)
        ET.fromstring(chart)
        self.assertEqual(chart.count('fill="none"'),2)

    def test_empty_is_not_a_fake_graph_and_zero_is_a_real_measurement(self):
        self.assertIn("History starts here",dashboard.chart([],"revenue_cents"))
        self.assertNotIn("<svg",dashboard.chart([],"revenue_cents"))
        chart=dashboard.chart([snapshot()],"revenue_cents",currency=True)
        self.assertIn("<circle",chart)
        ET.fromstring(chart)

    def test_unknown_value_breaks_line_instead_of_inventing_continuity(self):
        now=dt.datetime.now(dt.timezone.utc)
        rows=[dict(snapshot(),observed_at=(now+dt.timedelta(minutes=i)).isoformat(),
                   growth=dict(snapshot()["growth"],revenue_cents=value),gap_before=False)
              for i,value in enumerate((100,200,None,300,400))]
        chart=dashboard.chart(rows,"revenue_cents",currency=True)
        self.assertEqual(chart.count('fill="none"'),2)

    def test_resources_unknown_and_invalid_remain_unknown(self):
        values=monitor.metrics.sanitize({"cpu_percent":float("nan"),"memory_percent":500,"disk_percent":-1,"token":"private"})
        self.assertIsNone(values["cpu_percent"])
        self.assertIsNone(values["memory_percent"])
        self.assertIsNone(values["disk_percent"])
        self.assertNotIn("private",json.dumps(values))

    def test_container_cpu_uses_per_core_scale_and_unknown_services_excluded(self):
        rows=monitor.metrics.docker_rows('\n'.join([json.dumps({"Name":"bmc-ollama-1","CPUPerc":"597.78%","MemPerc":"75.93%"}),json.dumps({"Name":"private-secret-name","CPUPerc":"5%","MemPerc":"3%"})]))
        self.assertEqual(len(rows),1)
        self.assertEqual(rows[0]["cpu_percent"],597.78)

    def test_history_does_not_expose_unapproved_payload_fields(self):
        row=dict(snapshot(),secret="PRIVATE-KEY",growth=dict(snapshot()["growth"],extra="PRIVATE-EMAIL"))
        result=monitor.history_points([(1,row)])
        self.assertNotIn("PRIVATE",json.dumps(result))
        self.assertEqual(monitor.history_points([(1,'["bad"]'),(2,'not json')]),[])

    def test_dashboard_is_script_free_responsive_and_truthful(self):
        state=monitor.Monitor(snapshot);state.refresh()
        view=state.read(history_hours=24)
        view["issues"].append('<img src=x onerror="bad">')
        html=dashboard.render(view)
        self.assertNotIn("<script",html)
        self.assertNotIn("<img",html)
        self.assertIn("&lt;img",html)
        self.assertIn("@media(max-width:700px)",html)
        self.assertIn("not verified inbox deliveries",html)
        self.assertIn('href="?range=168"',html)
        self.assertIn("Never authorizes marketing",html)

    def test_failed_collection_does_not_invent_new_history(self):
        state=monitor.Monitor(snapshot);state.refresh()
        def failure():raise RuntimeError("failure")
        state.collector=failure;state.refresh()
        view=state.read(history_hours=24)
        self.assertEqual(len(view["history"]),1)
        self.assertEqual(view["status"],"REVIEW")

if __name__=="__main__":unittest.main()
