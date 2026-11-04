"""Offline pinned transport fixtures, not live business verification."""
import hashlib,sys,unittest
from dataclasses import FrozenInstanceError
from datetime import datetime,timezone
from pathlib import Path
from unittest.mock import patch
sys.path.insert(0,str(Path(__file__).parent/'api'))
import official_research as r

URL='https://business.example/start?source=public'
class Response:
 def __init__(self,status=200,body=b'<html>official</html>',content_type='text/html; charset=utf-8',location=None):
  self.status=status;self.body=body;self.headers={'Content-Type':content_type,'Location':location};self.read_sizes=[]
 def getheader(self,key,default=None):return self.headers.get(key) or default
 def read(self,size):self.read_sizes.append(size);return self.body[:size]
class Connection:
 def __init__(self,response):self.response=response;self.closed=False;self.requests=[]
 def request(self,*args,**kwargs):self.requests.append((args,kwargs))
 def getresponse(self):return self.response
 def close(self):self.closed=True
class Tests(unittest.TestCase):
 def transport(self,responses,callback):
  connections=[Connection(response) for response in responses]
  with patch.object(r,'public_addresses',return_value=['93.184.216.34']) as dns,patch.object(r,'PinnedHTTPS',side_effect=connections) as transport:
   result=callback()
  return result,connections,dns,transport
 def test_raw_digest_exact_urls_completion_time_immutable(self):
  raw=b'<html>\xff bytes</html>';before=datetime.now(timezone.utc)
  receipt,connections,dns,transport=self.transport([Response(body=raw)],lambda:r.fetch_page_receipt(URL))
  after=datetime.now(timezone.utc)
  self.assertEqual(receipt.requested_url,URL);self.assertEqual(receipt.final_url,URL)
  self.assertEqual(receipt.raw_bytes,raw);self.assertEqual(receipt.content_sha256,hashlib.sha256(raw).hexdigest())
  self.assertNotEqual(receipt.content_sha256,hashlib.sha256(receipt.document.encode()).hexdigest())
  self.assertTrue(before<=datetime.fromisoformat(receipt.fetched_at)<=after)
  self.assertEqual(receipt.redirect_chain,());self.assertEqual(transport.call_count,1)
  self.assertTrue(connections[0].closed)
  with self.assertRaises(FrozenInstanceError):receipt.final_url='https://forged.example/'
 def test_relative_redirect_initial_final_binding_and_each_hop_pinning(self):
  receipt,connections,dns,transport=self.transport([Response(status=302,location='/contact'),Response()],lambda:r.fetch_page_receipt(URL))
  self.assertEqual(receipt.requested_url,URL);self.assertEqual(receipt.final_url,'https://business.example/contact')
  self.assertEqual(receipt.redirect_chain,('https://business.example/contact',))
  self.assertEqual(dns.call_count,2);self.assertEqual(transport.call_count,2)
  self.assertTrue(all(c.closed for c in connections))
 def test_old_tuple_fetches_once(self):
  result,connections,dns,transport=self.transport([Response()],lambda:r.fetch_page(URL))
  self.assertEqual(result,(URL,'<html>official</html>',hashlib.sha256(b'<html>official</html>').hexdigest()))
  self.assertEqual(transport.call_count,1)
 def test_failures_never_return_receipt_and_close(self):
  for response,error in [(Response(status=403),'http_403'),(Response(content_type='text/html-malware'),'not_html'),
                         (Response(body=b'x'*1_000_001),'page_too_large'),(Response(status=302),'redirect_without_location')]:
   connection=Connection(response)
   with patch.object(r,'public_addresses',return_value=['93.184.216.34']),patch.object(r,'PinnedHTTPS',return_value=connection):
    with self.assertRaisesRegex(ValueError,error):r.fetch_page_receipt(URL)
   self.assertTrue(connection.closed)
 def test_forbidden_redirect_no_second_connection(self):
  for destination in ['http://business.example/contact','https://localhost/contact','https://nextdoor.com/business']:
   connection=Connection(Response(status=302,location=destination))
   with patch.object(r,'public_addresses',return_value=['93.184.216.34']),patch.object(r,'PinnedHTTPS',return_value=connection) as transport:
    with self.assertRaisesRegex(ValueError,'unsupported_source_url'):r.fetch_page_receipt(URL)
    self.assertEqual(transport.call_count,1)
   self.assertTrue(connection.closed)
 def test_redirect_limit_and_timeout_cleanup(self):
  connections=[Connection(Response(status=302,location='/again')) for _ in range(4)]
  with patch.object(r,'public_addresses',return_value=['93.184.216.34']),patch.object(r,'PinnedHTTPS',side_effect=connections):
   with self.assertRaisesRegex(ValueError,'redirect_limit'):r.fetch_page_receipt(URL)
  self.assertTrue(all(c.closed for c in connections))
  connection=Connection(Response());connection.getresponse=lambda:(_ for _ in ()).throw(TimeoutError('transport timeout'))
  with patch.object(r,'public_addresses',return_value=['93.184.216.34']),patch.object(r,'PinnedHTTPS',return_value=connection):
   with self.assertRaises(TimeoutError):r.fetch_page_receipt(URL)
  self.assertTrue(connection.closed)
if __name__=='__main__':unittest.main()
