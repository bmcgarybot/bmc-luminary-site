"""Actual public quote endpoint: real HMAC, synthetic saved sample and draft callback."""
import sys,unittest,uuid
from datetime import datetime,timedelta,timezone
from pathlib import Path
from unittest.mock import AsyncMock
sys.path.insert(0,str(Path(__file__).parent/'api'))
import scoped_quote_api as quotes
from fastapi import FastAPI,HTTPException


class Tests(unittest.IsolatedAsyncioTestCase):
    def setup(self):
        self.sid=uuid.uuid4();self.sample=dict(sample_id=self.sid,email='recipient@example.test',created_at=datetime.now(timezone.utc))
        self.reads=[];self.transactions=[];self.drafts={};self.effects=[]
        outer=self
        class Conn:
            async def __aenter__(self):return self
            async def __aexit__(self,*args):pass
            def transaction(self,**kw):outer.transactions.append(kw);return self
            async def fetchrow(self,sql,*args):
                assert sql=='select * from growth_sample_requests where sample_id=$1 for update'
                outer.reads.append((sql,args))
                return outer.sample if outer.sample and args==(outer.sid,) else None
            async def execute(self,*args):raise AssertionError('Endpoint attempted a write')
        class Pool:
            def acquire(self):return Conn()
        async def draft(conn,payload):
            self.assertEqual(payload,dict(sample_id=str(self.sid),product_key='growth_pack_25'))
            key=(payload['sample_id'],payload['product_key'])
            if key not in self.drafts:
                self.drafts[key]=dict(offer_id=str(uuid.uuid4()),status='draft')
            return self.drafts[key]
        self.prepare=AsyncMock(side_effect=draft)
        self.profile=AsyncMock(return_value=dict(state='approved',pack_count=25,amount_cents=14900))
        app=FastAPI();app.state.pool=Pool();self.endpoint=quotes.install(app,'secret',self.prepare,self.profile)
        self.body=dict(sample_id=str(self.sid),confirm=True,request_token=quotes.request_token('secret',str(self.sid),self.sample['email']))
    async def call(self,**changes):
        body=dict(self.body,**changes)
        class Request:
            async def json(self):return body
        return await self.endpoint(Request())
    async def test_good_bound_token_requests_only_draft_pending_review(self):
        self.setup();result=await self.call()
        self.assertEqual(result['status'],'offer_pending_review');self.assertEqual(result['offer_count'],25)
        self.assertEqual(result['amount_cents'],14900);self.assertEqual(result['checkout_url'],'');self.assertFalse(result['payment_created'])
        self.assertEqual(len(self.drafts),1);self.assertEqual(next(iter(self.drafts.values()))['status'],'draft')
        self.assertEqual(self.transactions,[{}]);self.assertEqual(self.effects,[])
        self.profile.assert_awaited_once();self.prepare.assert_awaited_once()
    async def test_token_cannot_move_to_another_recipient_or_sample(self):
        for kind in ('wrong','email','sample','not_string','saved_email_changed'):
            self.setup()
            if kind=='wrong':self.body['request_token']='0'*64
            elif kind=='email':self.body['request_token']=quotes.request_token('secret',str(self.sid),'other@example.test')
            elif kind=='sample':self.body['request_token']=quotes.request_token('secret',str(uuid.uuid4()),self.sample['email'])
            elif kind=='not_string':self.body['request_token']=['unsafe']
            else:self.sample['email']='different@example.test'
            with self.assertRaises(HTTPException) as caught:await self.call()
            self.assertEqual(caught.exception.status_code,403);self.prepare.assert_not_awaited();self.profile.assert_not_awaited()
    async def test_confirmation_and_valid_sample_uuid_before_database(self):
        for change in (dict(confirm=False),dict(confirm='true'),dict(confirm=1),dict(sample_id='bad-uuid')):
            self.setup()
            with self.assertRaises(HTTPException) as caught:await self.call(**change)
            self.assertEqual(caught.exception.status_code,400);self.assertEqual(self.reads,[])
            self.prepare.assert_not_awaited()
    async def test_old_missing_and_unapproved_callback_reject_before_prepare(self):
        for kind in ('old','missing_sample','missing_profile','profile_error'):
            self.setup()
            if kind=='old':self.sample['created_at']=datetime.now(timezone.utc)-timedelta(days=30,seconds=1)
            elif kind=='missing_sample':self.sample=None
            elif kind=='missing_profile':self.profile.return_value=None
            else:self.profile.side_effect=HTTPException(409,'Draft profile is not approved')
            with self.assertRaises(HTTPException):await self.call()
            self.prepare.assert_not_awaited();self.assertEqual(self.drafts,{})
    async def test_fresh_naive_timestamp_supported_and_email_input_cannot_rebind(self):
        self.setup();self.sample['created_at']=datetime.now(timezone.utc).replace(tzinfo=None)
        result=await self.call(email='attacker@example.test')
        self.assertEqual(result['status'],'offer_pending_review')
        self.assertEqual(self.profile.call_args.args[1]['email'],'recipient@example.test')
    async def test_idempotent_draft_callback_no_extra_order_approval_or_send(self):
        self.setup();first=await self.call();second=await self.call()
        self.assertEqual(first['offer_id'],second['offer_id']);self.assertEqual(len(self.drafts),1)
        self.assertEqual(self.prepare.await_count,2);self.assertEqual(self.effects,[])
        self.assertEqual(next(iter(self.drafts.values()))['status'],'draft')
        self.assertEqual(first['checkout_url'],'');self.assertEqual(second['checkout_url'],'')

if __name__=='__main__':unittest.main()
