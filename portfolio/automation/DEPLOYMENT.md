# BMC Automation Appliance

## Recommendation
Start local. Do not rent a VPS yet.

Use one always-on PC as the BMC automation appliance. Its job is workflow orchestration, record storage, email/API calls, scheduling, and exception handling. It does not need to run a large language model.

### Suggested hardware
Comfortable MVP:
- 2+ CPU cores
- 4 GB RAM minimum
- 8 GB RAM preferred if available
- 40+ GB SSD
- wired Ethernet if practical
- machine configured never to sleep
- automatic reboot after power loss if BIOS supports it

This can be an older PC. Keep ENVY and the Mac inference machines separate so an LLM crash or model load does not take the business workflow engine down.

## Architecture

Internet
  |
  | HTTPS
  v
Cloudflare
  |
  | outbound-only Cloudflare Tunnel
  v
Webhook-only reverse proxy
  |
  v
n8n
  |---------------------> Google Sheets / Gmail / APIs
  |---------------------> PostgreSQL
  |
  | only when AI is needed
  +---------------------> ENVY / Mac model endpoint over LAN or Tailscale

Public websites remain static and inexpensive on GitHub/Pages hosting.

## Why this split
Routine automation is deterministic and cheap:
- accept web form
- validate request
- write lead
- match service + market
- notify eligible vendor
- record accept/decline
- schedule follow-up
- update buyer/vendor status
- log revenue
- raise exception

LLMs are optional helpers for:
- classifying messy free text
- writing personalized outreach
- researching/enriching businesses
- summarizing replies
- scoring ambiguous leads
- generating content

Never make the local model the single point of failure for basic lead intake or routing.

## Public ingress
Use a Cloudflare Tunnel rather than opening router ports.

Recommended public hostname:
  hooks.bmcluminaryventures.com

The tunnel should point to a webhook-only reverse proxy. Do not expose the n8n editor directly to the public Internet.

The reverse proxy permits production webhook routes and rejects normal editor/UI routes.

Admin access options:
1. RDP into the automation PC and use http://localhost:5678
2. Tailscale/private LAN access
3. later, a separate Cloudflare Access-protected admin hostname

## Resilience
Phase 1:
- n8n + Postgres on one local machine
- Google Sheets remains the human-readable operations mirror
- website forms retain an error fallback
- daily database/config backup

Phase 2, only after revenue:
- second Cloudflare Tunnel connector on another host
- offsite database backup
- optional cheap VPS or cloud relay for higher availability

Phase 3, only if traffic proves it:
- queue mode / separate workers
- managed Postgres or VPS
- Redis
- dedicated public ingestion service

## When a VPS becomes worth it
Move or add a VPS when any of these are true:
- home internet/power downtime causes lost revenue
- webhook uptime becomes contractually important
- execution volume materially exceeds the appliance
- remote maintenance is becoming painful
- a customer requires cloud-hosted infrastructure
- revenue easily pays for redundancy

Do not buy infrastructure because the portfolio is large on paper. Size infrastructure from actual execution volume.

## Immediate workflow sequence
1. BMC form POSTs to production webhook.
2. Webhook validates fields + consent.
3. Write lead to Postgres and operations sheet.
4. Load active vendors matching service and territory.
5. Rank deterministic matches.
6. Route to vendor(s) according to lead model.
7. Email/SMS notification.
8. Capture accept/decline.
9. Re-route if needed.
10. Follow customer/vendor through contacted -> estimate -> won/lost.
11. Create exception when normal path fails.
12. Daily digest reports unresolved exceptions and revenue.

## AI calls
Use HTTP Request nodes from n8n to:
- ENVY for fast/local classification and drafting
- Mac/Bonsai only for higher-reasoning research or difficult jobs

If either AI endpoint is offline, the deterministic workflow continues.

## Security
- never expose Ollama/model APIs directly to the Internet
- never expose Postgres to the Internet
- no router port forwarding
- store secrets in environment variables / n8n credentials
- use a long N8N_ENCRYPTION_KEY
- use unique database password
- keep Docker images patched
- back up n8n data and Postgres
- use webhook authentication/signatures where practical
