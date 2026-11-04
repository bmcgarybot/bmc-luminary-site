#!/usr/bin/env python3
"""Execute the real Growth worker and delivery claim with fake SMTP/DB only."""
import ast
import sys
import asyncio
from datetime import datetime, timedelta, timezone
from pathlib import Path
import runpy
from types import SimpleNamespace
import unittest

HERE = Path(__file__).resolve().parent
sys.path.insert(0,str(HERE/'api'))
durable = runpy.run_path(str(HERE / 'test-paid-mail-once.py'))
Context = durable['Context']

class BusinessConnection:
    def __init__(self):
        self.writes = []
        self.row = dict(outreach_id='fixture-growth', sequence_step=0, status='queued',
            entity_id='fixture-target', target_id='fixture-target', wave='fixture', business_name='Fixture Co',
            public_email='fixture@example.invalid', market='Prescott', service_key='commercial_cleaning',
            experiment_cell='fixture-cell')
    async def fetchval(self, *args): return 0
    async def fetch(self, *args): return [dict(self.row)]
    async def execute(self, *args): self.writes.append(args)

class Tests(durable['Tests']):
    # Inherit the seven durable ledger tests, then test the worker integration.
    def setUp(self):
        super().setUp()
        self.business = BusinessConnection()
        self.copy = 'Fixture body'
        async def event(*args): pass
        def render(row, step):
            return row['service_key'], 'Fixture subject', self.copy, '<p>'+self.copy+'</p>', 'https://example.invalid'
        self.ns['app'].state.pool = SimpleNamespace(acquire=lambda: Context(self.business))
        self.ns.update(OWNER_LAUNCH_HOLD=False, GROWTH_OUTREACH_ENABLED=True,
            BUSINESS_POSTAL_ADDRESS='FIXTURE ONLY', IMAP_ENABLED=True, IMAP_HOST='fixture',
            IMAP_USER='fixture', IMAP_PASSWORD='fixture', ADMIN_KEY='fixture',
            Header=lambda **kwargs: None, GROWTH_OUTREACH_DAILY_LIMIT=10,
            GROWTH_OUTREACH_WAVE='fixture', GROWTH_OUTREACH_TARGET_IDS=('fixture-target',), growth_outreach_message=render,
            datetime=datetime, timezone=timezone, timedelta=timedelta, event=event)
        tree = ast.parse((HERE/'api/app.py').read_text())
        worker = next(n for n in tree.body if isinstance(n, ast.AsyncFunctionDef) and n.name=='process_growth_outreach')
        worker.decorator_list = []
        exec(compile(ast.Module(body=[worker], type_ignores=[]), 'production_growth_worker', 'exec'), self.ns)
    async def work(self): return await self.ns['process_growth_outreach']('fixture')
    def assert_review(self):
        self.assertTrue(any("status='review',owner_review_required=true" in q[0] for q in self.business.writes))
        self.assertTrue(any("'growth_outreach_delivery_review','critical'" in q[0] for q in self.business.writes))
        self.assertFalse(any('set sequence_step' in q[0] for q in self.business.writes))
    async def test_worker_business_rollback_replay_does_not_resend(self):
        # The business row deliberately stays queued, as after a rollback.
        self.assertEqual((await self.work())['sent'], 1)
        self.assertEqual((await self.work())['sent'], 1)
        self.assertEqual(self.calls, 1)
        self.assertEqual(set(self.conn.records), {'growth-outreach:fixture-growth:1'})
    async def test_worker_uncertain_delivery_holds_without_sequence_reset(self):
        self.smtp_ok = False
        self.assertEqual((await self.work())['sent'], 0)
        self.assertEqual((await self.work())['sent'], 0)
        self.assertEqual(self.calls, 1)
        self.assert_review()
    async def test_worker_crash_after_smtp_claim_is_not_retried(self):
        self.conn.fail_update = True
        with self.assertRaises(RuntimeError): await self.work()
        self.conn.fail_update = False
        self.business.writes.clear()
        self.assertEqual((await self.work())['sent'], 0)
        self.assertEqual(self.calls, 1)
        self.assert_review()
    async def test_worker_changed_copy_requires_review(self):
        await self.work()
        self.business.writes.clear()
        self.copy = 'Changed copy'
        self.assertEqual((await self.work())['sent'], 0)
        self.assertEqual(self.calls, 1)
        self.assert_review()
    async def test_worker_concurrency_submits_once(self):
        await asyncio.gather(self.work(), self.work())
        self.assertEqual(self.calls, 1)
    async def test_worker_followup_has_separate_stable_key(self):
        await self.work()
        self.business.row.update(status='sent', sequence_step=1)
        await self.work()
        self.assertEqual(self.calls, 2)
        self.assertEqual(set(self.conn.records), {'growth-outreach:fixture-growth:1', 'growth-outreach:fixture-growth:2'})
    async def test_missing_exact_scope_blocks_even_with_switch_on(self):
        self.ns['GROWTH_OUTREACH_TARGET_IDS']=()
        self.assertEqual((await self.work())['sent'],0)
        self.assertEqual(self.calls,0)
    async def test_older_target_outside_scope_never_sends(self):
        self.ns['GROWTH_OUTREACH_TARGET_IDS']=('different-reviewed-target',)
        self.assertEqual((await self.work())['sent'],0)
        self.assertEqual(self.calls,0)
    async def test_worker_hold_does_not_create_delivery_claim(self):
        self.ns['OWNER_LAUNCH_HOLD'] = True
        self.assertEqual((await self.work())['sent'], 0)
        self.assertEqual(self.calls, 0)
        self.assertEqual(self.conn.records, {})
    async def test_worker_unreviewed_copy_enters_review_without_smtp(self):
        def unreviewed(row,step):
            raise ValueError('Growth target needs a source-backed, reviewed opener')
        self.ns['growth_outreach_message']=unreviewed
        self.assertEqual((await self.work())['sent'],0)
        self.assertEqual(self.calls,0)
        self.assertTrue(any("status='review',owner_review_required=true" in q[0] for q in self.business.writes))
        self.assertTrue(any("'growth_copy_review','high'" in q[0] for q in self.business.writes))

if __name__ == '__main__': unittest.main()
