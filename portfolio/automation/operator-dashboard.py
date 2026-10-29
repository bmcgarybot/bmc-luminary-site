"""Server-rendered, script-free operations dashboard with real-data SVG charts."""
import datetime as dt
import html
import math


def esc(value): return html.escape(str(value),quote=True)
def numeric(value): return type(value) in (int,float) and math.isfinite(value) and value>=0
def count(value): return f"{value:,}" if numeric(value) else "—"
def money(value): return f"${value/100:,.0f}" if numeric(value) else "—"
def percent(value): return f"{value:.0f}%" if numeric(value) else "—"
def stamp(value):
    try: return dt.datetime.fromisoformat(value.replace("Z","+00:00")).astimezone(dt.timezone(dt.timedelta(hours=-7))).strftime("%b %d · %I:%M %p")
    except (ValueError,AttributeError,TypeError): return "Awaiting first reading"


def chart(history,key,group="growth",color="#2f7663",currency=False,ceiling=None):
    points=[]; pending_gap=False
    for row in history:
        pending_gap=pending_gap or row.get("gap_before") is True
        value=row.get(group,{}).get(key)
        try: moment=dt.datetime.fromisoformat(row["observed_at"].replace("Z","+00:00")).timestamp()
        except (ValueError,KeyError,TypeError,AttributeError):
            pending_gap=True
            continue
        if numeric(value):
            points.append((moment,value/100 if currency else value,True if pending_gap else row.get("gap_before")))
            pending_gap=False
        else: pending_gap=True
    if not points:
        return '<div class="empty-chart"><span class="empty-icon">◌</span><strong>History starts here</strong><p>Real measurements will appear as they are collected.</p></div>'
    points.sort()
    first,last=points[0][0],points[-1][0]
    maximum=ceiling or max(1,max(value for _,value,_ in points)*1.15)
    width,height,left,top=620,174,42,14
    plotw,ploth=width-left-12,height-top-28
    def xy(point):
        t,value,_=point
        return left+(t-first)/max(last-first,1)*plotw,top+ploth-min(value/maximum,1)*ploth
    grids=[]
    for fraction in (0,0.5,1):
        y=top+ploth*(1-fraction)
        label=("$" if currency else "")+f"{maximum*fraction:,.0f}"+("%" if ceiling==100 else "")
        grids.append(f'<line x1="{left}" x2="{width-12}" y1="{y:.1f}" y2="{y:.1f}" stroke="#e6e9e4"/><text x="{left-8}" y="{y+4:.1f}" text-anchor="end">{esc(label)}</text>')
    segments=[]; segment=[]
    for index,point in enumerate(points):
        if index and (point[2] is True or (point[2] is None and point[0]-points[index-1][0]>180)):
            if segment: segments.append(segment)
            segment=[]
        segment.append(point)
    if segment: segments.append(segment)
    paths=[]
    for segment in segments:
        coords=[xy(p) for p in segment]
        d="M "+" L ".join(f"{x:.1f} {y:.1f}" for x,y in coords)
        if len(coords)>1:
            area=d+f" L {coords[-1][0]:.1f} {top+ploth} L {coords[0][0]:.1f} {top+ploth} Z"
            paths.append(f'<path d="{area}" fill="{color}" opacity=".08"/><path d="{d}" fill="none" stroke="{color}" stroke-width="2.5" stroke-linejoin="round"/>')
        else:
            x,y=coords[0];paths.append(f'<circle cx="{x:.1f}" cy="{y:.1f}" r="3" fill="{color}"/>')
    return (f'<svg viewBox="0 0 {width} {height}" role="img" aria-label="{esc(key.replace("_"," "))} measured over time">'
            +"".join(grids+paths)+f'<text x="{left}" y="{height-3}">{esc(stamp(history[0].get("observed_at")))}</text>'
            +f'<text x="{width-12}" y="{height-3}" text-anchor="end">Latest</text></svg>')


