"""Private dashboard boundaries; no external email or production data."""
import asyncio,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent/'api'))
from fastapi import FastAPI,HTTPException
from starlette.requests import Request
from owner_dashboard import install,ORIGIN
class Conn:
 async def fetchval(self,*args):return 'synthetic-session'
class Acquire:
 async def __aenter__(self):return Conn()
 async def __aexit__(self,*args):pass
class Pool:
 def acquire(self):return Acquire()
def request(origin=ORIGIN,cookie=''):
 return Request({'type':'http','method':'POST','path':'/','headers':[(b'origin',origin.encode()),(b'cookie',cookie.encode())]})
async def main():
 app=FastAPI();app.state.pool=Pool()
 async def no_send(*a,**k):raise AssertionError('Must not send')
 install(app,lambda k:None,lambda:False,no_send,no_send)
 routes={r.path:r.endpoint for r in app.routes}
 async def denied(path,req,status):
  try:await routes[path](req)
  except HTTPException as e:assert e.status_code==status,(e.status_code,status)
  else:raise AssertionError('Access allowed')
 await denied('/api/owner/state',request(),401)
 await denied('/api/owner/send',request('https://untrusted.example'),403)
 await denied('/api/owner/send',request(),401)
 await denied('/api/owner/send',request(cookie='bmc_owner_session=synthetic'),409)
 print('PASS: private data requires sign-in; cross-site and wrong-sender sends denied')
asyncio.run(main())
