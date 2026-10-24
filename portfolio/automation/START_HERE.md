# BMC Cloud VPS - Start Here

The GitHub build is the software package. Production is now designed for an always-on Linux VPS, not a home HP/iMac.

Primary deployment guide: `CLOUD_DEPLOY.md`.

## Production target

Initial production class:
- Ubuntu 24.04 LTS x86_64
- 4 vCPU
- 8 GB RAM
- 75+ GB NVMe
- monthly billing initially
- Cloudflare Tunnel for public ingress
- provider snapshot/backup capability

The current intended purchase is the OVHcloud VPS-2 class, but the stack remains provider-neutral.

## Current durable build status

As of October 24, 2026:
- 48 registered BMC service businesses
- 12 Arizona market hubs
- 210 researched vendor prospects
- 156 unique researched B2B buyer prospects
- deterministic lead intake/matching API
- provider accept/decline + job-outcome tracking
- automatic offer expiry/rerouting and follow-up scheduler
- bounded autonomous operator
- private autonomous research worker with staged candidate review
- Stripe webhook/revenue/subscription event handling
- four live Stripe products/prices
- Google Drive Master Operations sheet as human-readable command center
- cloud VPS provisioning/runbook
- resource limits/log rotation for the 8 GB production class
- clonable single-tenant foundation for future white-label deployments

## Current external blockers

1. **Cloud VPS purchase/deployment**
   - create the Ubuntu VPS
   - clone this repo
   - run `provision-cloud.sh`
   - create the real `.env`
   - run `bootstrap.sh`
   - confirm runtime doctor

2. **Stripe account activation**
   - finish BMC Stripe onboarding/verification
   - enable card/payment methods
   - create the existing products' Payment Links

3. **Public webhook ingress**
   - create/authorize the Cloudflare Tunnel
   - route `hooks.bmcluminaryventures.com` to `webhook_proxy:8080`
   - create Stripe webhook endpoint
   - store its signing secret in `.env`

4. **Outbound mail**
   - configure SMTP
   - configure monitored IMAP/reply mailbox
   - configure SPF/DKIM/DMARC
   - configure real BMC postal address
   - test opt-out/reply processing
   - only then enable vendor/buyer outreach

## Runtime stack

- PostgreSQL — operational state
- BMC Ops API — deterministic intake/matching/status/payment engine
- n8n — orchestration/integration layer
- scheduler — expiry/reroute/follow-up/operator cycles
- BMC autonomous operator — bounded internal classification/triage/research ownership
- SearXNG — private research search
- nginx — webhook-only gateway
- Cloudflare Tunnel — public HTTPS ingress without publishing app ports
- optional Ollama/Qwen3 1.7B — lightweight utility AI

AI is not required for ordinary customer/provider flows. Templates and deterministic state transitions remain the primary transaction path.

## Fresh VPS deployment

```bash
git clone https://github.com/bmcgarybot/bmc-luminary-site.git
cd bmc-luminary-site/portfolio/automation
chmod +x provision-cloud.sh bootstrap.sh start.sh stop.sh backup.sh runtime-doctor.sh
./provision-cloud.sh
```

If the provisioner adds your user to the Docker group, log out and back in.

Then:

```bash
cd bmc-luminary-site/portfolio/automation
./bootstrap.sh
```

Bootstrap starts the private core. Public outreach remains OFF.

## Verification

```bash
curl http://127.0.0.1:8000/health
curl http://127.0.0.1:8888/config
docker compose ps
bash runtime-doctor.sh
```

The runtime doctor checks:
- Docker/Compose
- cloud deployment target
- RAM/disk/swap
- API/Postgres health
- 48-service registry
- vendor/buyer seeds
- 651-item research backlog
- exact 12-provider + 7-buyer First Wave
- outreach OFF switches
- private agent status
- SearXNG availability
- optional Ollama availability
- remaining external launch blockers

## Private administration from your computer

Do not publish `/admin`.

Use SSH port forwarding:

```bash
ssh -L 8000:127.0.0.1:8000 -L 5678:127.0.0.1:5678 YOUR_USER@YOUR_VPS_IP
```

Then locally:
- BMC admin: `http://127.0.0.1:8000/admin`
- n8n: `http://127.0.0.1:5678`

Private agent status:

```bash
curl http://127.0.0.1:8000/api/admin/agent-status -H "X-BMC-Admin-Key: $BMC_ADMIN_KEY"
```

## Optional resident AI

The 8 GB VPS is deliberately designed to run without an LLM in the critical path.

Start the conservative utility model only after the core is healthy:

```bash
docker compose --profile local-ai up -d ollama
docker compose --profile local-ai exec ollama ollama pull qwen3:1.7b
```

Use a 4B model only after measuring real memory headroom. Heavy reasoning can later escalate to ENVY/Bonsai or an API model without changing the core transaction system.

## Public tunnel

After the Cloudflare Tunnel token is configured:

```bash
docker compose --profile tunnel up -d cloudflared
```

The public gateway must not expose the admin interface.

## Outreach safety

Defaults:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- both waves restricted to `pilot1`

Keep both false until sender identity, postal address, reply handling, opt-out handling, and first-batch copy are verified.

## Payment launch

After Stripe activation:
1. create Payment Links for the four live products;
2. update the Billing sheet;
3. update `portfolio/data/billing.json`;
4. create `https://hooks.bmcluminaryventures.com/api/stripe-webhook`;
5. store signing secret;
6. run a small real/test-order validation.

## Backup

```bash
./backup.sh
```

Backups are compressed, checksummed and instance-named. Keep provider snapshots too, and add off-host backup before meaningful production data accumulates.

## White-label path

See `WHITE_LABEL.md`.

The current goal is a repeatable isolated single-tenant appliance. Do not build multi-tenant SaaS before BMC proves real routing, revenue, backup/restore, and a second clean deployment.