def render(result):
    growth=result.get("growth",{}); resources=result.get("resources",{})
    history=result.get("history",[]); hours=result.get("history_window_hours",24)
    healthy=not result.get("issues")
    status="Systems healthy" if healthy else "Needs attention"
    hold=result.get("owner_launch_hold_active") is True
    stamp_text=stamp(result.get("observed_at"))
    issue_count=len(result.get("issues",[]))
    ranges="".join(f'<a class="range {"selected" if n==hours else ""}" href="?range={n}">{label}</a>' for n,label in ((1,"1h"),(6,"6h"),(24,"24h"),(168,"7d")))
    cards=[]
    for label,key,kind,detail in (("Collected revenue","revenue_cents","money","Recorded paid Growth orders"),("Paid orders","paid_orders","number","Customers who have paid"),("Free samples","samples_delivered","number","Samples recorded as delivered"),("Replies","replies","number","Recorded Growth responses")):
        value=growth.get(key)
        cards.append(f'<article class="kpi"><span class="eyebrow">{label}</span><strong>{money(value) if kind=="money" else count(value)}</strong><span class="kpi-note">{detail}</span></article>')
    funnel=[]
    maximum=max([growth.get(key) or 0 for key in ("sent","replies","samples_requested","paid_orders")]+[1])
    for label,key in (("SMTP submissions","sent"),("Replies received","replies"),("Samples requested","samples_requested"),("Paid orders","paid_orders")):
        value=growth.get(key)
        bar=100*value/maximum if numeric(value) else 0
        funnel.append(f'<div class="funnel-row"><div><span>{label}</span><b>{count(value)}</b></div><div class="track"><span style="width:{bar:.2f}%"></span></div></div>')
    gauges=[]
    for label,key,note in (("CPU","cpu_percent","Across the whole VPS"),("Memory","memory_percent","Used after reclaimable cache"),("Disk","disk_percent","Storage in use")):
        value=resources.get(key); safe=value if numeric(value) and value<=100 else 0
        tone="#c17a28" if safe>=80 else "#398473"
        gauges.append(f'<div class="gauge"><div class="ring" style="--value:{safe:.2f}%;--tone:{tone}"><b>{percent(value)}</b></div><strong>{label}</strong><small>{note if numeric(value) else "Awaiting measurement"}</small></div>')
    service_labels={"ollama":"Local AI","ops_api":"Operations API","postgres":"Database","scheduler":"Scheduler","research_refresher":"Research worker","n8n":"Workflows","searxng":"Search","webhook_proxy":"Gateway","cloudflared":"Tunnel"}
    service_rows=[]
    for row in resources.get("containers",[]):
        if row.get("service") not in service_labels: continue
        service_rows.append('<tr><td><span class="service-dot"></span>'+esc(service_labels[row["service"]])+"</td><td>"+esc(percent(row.get("cpu_percent")))+"</td><td>"+esc(percent(row.get("memory_percent")))+"</td></tr>")
    issues="".join("<li>"+esc(issue)+"</li>" for issue in result.get("issues",[]))
    safety="".join('<div class="safety-line"><span>'+label+'</span><b class="'+("good" if result.get("outreach_switches",{}).get(key) is False else "warn")+'">'+("OFF" if result.get("outreach_switches",{}).get(key) is False else "CHECK")+'</b></div>' for key,label in (("OUTREACH_ENABLED","Provider outreach"),("BUYER_OUTREACH_ENABLED","Buyer outreach"),("GROWTH_OUTREACH_ENABLED","Growth outreach")))
    available=resources.get("memory_available_bytes"); free=resources.get("disk_free_bytes")
    mem_note=f'{available/1024**3:.1f} GiB available' if numeric(available) else "Memory reading unavailable"
    disk_note=f'{free/1024**3:.0f} GiB disk free' if numeric(free) else "Disk reading unavailable"
    sha=result.get("deployed_sha") or "Not confirmed"
    css=CSS
    return f'''<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><meta http-equiv="Content-Security-Policy" content="default-src 'none'; style-src 'unsafe-inline'; base-uri 'none'; form-action 'none'"><title>BMC Mission Control</title><style>{css}</style></head><body>
<aside class="sidebar"><a class="brand" href="/"><span class="brand-mark">B</span><span>BMC<span class="brand-small">MISSION CONTROL</span></span></a><div class="nav-label">WORKSPACE</div><nav><a class="active" href="#overview">◈ <span>Overview</span></a><a href="#growth">↗ <span>Growth engine</span></a><a href="#infrastructure">▥ <span>Infrastructure</span></a><a href="#attention">◉ <span>Attention <b>{issue_count}</b></span></a></nav><div class="sidebar-bottom"><span class="side-dot"></span> Private workspace<small>BMC Service Network<br>Arizona operations</small></div></aside>
<main id="overview"><header><div><div class="eyebrow">BMC SERVICE NETWORK / OPERATIONS</div><h1>Your business, at a glance.</h1><p class="subtitle">The numbers that matter. The work that needs you.</p></div><div class="header-status"><span class="pill {"green" if healthy else "amber"}"><i></i>{status}</span><small>{esc(stamp_text)} Arizona</small></div></header>
<section class="launch-banner"><div class="lock-icon">◈</div><div><strong>{"Launch is safely on hold" if hold else "Launch hold needs attention"}</strong><span>{"Research and monitoring can keep running. Customer outreach is paused." if hold else "Review the owner hold before any customer outreach."}</span></div><span class="badge">READ ONLY</span></section>
<section class="kpi-grid">{"".join(cards)}</section>
<section id="growth" class="panel-grid"><article class="panel wide"><div class="panel-heading"><div><h2>Revenue over time</h2><p>Actual recorded revenue. No projections.</p></div><div class="ranges">{ranges}</div></div>{chart(history,"revenue_cents",currency=True)}<div class="chart-foot"><span><i class="legend-dot"></i> Growth revenue</span><span>{len(history)} stored readings in this view</span></div></article><article class="panel"><div class="panel-heading"><div><h2>From outreach to orders</h2><p>{count(growth.get("staged_active"))} prospects currently staged</p></div></div>{"".join(funnel)}<p class="fine-print">SMTP submissions are not verified inbox deliveries.</p></article></section>
<section id="infrastructure" class="panel-grid"><article class="panel wide"><div class="panel-heading"><div><h2>VPS pulse</h2><p>{esc(mem_note)} · {esc(disk_note)}</p></div><span class="subtle-label">LIVE RESOURCES</span></div><div class="gauges">{"".join(gauges)}</div><div class="resource-legend"><span><i style="background:#398473"></i> CPU</span></div>{chart(history,"cpu_percent","resources",ceiling=100)}<p class="fine-print">Host CPU trend · gaps stay empty · container CPU below is per-core (100% = one core).</p></article><article class="panel"><div class="panel-heading"><div><h2>Services</h2><p>Current container resource use</p></div></div><table><thead><tr><th>Service</th><th>CPU</th><th>RAM</th></tr></thead><tbody>{"".join(service_rows) if service_rows else '<tr><td colspan="3" class="muted">Waiting for container readings</td></tr>'}</tbody></table></article></section>
<section id="attention" class="panel-grid"><article class="panel wide"><div class="panel-heading"><div><h2>{"You’re clear for now" if not issues else "Needs your attention"}</h2><p>{"No known issues in this snapshot." if not issues else "Operational checks that need a closer look."}</p></div><span class="attention-count">{issue_count}</span></div>{'<ul class="issue-list">'+issues+'</ul>' if issues else '<div class="all-clear"><span>✓</span><div><strong>No open monitoring alerts</strong><p>Keep the launch hold in place until you approve the complete customer experience.</p></div></div>'}<p class="fine-print">{esc(result.get("history_notice") or "History is measured from collection time; earlier activity is not invented.")}</p></article><article class="panel"><div class="panel-heading"><div><h2>Launch controls</h2><p>Status only. This view cannot send.</p></div></div>{safety}<div class="commit"><span>DEPLOYED COMMIT</span><code title="{esc(sha)}">{esc(sha[:12])}</code></div></article></section>
<footer><span>BMC Mission Control · private, read-only workspace</span><span>Refreshes every 30 seconds · Never authorizes marketing</span></footer></main></body></html>'''


