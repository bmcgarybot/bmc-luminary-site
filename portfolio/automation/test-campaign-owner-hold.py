#!/usr/bin/env python3
"""Execute real campaign functions with a trap for DB/mail; no external services."""
import ast
import asyncio
import os
from pathlib import Path
import unittest
from unittest.mock import patch

SOURCE = ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
WORKERS = ("process_outreach", "process_buyer_outreach", "process_growth_outreach", "process_growth_nurture")


class HTTPError(Exception):
    def __init__(self, status, message):
        self.status_code = status


class Trap:
    def __getattr__(self, name):
        raise AssertionError("Held campaign accessed DB or another service: " + name)


def load(hold):
    nodes = [node for node in SOURCE.body if isinstance(node, (ast.FunctionDef, ast.AsyncFunctionDef))
             and node.name in (*WORKERS, "require_admin")]
    nodes = [ast.parse(ast.unparse(node)).body[0] for node in nodes]
    for node in nodes:
        node.decorator_list = []
    ns = {"ADMIN_KEY": "unit-key", "OWNER_LAUNCH_HOLD": hold, "app": Trap(),
          "Header": lambda value=None, **kwargs: value, "HTTPException": HTTPError,
          "OUTREACH_ENABLED": True, "BUYER_OUTREACH_ENABLED": True,
          "GROWTH_OUTREACH_ENABLED": True}
    exec(compile(ast.Module(body=nodes, type_ignores=[]), "real_campaign_workers", "exec"), ns)
    return ns


class Tests(unittest.TestCase):
    def test_all_campaign_workers_block_before_database_or_mail(self):
        ns = load(True)
        for name in WORKERS:
            with self.subTest(worker=name):
                result = asyncio.run(ns[name]("unit-key"))
                self.assertTrue(result["blocked"])
                self.assertEqual(result["sent"], 0)
                self.assertFalse(result["enabled"])

    def test_authentication_still_required_under_hold(self):
        ns = load(True)
        for name in WORKERS:
            with self.subTest(worker=name):
                with self.assertRaises(HTTPError) as caught:
                    asyncio.run(ns[name]("wrong-key"))
                self.assertEqual(caught.exception.status_code, 403)

    def test_hold_defaults_on_and_invalid_value_does_not_release(self):
        assignment = next(node for node in SOURCE.body if isinstance(node, ast.Assign)
                          and any(isinstance(target, ast.Name) and target.id == "OWNER_LAUNCH_HOLD" for target in node.targets))
        for raw, expected in ((None, True), ("true", True), ("invalid", True), ("", True), ("false", False)):
            with self.subTest(raw=raw), patch.dict(os.environ, {}, clear=True):
                if raw is not None:
                    os.environ["BMC_OWNER_LAUNCH_HOLD"] = raw
                ns = {"os": os}
                exec(compile(ast.Module(body=[assignment], type_ignores=[]), "real_hold_config", "exec"), ns)
                self.assertIs(ns["OWNER_LAUNCH_HOLD"], expected)

    def test_releasing_hold_does_not_enable_disabled_campaigns(self):
        ns = load(False)
        ns.update(OUTREACH_ENABLED=False, BUYER_OUTREACH_ENABLED=False, GROWTH_OUTREACH_ENABLED=False)
        for name in WORKERS[:3]:
            with self.subTest(worker=name):
                result = asyncio.run(ns[name]("unit-key"))
                self.assertEqual(result["sent"], 0)
                self.assertFalse(result["enabled"])


if __name__ == "__main__":
    unittest.main()
