#!/usr/bin/env python3
"""Unit coverage for relay operator_snapshot without network, Docker or customer actions."""
import json
import pathlib
import runpy
import subprocess
import unittest
from unittest.mock import patch

PATH=pathlib.Path(__file__).with_name("vps-gitops-relay.py")
namespace=runpy.run_path(str(PATH),run_name="operator_snapshot_test")
execute=namespace["execute"]
G=execute.__globals__
SHA="a"*40
BASE_ENV={"OUTREACH_ENABLED":"false","BUYER_OUTREACH_ENABLED":"false",
          "GROWTH_OUTREACH_ENABLED":"false","BMC_OWNER_LAUNCH_HOLD":"true"}
COUNTS={"paid_orders":0,"revenue_cents":0,"samples_requested":0,
        "samples_delivered":0,"replies":0,"open_growth_exceptions":0,"staged_active":3}
REQ={"request_id":"operator-unit-20261028","action":"operator_snapshot",
     "args":{},"allow_external_actions":False}
def simulate(env=None, metrics=None):
    def fake_run(cmd, **kwargs):
        if cmd[0]=="docker":
            return subprocess.CompletedProcess(cmd,0,"postgres\nops_api\nscheduler\n","")
        if cmd[0]=="curl":
            return subprocess.CompletedProcess(cmd,0,'{"ok":true}',"")
        raise AssertionError("Unexpected external command")
    with patch.dict(G,{"app_env":lambda: dict(BASE_ENV if env is None else env),
                      "run":fake_run,
                      "admin_post":lambda path,timeout=30:dict(COUNTS if metrics is None else metrics),
                      "current_sha":lambda:SHA,
                      "current_branch":lambda:"master",
                      "redact":lambda s:s}):
        return execute(dict(REQ))
class SnapshotTests(unittest.TestCase):
    def test_clean_snapshot(self):
        r=simulate()
        self.assertEqual(r["status"],"success")
        snapshot=json.loads(r["stdout"])
        self.assertTrue(snapshot["runtime_healthy"])
        self.assertTrue(snapshot["owner_launch_hold_active"])
        self.assertIs(snapshot["outreach_switches"]["GROWTH_OUTREACH_ENABLED"],False)
        self.assertEqual(snapshot["growth"]["staged_active"],3)
    def test_missing_outbound_var_not_assumed_off(self):
        env=dict(BASE_ENV);del env["OUTREACH_ENABLED"]
        snap=json.loads(simulate(env=env)["stdout"])
        self.assertIsNone(snap["outreach_switches"]["OUTREACH_ENABLED"])
    def test_enabled_campaign_never_reported_off(self):
        for key in ("OUTREACH_ENABLED","BUYER_OUTREACH_ENABLED","GROWTH_OUTREACH_ENABLED"):
            with self.subTest(key=key):
                env=dict(BASE_ENV);env[key]="true"
                snap=json.loads(simulate(env=env)["stdout"])
                self.assertIs(snap["outreach_switches"][key],True)
    def test_invalid_campaign_flag_stays_unknown(self):
        env=dict(BASE_ENV);env["GROWTH_OUTREACH_ENABLED"]="invalid"
        snap=json.loads(simulate(env=env)["stdout"])
        self.assertIsNone(snap["outreach_switches"]["GROWTH_OUTREACH_ENABLED"])
    def test_unknown_metrics_not_misreported_zero(self):
        counts=dict(COUNTS);del counts["revenue_cents"]
        snap=json.loads(simulate(metrics=counts)["stdout"])
        self.assertIsNone(snap["growth"]["revenue_cents"])
    def test_no_secret_exposure(self):
        env=dict(BASE_ENV);env["SMTP_PASSWORD"]="PRIVATE-MAIL-SECRET"
        result=simulate(env=env)
        self.assertNotIn("PRIVATE-MAIL-SECRET",json.dumps(result))
    def test_owner_hold_false_detected(self):
        env=dict(BASE_ENV);env["BMC_OWNER_LAUNCH_HOLD"]="false"
        snap=json.loads(simulate(env=env)["stdout"])
        self.assertFalse(snap["owner_launch_hold_active"])
if __name__=="__main__":unittest.main()