CSS='''*{box-sizing:border-box}html{scroll-behavior:smooth}body{margin:0;background:#f5f6f2;color:#233832;font:14px -apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif}a{color:inherit;text-decoration:none}.sidebar{position:fixed;inset:0 auto 0 0;width:220px;background:#173d34;color:#c6d9d1;padding:32px 22px;display:flex;flex-direction:column}.brand{display:flex;align-items:center;gap:12px;font-size:25px;font-weight:750;color:white;letter-spacing:1px}.brand-mark{display:grid;place-items:center;width:42px;height:46px;border:1px solid #70988a;border-radius:13px;background:#285447}.brand-small{display:block;font-size:8px;letter-spacing:2px;font-weight:500;margin-top:5px}.nav-label{font-size:10px;letter-spacing:2px;color:#8eb0a2;margin:52px 12px 16px}nav{display:grid;gap:9px}nav a{display:flex;align-items:center;gap:13px;padding:14px 12px;border-radius:9px;font-size:16px}nav a span{font-size:13px}nav a.active,nav a:hover{background:#2c5246;color:white}nav b{font-size:10px;background:#3b6758;padding:3px 6px;border-radius:5px;margin-left:28px}.sidebar-bottom{margin-top:auto;padding:20px 10px 0;font-size:12px}.sidebar-bottom small{display:block;line-height:1.8;font-size:10px;color:#8eb0a2;margin-top:13px}.side-dot,.service-dot{display:inline-block;width:6px;height:6px;background:#7fae96;border-radius:50%;margin-right:6px}main{margin-left:220px;max-width:1740px;padding:42px 44px 22px}header{display:flex;justify-content:space-between;gap:24px;align-items:center;margin-bottom:30px}.eyebrow{font-size:10px;font-weight:650;letter-spacing:1.7px;color:#788982}h1{font-size:32px;font-weight:600;letter-spacing:-1.1px;line-height:1.2;margin:12px 0}.subtitle{color:#87928b;font-size:13px;margin:0}.header-status{display:flex;align-items:flex-end;flex-direction:column;gap:11px;white-space:nowrap}.header-status small{font-size:10px;color:#87928b}.pill{display:inline-flex;align-items:center;gap:8px;border-radius:25px;padding:9px 13px;font-size:11px;font-weight:600}.pill i{width:6px;height:6px;background:currentColor;border-radius:50%}.green{background:#e3efe6;color:#40795e}.amber{background:#fff0d9;color:#9b692b}.launch-banner{background:#edf0e7;border:1px solid #dce2d5;border-radius:12px;display:flex;align-items:center;gap:14px;padding:17px 20px;margin-bottom:24px}.lock-icon{display:grid;place-items:center;width:32px;height:36px;background:#dfe8d7;border-radius:9px;color:#65804f;font-size:20px}.launch-banner strong{font-size:12px;font-weight:650}.launch-banner span:not(.badge){display:block;font-size:11px;color:#7f8d77;margin-top:5px}.badge{font-size:9px;letter-spacing:1px;margin-left:auto;border:1px solid #cfdac5;border-radius:5px;padding:6px 8px;color:#7e8e71}.kpi-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:18px;margin-bottom:23px}.kpi,.panel{background:#fff;border:1px solid #e5e9e2;border-radius:13px;box-shadow:0 3px 12px #163f3303}.kpi{padding:22px 24px}.kpi .eyebrow{font-size:10px;letter-spacing:1px}.kpi strong{display:block;font-size:36px;letter-spacing:-1px;font-weight:600;margin:15px 0 10px}.kpi-note{font-size:11px;color:#95a097}.panel-grid{display:grid;grid-template-columns:minmax(0,1.7fr) minmax(300px,1fr);gap:22px;margin-bottom:22px;scroll-margin-top:20px}.panel{padding:24px;min-width:0}.panel-heading{display:flex;align-items:flex-start;justify-content:space-between;gap:14px;margin-bottom:20px}h2{font-size:15px;font-weight:600;letter-spacing:-.3px;margin:0}.panel-heading p{font-size:10px;color:#94a095;margin:7px 0 0;line-height:1.5}.ranges{display:flex;gap:3px;background:#f5f7f3;border-radius:7px;padding:3px}.range{font-size:10px;color:#8b998e;padding:6px 7px;border-radius:5px}.range.selected{background:white;color:#38694f;box-shadow:0 1px 3px #0000000f}svg{display:block;width:100%;height:auto;min-height:130px}svg text{font-family:inherit;font-size:12px;fill:#94a096}.chart-foot{display:flex;justify-content:space-between;gap:10px;color:#99a398;font-size:9px;margin-top:12px}.legend-dot{display:inline-block;background:#398473;border-radius:50%;width:5px;height:5px;margin-right:5px}.empty-chart{min-height:176px;border:1px dashed #e2e8df;border-radius:9px;display:flex;align-items:center;justify-content:center;flex-direction:column;text-align:center;color:#8e9b90;padding:24px}.empty-chart strong{font-weight:500;font-size:12px}.empty-chart p{font-size:10px;line-height:1.6}.empty-icon{font-size:28px;color:#adbcab;margin-bottom:8px}.funnel-row{margin-bottom:19px}.funnel-row>div:first-child{display:flex;justify-content:space-between;font-size:11px;color:#7f9083;margin-bottom:8px}.funnel-row b{color:#355647;font-weight:600}.track{height:8px;border-radius:4px;background:#f0f4ed;overflow:hidden}.track span{display:block;height:100%;background:#6c9b80;border-radius:4px}.fine-print{font-size:11px;line-height:1.7;color:#97a292;margin:16px 0 0}.gauges{display:flex;justify-content:space-around;margin:12px 0 28px;gap:12px}.gauge{text-align:center;flex:1}.ring{width:83px;height:83px;margin:0 auto 12px;display:grid;place-items:center;border-radius:50%;background:conic-gradient(var(--tone) var(--value),#edf1e9 0);position:relative}.ring:before{content:"";position:absolute;inset:7px;border-radius:50%;background:white}.ring b{position:relative;font-size:19px;font-weight:550}.gauge strong{font-size:11px;font-weight:550;display:block}.gauge small{font-size:9px;display:block;color:#99a393;margin-top:5px}.subtle-label{font-size:8px;letter-spacing:1px;color:#8f9d8d;border:1px solid #e4eadf;border-radius:5px;padding:5px 7px}.resource-legend{display:flex;gap:18px;font-size:9px;color:#9aa397;margin-bottom:4px}.resource-legend i{display:inline-block;width:5px;height:5px;margin-right:5px;border-radius:50%}table{width:100%;border-collapse:collapse;font-size:12px}th{text-align:left;font-size:9px;font-weight:500;color:#a2aca0;padding-bottom:12px}td{padding:12px 0;border-top:1px solid #f0f3ed;color:#7a8d7f}td:not(:first-child),th:not(:first-child){text-align:right;font-variant-numeric:tabular-nums}.service-dot{width:4px;height:4px}.muted{color:#9ba698}.attention-count{background:#edf3e9;color:#69906e;border-radius:8px;padding:7px 10px;font-size:12px}.all-clear{display:flex;gap:14px;align-items:center;background:#f6f9f3;border:1px solid #edf1e7;border-radius:8px;padding:18px}.all-clear>span{background:#e5efdd;color:#6f9564;border-radius:50%;display:grid;place-items:center;width:27px;height:27px;flex:none}.all-clear strong{font-size:11px;font-weight:550}.all-clear p{font-size:10px;color:#92a088;line-height:1.7;margin:5px 0 0}.issue-list{font-size:11px;line-height:2;color:#a37740;padding-left:18px;overflow-wrap:anywhere}.safety-line{display:flex;align-items:center;justify-content:space-between;border-bottom:1px solid #eef2e9;padding:11px 0;font-size:11px;color:#8b9989}.safety-line b{font-size:9px;border-radius:5px;padding:4px 7px;font-weight:600}.good{background:#edf5e8;color:#729264}.warn{background:#fff1da;color:#a06e2f}.commit{display:flex;justify-content:space-between;align-items:center;margin-top:19px;gap:10px}.commit>span{font-size:8px;letter-spacing:1px;color:#a0aa9a}code{font-size:10px;color:#6b836e;background:#f5f7f0;padding:5px 7px;border-radius:4px}footer{display:flex;justify-content:space-between;gap:12px;color:#a2aa9e;font-size:9px;padding:9px 0 0}@media(min-width:1600px){main{padding:50px 60px}.kpi strong{font-size:42px}.panel{padding:28px}}@media(max-width:1150px){main{padding:28px 24px;margin-left:180px}.sidebar{width:180px;padding:28px 16px}h1{font-size:27px}.kpi{padding:18px}.kpi-grid{gap:12px}.panel-grid{grid-template-columns:1fr}.panel-grid>.panel{width:100%}.panel-heading{gap:10px}.sidebar .brand{font-size:21px}}@media(max-width:700px){svg text{font-size:19px}.sidebar{position:static;width:100%;padding:15px 20px;display:block}.brand{font-size:19px}.brand-mark{width:32px;height:33px;border-radius:9px}.brand-small{font-size:7px}.nav-label,.sidebar-bottom,nav{display:none}main{margin:0;padding:24px 16px}header{display:block;margin-bottom:20px}h1{font-size:27px;max-width:300px}.header-status{align-items:flex-start;flex-direction:row;align-items:center;margin-top:20px;gap:12px}.header-status small{font-size:8px}.kpi-grid{grid-template-columns:repeat(2,1fr);gap:10px}.kpi strong{font-size:31px}.kpi-note{font-size:9px}.kpi{padding:17px 15px}.panel{padding:20px 16px}.launch-banner{padding:14px;gap:10px}.launch-banner .badge{display:none}.launch-banner span:not(.badge){font-size:10px;line-height:1.6}.panel-heading{flex-wrap:wrap}.ring{width:73px;height:73px}.gauge small{font-size:8px}footer{display:block;line-height:2}footer span{display:block}.chart-foot{font-size:8px}}@media(prefers-reduced-motion:reduce){html{scroll-behavior:auto}}'''
