#!/usr/bin/env python3
"""Owner contact configuration is held, scoped, and rolls back failed restarts."""
import runpy
import tempfile
import unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch


class ContactConfigTests(unittest.TestCase):
    def test_configures_exact_owner_mailbox_under_hold(self):
        relay=runpy.run_path(str(Path(__file__).with_name("vps-gitops-relay.py")),run_name="contact_test")
        execute=relay["execute"]
        with tempfile.TemporaryDirectory() as directory:
            env=Path(directory)/".env"
            env.write_text("BMC_OWNER_LAUNCH_HOLD=true\nBUSINESS_POSTAL_ADDRESS=old\n")
            values={"BMC_OWNER_LAUNCH_HOLD":"true","BUSINESS_POSTAL_ADDRESS":"old"}
            calls=[]
            def set_values(change):
                values.update({key:value.strip('"') for key,value in change.items()})
                env.write_text("\n".join(f"{key}={change.get(key,value)}" for key,value in values.items())+"\n")
            def run(command,**kwargs):
                calls.append(command)
                return SimpleNamespace(returncode=0,stdout="",stderr="")
            with patch.dict(execute.__globals__,dict(AUTOMATION=Path(directory),ENV_FILE=".env",
                app_env=lambda:values.copy(),set_env_values=set_values,run=run,
                current_sha=lambda:"a"*40,current_branch=lambda:"master",
                assert_outreach_off=lambda:{"OUTREACH_ENABLED":"false"},
                outreach_state=lambda:{"OUTREACH_ENABLED":"false"})):
                result=execute({"request_id":"contact-fixture","action":"configure_owner_contact","args":{}})
            self.assertEqual(result["status"],"success")
            self.assertEqual(values["BUSINESS_POSTAL_ADDRESS"],"186 E. Sheldon St. #1144, Prescott, AZ 86301")
            self.assertEqual(values["SMTP_REPLY_TO"],"contact@bmcservicenetwork.com")
            self.assertEqual(values["OWNER_PREVIEW_RECIPIENT"],"contact@bmcservicenetwork.com")
            self.assertEqual(len(calls),2)
            self.assertIn('"186 E. Sheldon St. #1144, Prescott, AZ 86301"',env.read_text())

    def test_rejects_request_arguments_before_change(self):
        relay=runpy.run_path(str(Path(__file__).with_name("vps-gitops-relay.py")),run_name="contact_test")
        execute=relay["execute"]
        with patch.dict(execute.__globals__,dict(assert_outreach_off=lambda:{},current_sha=lambda:"a"*40,
            current_branch=lambda:"master")):
            with self.assertRaises(relay["RelayError"]):
                execute({"action":"configure_owner_contact","args":{"address":"other"}})

    def test_failed_restart_restores_original_file(self):
        relay=runpy.run_path(str(Path(__file__).with_name("vps-gitops-relay.py")),run_name="contact_test")
        execute=relay["execute"]
        with tempfile.TemporaryDirectory() as directory:
            env=Path(directory)/".env"
            original="BMC_OWNER_LAUNCH_HOLD=true\nBUSINESS_POSTAL_ADDRESS=old\n"
            env.write_text(original)
            def set_values(change):
                env.write_text(original+"\n".join(f"{key}={value}" for key,value in change.items())+"\n")
            with patch.dict(execute.__globals__,dict(AUTOMATION=Path(directory),ENV_FILE=".env",
                app_env=lambda:{"BMC_OWNER_LAUNCH_HOLD":"true"},set_env_values=set_values,
                run=lambda *args,**kwargs:SimpleNamespace(returncode=1,stdout="",stderr=""),
                current_sha=lambda:"a"*40,current_branch=lambda:"master",assert_outreach_off=lambda:{})):
                with self.assertRaises(relay["RelayError"]):
                    execute({"action":"configure_owner_contact","args":{}})
            self.assertEqual(env.read_text(),original)


if __name__=="__main__":
    unittest.main()
