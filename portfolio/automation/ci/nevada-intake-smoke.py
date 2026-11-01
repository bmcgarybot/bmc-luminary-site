#!/usr/bin/env python3
"""Actual HTTP app proof in isolated CI Postgres; never sends mail or takes payment."""
import json
import urllib.request
import urllib.error
BASE='http://127.0.0.1:8000'
def call(path,payload=None,admin=False):
    headers={'Content-Type':'application/json'}
    if admin:headers['X-BMC-Admin-Key']='ci_admin_key'
    req=urllib.request.Request(BASE+path,headers=headers,data=json.dumps(payload).encode() if payload is not None else None)
    try:
        with urllib.request.urlopen(req,timeout=15) as r:return r.status,json.load(r)
    except urllib.error.HTTPError as e:return e.code,json.load(e)
status,p=call('/api/nevada/status');assert status==200,(status,p)
assert p['state_code']=='NV' and p['intake_open'] is False and p['checkout_open'] is False
status,p=call('/api/nevada/request',{'state_code':'NV','email':'never-sent@example.invalid'})
assert status==503,(status,p)
status,p=call('/api/admin/nevada/status');assert status==403,(status,p)
status,p=call('/api/admin/nevada/status',admin=True);assert status==200,(status,p)
assert p['requests']==0 and p['orders']==0 and p['household_data_included'] is False
print('NV HTTP/real-Postgres held-intake proof passed; no request, mail or order created.')
