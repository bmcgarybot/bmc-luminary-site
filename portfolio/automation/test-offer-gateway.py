#!/usr/bin/env python3
"""Exercise real nginx allowlist before the CI API stack starts."""
import http.server,json,pathlib,subprocess,threading,time,urllib.request,urllib.error,uuid
class Upstream(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        body=json.dumps({"upstream":True,"path":self.path}).encode()
        self.send_response(200);self.send_header("Content-Type","application/json");self.end_headers();self.wfile.write(body)
    def do_POST(self):self.do_GET()
    def log_message(self,*args): pass
server=http.server.HTTPServer(("127.0.0.1",8000),Upstream)
threading.Thread(target=server.serve_forever,daemon=True).start()
name="bmc-offer-gateway-"+uuid.uuid4().hex[:10]
config=pathlib.Path(__file__).with_name("nginx-webhooks.conf").resolve()
def request(path,method="GET"):
    try:
        with urllib.request.urlopen(urllib.request.Request("http://127.0.0.1:8080"+path,method=method),timeout=3) as r:return r.status,r.read()
    except urllib.error.HTTPError as e:return e.code,e.read()
try:
    subprocess.run(["docker","run","-d","--name",name,"--network","host","--add-host","ops_api:127.0.0.1","--add-host","n8n:127.0.0.1","-v",str(config)+":/etc/nginx/conf.d/default.conf:ro","nginx:alpine"],check=True,stdout=subprocess.DEVNULL)
    for _ in range(30):
        try:request("/");break
        except (OSError,urllib.error.URLError):time.sleep(.2)
    path="/api/growth/offers/00000000-0000-4000-8000-000000000001?token=synthetic-secret"
    status,body=request(path)
    assert status==200 and json.loads(body)["path"]==path,(status,body)
    assert request(path,"POST")[0]==405
    assert request('/api/growth/request-small-pack','GET')[0]==405
    status,body=request('/api/growth/request-small-pack','POST')
    assert status==200 and json.loads(body)['path']=='/api/growth/request-small-pack'
    for private_path in ('/api/admin/queue-census-research','/api/process-census-research','/api/admin/census-research-queue-status','/api/admin/export-census-research-queue'):
        assert request(private_path,'POST')[0]==404
    assert request('/api/admin/research-census-review','POST')[0]==404
    assert request('/api/admin/prepare-scoped-journey','POST')[0]==404
    assert request('/api/admin/approve-scoped-journey','POST')[0]==404
    for denied in ("/api/admin/growth-offers/prepare","/api/growth/offers/not-a-uuid","/api/growth/offers/00000000-0000-4000-8000-000000000001/review","/api/process-growth-offers"):
        assert request(denied)[0]==404,denied
    logs=subprocess.run(["docker","logs",name],capture_output=True,text=True,check=True)
    assert "synthetic-secret" not in logs.stdout+logs.stderr
    print("PASS: signed offer gateway, method restriction, private-route denial, token log suppression")
finally:
    subprocess.run(["docker","rm","-f",name],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
    server.shutdown()
