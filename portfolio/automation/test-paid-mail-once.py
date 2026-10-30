#!/usr/bin/env python3
"""Paid SMTP replay/ambiguity tests execute the production durable claim helper."""
import ast
import asyncio
import hashlib
import json
from pathlib import Path
from types import SimpleNamespace
import unittest

class Context:
    def __init__(self,value):self.value=value
    async def __aenter__(self):return self.value
    async def __aexit__(self,*args):return False
class Connection:
    def __init__(self):self.records={};self.fail_update=False
    async def fetchval(self,sql,key,fingerprint):
        if key in self.records:return None
        self.records[key]=dict(payload_sha256=fingerprint,status="attempting");return key
    async def fetchrow(self,sql,key):return self.records.get(key)
    async def execute(self,sql,key,status):
        if self.fail_update:raise RuntimeError("Database lost after SMTP")
        self.records[key]["status"]=status
class Tests(unittest.IsolatedAsyncioTestCase):
    def setUp(self):
        self.conn=Connection();self.calls=0;self.smtp_ok=True;self.crash=False
        async def mail(*args):
            self.calls+=1
            await asyncio.sleep(0)
            if self.crash:raise RuntimeError("Process lost during SMTP")
            return self.smtp_ok
        source=ast.parse(Path(__file__).with_name("api").joinpath("app.py").read_text())
        node=next(n for n in source.body if isinstance(n,ast.AsyncFunctionDef) and n.name=="send_mail_once")
        self.ns=dict(SMTP_DRY_RUN=False,hashlib=hashlib,json=json,send_mail=mail,
            app=SimpleNamespace(state=SimpleNamespace(delivery_pool=SimpleNamespace(acquire=lambda:Context(self.conn)))))
        exec(compile(ast.Module(body=[node],type_ignores=[]),"production_paid_mail_once","exec"),self.ns)
    async def send(self,body="Fixture",attachment=b"fixture"):
        return await self.ns["send_mail_once"]("growth-order:fixture","buyer@example.test","Fixture",body,
            "<p>Fixture</p>",[("fixture.csv",attachment,"text","csv")])
    async def test_submitted_replay_is_success_without_resending(self):
        self.assertTrue(await self.send());self.assertTrue(await self.send())
        self.assertEqual(self.calls,1)
    async def test_concurrent_attempts_submit_at_most_once(self):
        await asyncio.gather(self.send(),self.send())
        self.assertEqual(self.calls,1)
    async def test_uncertain_submission_never_retries_automatically(self):
        self.smtp_ok=False
        self.assertFalse(await self.send());self.assertFalse(await self.send())
        self.assertEqual(self.calls,1)
        self.assertEqual(self.conn.records["growth-order:fixture"]["status"],"uncertain")
    async def test_process_failure_preserves_attempting_claim(self):
        self.crash=True
        with self.assertRaises(RuntimeError):await self.send()
        self.crash=False
        self.assertFalse(await self.send());self.assertEqual(self.calls,1)
    async def test_database_failure_after_smtp_does_not_resend(self):
        self.conn.fail_update=True
        with self.assertRaises(RuntimeError):await self.send()
        self.conn.fail_update=False
        self.assertFalse(await self.send());self.assertEqual(self.calls,1)
    async def test_changed_body_or_attachment_requires_review(self):
        self.assertTrue(await self.send())
        self.assertFalse(await self.send(body="Changed"))
        self.assertFalse(await self.send(attachment=b"changed"))
        self.assertEqual(self.calls,1)
    async def test_dry_run_leaves_no_claims(self):
        self.ns["SMTP_DRY_RUN"]=True
        self.assertTrue(await self.send());self.assertEqual(self.conn.records,{})
if __name__=="__main__":unittest.main()
