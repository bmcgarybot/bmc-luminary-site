# BMC Automation Appliance

## Recommendation
Start local. Do not rent a VPS yet.

Use one always-on PC as the BMC automation appliance. Its job is workflow orchestration, record storage, email/API calls, scheduling, exception handling, and a small optional utility model.

## Brett's HP x360 profile
The 2018 HP x360 with 8 GB RAM is a reasonable first automation appliance.

Preferred configuration if the laptop can be dedicated:
- lightweight Linux / Ubuntu Server or Debian
- 2+ CPU cores
- 8 GB RAM
- SSD
- wired Ethernet if practical
- lid-close action disabled / never sleep
- automatic restart after power loss if BIOS supports it

Windows can work, but Linux leaves more RAM available for Docker + the utility model.

### Utility model
Default:
- Qwen3 1.7B through Ollama
- use short context, normally 4K-8K
- use non-thinking / concise mode for routine automation

Optional experiment:
- Qwen3 4B if memory and CPU performance are acceptable

Do not make the local model a dependency for basic lead intake, routing, database writes, or notifications.

Use the HP model for:
- classifying messy lead text
- extracting service type / urgency / market clues
- summarizing inbound replies
- choosing among approved outreach templates
- drafting short personalization
- tagging buyer/vendor records

Escalate to ENVY / Mac / Bonsai for:
- deep research
- long documents
- difficult reasoning
- agentic workflows
- large-context jobs

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
  |---------------------> local Ollama utility model (optional)
  |
  | difficult AI work only
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

The small model is an assistant to the workflow, not the workflow itself.

## Public ingress
Use a Cloudflare Tunnel rather than opening router ports.

Recommended public hostname:
  hooks.bmcluminaryventures.com

The tunnel should point to a webhook-only reverse proxy. Do not expose the n8n editor directly to the public Internet.

The reverse proxy permits production webhook routes and rejects normal editor/UI routes.

Admin access options:
1. local browser / RDP into the automation PC and use http://localhost:5678
2. Tailscale/private LAN access
3. later, a separate Cloudflare Access-protected admin hostname

## Resilience
Phase 1:
- n8n + Postgres + optional small Ollama model on the HP x360
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
4. Optional local model classifies messy free text into approved categories.
5. Load active vendors matching service and territory.
6. Rank deterministic matches.
7. Route to vendor(s) according to lead model.
8. Email/SMS notification.
9. Capture accept/decline.
10. Re-route if needed.
11. Follow customer/vendor through contacted -> estimate -> won/lost.
12. Create exception when normal path fails.
13. Daily digest reports unresolved exceptions and revenue.

## AI routing
Tier 0: no AI
- form validation
- market/service exact match
- status changes
- scheduled follow-ups
- database updates

Tier 1: HP utility model
- classification
- summarization
- extraction
- short personalization
- reply triage

Tier 2: ENVY
- richer drafting
- enrichment
- medium-complexity research

Tier 3: Mac/Bonsai
- difficult reasoning
- long research jobs
- complex agentic work

If any AI endpoint is offline, Tier 0 continues.

## Local AI commands

Start the optional model service:

```bash
docker compose --profile local-ai up -d ollama
```

Pull the default utility model:

```bash
docker compose --profile local-ai exec ollama ollama pull qwen3:1.7b
```

Test it locally:

```bash
curl http://localhost:11434/api/chat -d '{"model":"qwen3:1.7b","messages":[{"role":"user","content":"Classify this lead: dead pine leaning over garage"}],"stream":false}'
```

n8n reaches it internally at:

`http://ollama:11434`

## Security
- never expose Ollama/model APIs directly to the Internet
- never expose Postgres to the Internet
- no router port forwarding
- bind local admin/test ports to 127.0.0.1 only
- store secrets in environment variables / n8n credentials
- use a long N8N_ENCRYPTION_KEY
- use unique database password
- keep Docker images patched
- back up n8n data and Postgres
- use webhook authentication/signatures where practical
