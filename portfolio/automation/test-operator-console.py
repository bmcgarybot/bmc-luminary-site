#!/usr/bin/env python3
"""Safe operator-console regression tests. No network or VPS access."""
import datetime as dt
import importlib.util
import pathlib
import unittest

p=pathlib.Path(__file__).with_name("operator-console.py")
spec=importlib.util.spec_from_file_location("operator_console",p)
console=importlib.util.module_from_spec(spec)
spec.loader.exec_module(console)
NOW=dt.datetime(2026,10,28,19,0,tzinfo=dt.timezone.utc)
def fixture():
    return {"observed_at":"2026-10-28T18:45:00Z","deployed_sha":"a"*40,
      "runtime_healthy":True,"scheduler_healthy":True,"api_healthy":True,
      "owner_launch_hold_active":True,
      "outreach_switches":{k:False for k in console.SWITCHES},
      "growth":{k:0 for k in console.METRICS}}
class Tests(unittest.TestCase):
    def test_clean_snapshot(self):
        r=console.assess(fixture(),NOW)
        self.assertEqual(r["status"],"HEALTHY / OUTREACH OFF")
        self.assertFalse(r["marketing_authorized"])
    def test_launch_hold_must_be_active(self):
        x=fixture();x["owner_launch_hold_active"]=False
        self.assertEqual(console.assess(x,NOW)["status"],"REVIEW")
    def test_stale(self):
        x=fixture();x["observed_at"]="2026-10-27T18:45:00Z"
        self.assertIn("Snapshot stale",console.assess(x,NOW)["issues"])
    def test_missing_outreach_flag(self):
        x=fixture();del x["outreach_switches"]["GROWTH_OUTREACH_ENABLED"]
        self.assertEqual(console.assess(x,NOW)["status"],"REVIEW")
    def test_enabled_outreach_flag(self):
        x=fixture();x["outreach_switches"]["BUYER_OUTREACH_ENABLED"]=True
        self.assertEqual(console.assess(x,NOW)["status"],"REVIEW")
    def test_unknown_revenue_is_not_zero(self):
        x=fixture();del x["growth"]["revenue_cents"]
        self.assertIsNone(console.assess(x,NOW)["growth"]["revenue_cents"])
    def test_exceptions_alert(self):
        x=fixture();x["growth"]["open_growth_exceptions"]=3
        self.assertIn("Open Growth exceptions",console.assess(x,NOW)["issues"])
    def test_relay_snapshot_valid(self):
        import json
        snap=fixture()
        envelope={"action":"operator_snapshot","status":"success","exit_code":0,
          "allow_external_actions":False,"git_commit_after":"a"*40,
          "stdout":json.dumps(snap)}
        self.assertEqual(console.assess(console.decode_snapshot(envelope),NOW)["status"],"HEALTHY / OUTREACH OFF")
    def test_reject_mismatched_deployment(self):
        import json
        envelope={"action":"operator_snapshot","status":"success","exit_code":0,
          "allow_external_actions":False,"git_commit_after":"b"*40,
          "stdout":json.dumps(fixture())}
        with self.assertRaises(ValueError):console.decode_snapshot(envelope)
    def test_reject_failed_relay_action(self):
        with self.assertRaises(ValueError):
            console.decode_snapshot({"action":"growth_launch_enable","status":"success","exit_code":0})

    def test_html_escapes_untrusted_data(self):
        x=fixture();x["observed_at"]="<script>alert('unsafe')</script>"
        rendered=console.render_html(console.assess(x,NOW))
        self.assertNotIn("<script>",rendered)
        self.assertIn("&lt;script&gt;",rendered)
    def test_html_marketing_never_authorized(self):
        rendered=console.render_html(console.assess(fixture(),NOW))
        self.assertIn("Never authorizes marketing",rendered)
    def test_secret_ignored(self):
        x=fixture();x["SMTP_PASSWORD"]="dont-publish-this"
        self.assertNotIn("dont-publish-this",str(console.assess(x,NOW)))
if __name__=="__main__":unittest.main()
