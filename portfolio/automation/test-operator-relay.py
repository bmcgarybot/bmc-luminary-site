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
COUNTS={"owner_launch_hold_active":True,"paid_orders":0,"revenue_cents":0,"samples_requested":0,
        "samples_delivered":0,"replies":0,"open_growth_exceptions":0,"staged_active":3}
REQ={"request_id":"operator-unit-20261028","action":"operator_snapshot",
     "args":{},"allow_external_actions":False}
def simulate(env=None, metrics=None, services="postgres\nops_api\nscheduler\n", docker_code=0,
             health_body='{"ok":true}', health_code=0, metrics_failure=False):
    def fake_run(cmd, **kwargs):
        if cmd[0]=="docker":
            return subprocess.CompletedProcess(cmd,docker_code,services,"")
        if cmd[0]=="curl":
            return subprocess.CompletedProcess(cmd,health_code,health_body,"")
        raise AssertionError("Unexpected external command")
    def fake_metrics(path,timeout=30):
        if metrics_failure: raise RuntimeError("private failure details")
        result=dict(COUNTS if metrics is None else metrics)
        active_env=BASE_ENV if env is None else env
        result.setdefault("outreach_switches",{key:active_env.get(key)=="true" for key in ("OUTREACH_ENABLED","BUYER_OUTREACH_ENABLED","GROWTH_OUTREACH_ENABLED")})
        return result
    with patch.dict(G,{"app_env":lambda: dict(BASE_ENV if env is None else env),
                      "run":fake_run,
                      "admin_post":fake_metrics,
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
    def test_running_api_flag_drift_not_reported_off(self):
        counts=dict(COUNTS)
        counts["outreach_switches"]={"OUTREACH_ENABLED":False,"BUYER_OUTREACH_ENABLED":False,"GROWTH_OUTREACH_ENABLED":True}
        snap=json.loads(simulate(metrics=counts)["stdout"])
        self.assertIsNone(snap["outreach_switches"]["GROWTH_OUTREACH_ENABLED"])
    def test_old_api_without_flags_stays_unknown(self):
        counts=dict(COUNTS);counts["outreach_switches"]={}
        snap=json.loads(simulate(metrics=counts)["stdout"])
        self.assertTrue(all(value is None for value in snap["outreach_switches"].values()))
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
    def test_api_hold_missing_or_released_not_confirmed_active(self):
        for value in (None,False):
            with self.subTest(value=value):
                counts=dict(COUNTS);counts["owner_launch_hold_active"]=value
                snap=json.loads(simulate(metrics=counts)["stdout"])
                self.assertFalse(snap["owner_launch_hold_active"])
    def test_api_health_requires_successful_valid_response(self):
        for body,code in (("not JSON",0),('{"ok":false}',0),('[]',0),('{"ok":true}',22)):
            with self.subTest(body=body,code=code):
                snap=json.loads(simulate(health_body=body,health_code=code)["stdout"])
                self.assertFalse(snap["api_healthy"])
                self.assertFalse(snap["runtime_healthy"])
    def test_scheduler_missing_or_docker_failed(self):
        for services,code in (("postgres\nops_api\n",0),("postgres\nops_api\nscheduler\n",1)):
            with self.subTest(services=services,code=code):
                snap=json.loads(simulate(services=services,docker_code=code)["stdout"])
                self.assertFalse(snap["scheduler_healthy"])
                self.assertFalse(snap["runtime_healthy"])
    def test_metrics_failure_keeps_values_unknown_and_error_sanitized(self):
        result=simulate(metrics_failure=True)
        snap=json.loads(result["stdout"])
        self.assertTrue(all(value is None for value in snap["growth"].values()))
        self.assertEqual(snap["health_error"],"Growth status unavailable")
        self.assertNotIn("private failure details",json.dumps(result))
    def test_actual_relay_output_to_console(self):
        console=runpy.run_path(str(PATH.with_name("operator-console.py")),run_name="console_integration")
        for enabled in (False,True):
            with self.subTest(enabled=enabled):
                env=dict(BASE_ENV);env["GROWTH_OUTREACH_ENABLED"]="true" if enabled else "false"
                result=simulate(env=env)
                assessed=console["assess"](console["decode_snapshot"](result))
                self.assertEqual(assessed["status"],"REVIEW" if enabled else "HEALTHY / OUTREACH OFF")
                self.assertFalse(assessed["marketing_authorized"])
if __name__=="__main__":unittest.main()
