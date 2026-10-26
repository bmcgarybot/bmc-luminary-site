# BMC Cloud VPS - Start Here

The GitHub build is the software package. Production is now designed for an always-on Linux VPS, not a home HP/iMac.

Primary deployment guide: `CLOUD_DEPLOY.md`.

## Production target

Live production class:
- OVHcloud VPS-3 2027, Beauharnois
- Ubuntu 26.04 LTS x86_64
- 6 vCPU
- 12 GB RAM
- 100 GB NVMe
- 2 Gbps unlimited
- no commitment / monthly billing
- Cloudflare Tunnel for public ingress
- OVH automated backup plus portable Postgres dumps

The stack remains provider-neutral.

## Current durable build status

As of October 25, 2026:
- 54 seeded BMC service categories;
- 12 Arizona market hubs;
- 211 researched vendor prospects;
- 2,537 researched B2B buyer prospects;
- 205 staged research candidates;
- standard research backlog fully drained: 0 queued / 0 assigned;
- deterministic lead intake/matching API;
- provider accept/decline + job-outcome tracking;
- provider pilot activation + manual approval gate;
- private pilot shortlist / First Wave review cockpit;
- automatic offer expiry/rerouting and follow-up scheduler;
- bounded autonomous operator;
- private autonomous research worker with staged candidate review;
- Stripe webhook/revenue/subscription event handling;
- live Stripe/payment readiness;
- public Cloudflare ingress and live intake endpoint;
- outbound email/reply/opt-out readiness, with global outreach switches intentionally OFF;
- live cloud VPS deployed and runtime-doctor green;
- local utility AI/search ready but not required for transaction flow;
- checksummed production Postgres backup foundation;
- cloud VPS provisioning/runbook;
- conservative resource limits/log rotation with headroom on the 12 GB host;
- clonable single-tenant foundation for future white-label deployments.

## Current launch gate

The only runtime launch gate is:
1. activate at least one verified pilot provider.

Before approving a provider:
- the provider submits the secure pilot activation form;
- BMC reviews requested market/services, territory, capacity, credentials and insurance where applicable;
- BMC explicitly approves the pending pilot.

Keep these switches OFF while the first controlled provider is activated:
- `OUTREACH_ENABLED=false`;
- `BUYER_OUTREACH_ENABLED=false`.

Useful parallel work that does **not** block provider activation:
- create/verify the Google Search Console Domain property and submit the sitemap;
- review/promote useful staged research candidates;
- continue off-host backup hardening before meaningful customer data accumulates;
- revisit CMS source-native 403 access separately if useful.

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
chmod +x provision-cloud.sh bootstrap.sh start.sh stop.sh backup.sh runtime-doctor.sh configure-cloudflare.sh verify-public-ingress.sh verify-backup.sh install-backup-timer.sh
./provision-cloud.sh
```

If the provisioner adds your user to the Docker group, log out and back in.

Then:

```bash
cd bmc-luminary-site/portfolio/automation
./bootstrap.sh
```

Bootstrap starts the private core. Public outreach remains OFF.

## Updating the existing VPS

For an existing production VPS, do not rely on `git pull && ./start.sh` for API-code changes because `ops_api` is a built Docker image.

Use:

```bash
cd ~/bmc-luminary-site
git pull --ff-only
cd portfolio/automation
chmod +x deploy-update.sh
./deploy-update.sh .env
```

The helper refuses dirty tracked files, rebuilds the Ops API, runs additive migrations, refreshes the gateway, preserves production volumes/secrets/outreach switches, and ends with the runtime doctor.

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
- 54-service registry
- vendor/buyer seeds
- drained research backlog state
- exact 12-provider + 7-buyer First Wave
- outreach OFF switches
- private agent status
- SearXNG availability
- optional Ollama availability
- current launch gates and readiness checks

## Private administration from your computer

Do not publish `/admin`.

Use SSH port forwarding:

```bash
ssh -L 8000:127.0.0.1:8000 -L 5678:127.0.0.1:5678 -L 8888:127.0.0.1:8888 ubuntu@148.113.151.47
```

Then locally:
- BMC admin: `http://127.0.0.1:8000/admin`
- n8n: `http://127.0.0.1:5678`
- SearXNG: `http://127.0.0.1:8888`

Private agent status:

```bash
curl http://127.0.0.1:8000/api/admin/agent-status -H "X-BMC-Admin-Key: $BMC_ADMIN_KEY"
```

## Optional resident AI

The 12 GB VPS is deliberately designed to run without an LLM in the critical path.

Start the conservative utility model only after the core is healthy:

```bash
docker compose --profile local-ai up -d ollama
docker compose --profile local-ai exec ollama ollama pull qwen3:1.7b
```

A 3B–4B model can be tested later after measuring real memory/latency headroom. Heavy reasoning can later escalate to ENVY/Bonsai or an API model without changing the core transaction system.

## Public tunnel

After creating a remotely managed tunnel in Cloudflare:

```bash
git pull --ff-only
chmod +x configure-cloudflare.sh verify-public-ingress.sh
./configure-cloudflare.sh
```

Publish `hooks.bmcservicenetwork.com` to `http://webhook_proxy:8080` in Cloudflare, then:

```bash
./verify-public-ingress.sh
```

The verifier fails if private admin routes appear publicly reachable.

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
4. create `https://hooks.bmcservicenetwork.com/api/stripe-webhook`;
5. store signing secret;
6. run a small real/test-order validation.

## Backup

Create a portable dump:

```bash
./backup.sh
```

Prove the latest dump can actually restore without touching production:

```bash
./verify-backup.sh
```

Install the daily systemd timer (about 3:15 AM Arizona time):

```bash
./install-backup-timer.sh
```

Backups are compressed, checksummed and instance-named. OVH's provider backup is useful, but add a true off-host copy before meaningful customer data accumulates.

## White-label path

See `WHITE_LABEL.md`.

The current goal is a repeatable isolated single-tenant appliance. Do not build multi-tenant SaaS before BMC proves real routing, revenue, backup/restore, and a second clean deployment.
