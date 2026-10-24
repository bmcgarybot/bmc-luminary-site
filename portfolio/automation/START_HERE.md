# HP Automation Appliance - Start Here

The GitHub build is the software package. It is **not running on the HP yet** until these files are cloned there and Docker is started.

## Current durable build status

As of October 24, 2026:
- 48 registered BMC service businesses
- 12 Arizona market hubs
- 210 researched vendor prospects
- 156 unique researched B2B buyer prospects
- public vendor and buyer outreach queues
- deterministic lead intake/matching API
- provider accept/decline + job-outcome tracking
- automatic offer expiry/rerouting and follow-up scheduler
- bounded autonomous operator for classification, exception triage, and research-queue ownership
- private autonomous research worker with staged candidate review
- Stripe webhook/revenue/subscription event handling
- four live Stripe products/prices created for fixed-price research offers
- GitHub Pages deploy pipeline active
- Google Drive Master Operations sheet remains the human-readable command center

### Current external blockers
These require account/device configuration rather than more application code:

1. **Stripe account activation**
   - the dedicated BMC Stripe account exists
   - products/prices are created
   - card and other payment methods currently report unavailable
   - complete Stripe onboarding/verification and enable a compatible payment method
   - after that, create Payment Links and write their URLs into `portfolio/data/billing.json` and the Billing sheet

2. **HP runtime deployment**
   - clone this repo onto the dedicated HP
   - create the real `.env`
   - run the bootstrap
   - confirm local health checks

3. **Public webhook ingress**
   - create/authorize the Cloudflare Tunnel
   - route `hooks.bmcluminaryventures.com` to the webhook proxy
   - create the Stripe webhook endpoint and put its signing secret in `.env`

4. **Outbound mail**
   - configure SMTP
   - configure the real BMC postal address
   - test opt-out/reply processing
   - only then enable vendor/buyer outreach

## Runtime stack
- PostgreSQL — leads, vendors, matches, outreach, events, payments, revenue
- BMC Ops API — deterministic intake/matching/status/payment engine
- n8n — orchestration, Sheets sync, research, AI helpers, reports
- scheduler — offer expiry/reroute, follow-up, guarded outreach, operator cycle
- BMC autonomous operator — internal classification/triage/research assignment; external actions locked
- SearXNG — private/local-only web search for research tasks
- nginx — webhook/API gateway
- Cloudflare Tunnel — public HTTPS ingress
- Ollama/Qwen3 1.7B — optional utility AI

## Linux first boot

```bash
git clone https://github.com/bmcgarybot/bmc-luminary-site.git
cd bmc-luminary-site/portfolio/automation
chmod +x bootstrap.sh start.sh stop.sh backup.sh runtime-doctor.sh
./bootstrap.sh
```

The core starts privately. Public outreach remains disabled.

## Local verification

```bash
curl http://127.0.0.1:8000/health
curl http://127.0.0.1:8888/config
docker compose ps
bash runtime-doctor.sh
```

The health response should report `ok: true`. `runtime-doctor.sh` also verifies the seeded 48-service registry, the 210-vendor / 156-buyer research pools, the 651-item research backlog, the exact 12-provider + 7-buyer First Wave, the outbound safety switches, the private admin preflight, the private agent status endpoint, private research-search availability, and the remaining external launch blockers.

Agent documentation: `AGENT.md`.

Private status:

```bash
curl http://127.0.0.1:8000/api/admin/agent-status -H "X-BMC-Admin-Key: $BMC_ADMIN_KEY"
```

The operator runs every 15 minutes. It may classify high-confidence ambiguous leads, triage exceptions, and maintain a five-task research queue. The research worker runs hourly by default and stages search discoveries for review. It cannot send prospecting, approve providers, make credential decisions, or move money.

Open the private local admin interface on the HP:

```
http://127.0.0.1:8000/admin
```

The private admin now includes both a **Pending pilot reviews** queue and a **Research candidates** queue. Provider activation submissions remain `pilot_pending_review` and unroutable until BMC explicitly approves them there after credential/insurance review. Research discoveries remain review-only evidence and are never auto-activated or auto-contacted.

Do not publish the admin interface through the public gateway.

## Before public launch

Edit `.env` and configure:
- SMTP_HOST / SMTP_USER / SMTP_PASSWORD
- SMTP_FROM
- BUSINESS_POSTAL_ADDRESS
- CLOUDFLARE_TUNNEL_TOKEN
- BMC_ADMIN_KEY
- STRIPE_WEBHOOK_SECRET

Then start the tunnel:

```bash
docker compose --profile tunnel up -d cloudflared
```

Optional utility AI:

```bash
docker compose --profile local-ai up -d ollama
docker compose --profile local-ai exec ollama ollama pull qwen3:1.7b
```

## Outreach safety

`OUTREACH_ENABLED=false` and `BUYER_OUTREACH_ENABLED=false` are the defaults.

The runtime also defaults to `OUTREACH_WAVE=pilot1` and `BUYER_OUTREACH_WAVE=pilot1`. The `pilot1` cohort is intentionally limited to **12 Prescott-area providers and 7 buyers** selected in the Master Operations `First Wave` tab. All other email-ready prospects remain `backlog` and are ineligible until the wave is deliberately changed.

Keep both false until:
- sending identity is correct
- real postal address is configured
- opt-out/reply handling is tested
- first campaign copy is manually reviewed
- a small seed batch is selected

Start low. The initial intent is controlled B2B outreach, not bulk blasting.

## Payment launch

Once Stripe payments become available:

1. create Payment Links for the four existing live prices
2. update the Billing sheet
3. update `portfolio/data/billing.json`
4. create Stripe webhook endpoint:
   `https://hooks.bmcluminaryventures.com/api/stripe-webhook`
5. subscribe to the checkout/subscription events used by the API
6. store the webhook signing secret in `.env`
7. run a real small-dollar/test-order validation before advertising paid checkout broadly

The public paid-offer pages already fall back to intake when no Payment Link is present.

## Updating

After pulling repository changes:

```bash
git pull
./bootstrap.sh
```

The schema and seed SQL are designed to be rerunnable without deleting live operational records.

## Backup

```bash
./backup.sh
```

Back up before major schema/runtime changes and before moving the appliance.
