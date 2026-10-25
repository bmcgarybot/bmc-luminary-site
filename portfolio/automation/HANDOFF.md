# BMC Arizona Service Portfolio — Thread / Machine Handoff

Updated: 2026-10-25

## Mission
Build BMC Luminary Ventures LLC into a managed Arizona local-service marketplace/concierge, not a passive directory.

The public pages are front doors. The product is:
structured intake → classification → provider matching → accept/decline → reroute → contact/estimate → won/lost → revenue tracking → repeat/recurring service.

Do **not** modify Quantum NeuroShift / QNS repositories, site, or infrastructure. QNS is separate.

## Source of truth

### GitHub
Repository:
`bmcgarybot/bmc-luminary-site`

Default branch:
`master`

Portfolio code:
`/portfolio/`

Important paths:
- `portfolio/data/services.json`
- `portfolio/data/market-fit.json`
- `portfolio/data/billing.json`
- `portfolio/automation/`
- `portfolio/automation/api/app.py`
- `portfolio/automation/schema.sql`
- `portfolio/automation/docker-compose.yml`
- `portfolio/automation/START_HERE.md`
- `portfolio/automation/OUTREACH.md`
- `portfolio/automation/EMAIL_TEMPLATES.md`
- `portfolio/automation/runtime-doctor.sh`
- `portfolio/automation/AGENT.md`
- `portfolio/automation/CLOUD_DEPLOY.md`
- `portfolio/automation/WHITE_LABEL.md`
- `portfolio/automation/provision-cloud.sh`
- `portfolio/automation/configure-cloudflare.sh`
- `portfolio/automation/verify-public-ingress.sh`
- `portfolio/automation/verify-backup.sh`
- `portfolio/automation/install-backup-timer.sh`
- `portfolio/automation/searxng/settings.yml`

### Google Drive
Connected account verified earlier:
`bmc.foodsafetyprofessionals@gmail.com`

Master sheet:
BMC Arizona Service Portfolio - Master Operations

Spreadsheet ID:
`1Ka-RDKKniq-RaYD90a1QvSDVZRhsPVHJUe76rQJeaUE`

Important tabs:
- Dashboard
- Launch Checklist
- First Wave
- Markets
- Services
- Vendors
- Buyers
- Coverage
- Outreach
- Billing
- Leads
- Exceptions

## Customer-facing domain

Permanent public brand: **BMC Service Network**
Permanent domain: `bmcservicenetwork.com`
Registrar: Namecheap
Legal operator: **BMC Luminary Ventures LLC**

Public URL plan:
- main site: `https://bmcservicenetwork.com`
- secure intake/webhooks: `https://hooks.bmcservicenetwork.com`
- planned primary mailbox: `contact@bmcservicenetwork.com`

The domain was purchased on 2026-10-24 and is delegated to Cloudflare using `iris.ns.cloudflare.com` and `will.ns.cloudflare.com`. Cloudflare reports the zone active/protected on the Free plan. The customer site is now deployed through Cloudflare Pages from the repository `portfolio/` directory at `https://bmc-service-network.pages.dev`, keeping service URLs clean (for example `/tree-service/`, not `/portfolio/tree-service/`). The next step is attaching `bmcservicenetwork.com` as the Pages custom domain. Do not revive the old domain placeholder.

## Production VPS access

Production server:
- Provider/plan: OVHcloud VPS-3 2027, no commitment
- Datacenter: Beauharnois, Canada East
- Hostname: `vps-5675821a.vps.ovh.ca`
- IPv4: `148.113.151.47`
- OS: Ubuntu 26.04 LTS x86_64
- Capacity: 6 vCPU / 12 GB RAM / 100 GB NVMe / 2 Gbps unlimited
- SSH user: `ubuntu`

Normal login from Brett's Mac:

```bash
ssh ubuntu@148.113.151.47
cd ~/bmc-luminary-site/portfolio/automation
```

Private admin/n8n/SearXNG access should use SSH port forwarding from the Mac:

```bash
ssh -L 8000:127.0.0.1:8000 -L 5678:127.0.0.1:5678 -L 8888:127.0.0.1:8888 ubuntu@148.113.151.47
```

While that SSH session remains open, use locally:
- BMC admin: `http://127.0.0.1:8000/admin`
- n8n: `http://127.0.0.1:5678`
- SearXNG: `http://127.0.0.1:8888`

Useful server checks from `~/bmc-luminary-site/portfolio/automation`:

```bash
docker compose ps
bash runtime-doctor.sh
./backup.sh
```

Never put the VPS password, SSH private key, Cloudflare Tunnel token, Stripe secrets, SMTP password, or `.env` contents in the handoff, Google Sheet, GitHub, or chat. The IP/hostname and SSH username are operational identifiers, not secrets.

## Current portfolio state

- 48 registered service businesses
- 12 Arizona market hubs
- 576 market × service combinations
- 210 researched vendor prospects
- 156 unique researched buyer prospects
- 87 vendor prospects with public business email
- 34 buyer prospects with public business email
- 86+ institutional/facility prospects
- 0 active/pilot providers
- First Wave public credential review: 4 COMPLETE / 8 PARTIAL
- Prescott tree/landscape cluster has 3 publicly credential-complete candidates: ZebraScapes, Yavapai Landscaping, and Jonny's
- public credential review does **not** replace direct provider COI/license confirmation or pilot acceptance
- 0 live leads; production cloud runtime is now deployed and healthy, but public ingress/provider activation are not live yet
- First Wave: 19 READY — NOT SENT
  - 12 providers
  - 7 buyers

All new service fronts are under the BMC portfolio. Do not touch the existing QNS properties.

## Pilot Activation

Google Sheet tab: `Pilot Activation`

The 12 First Wave providers have explicit readiness checks for:
- pilot terms
- identity verification
- credentials review
- routing status
- unique activation URL
- automatic HOLD / READY FOR BMC REVIEW gate

The production flow now preserves the existing researched vendor record end-to-end:
- `pilot1` provider outreach uses the dedicated `/portfolio/provider-pilot-activate/` link, not the generic vendor application
- submission changes only that vendor to `pilot_pending_review`
- the provider remains unroutable in that state
- the private local `/admin` page has a **Pending pilot reviews** queue
- explicit BMC approval is required before status becomes `pilot`
- approval resolves the pilot-review exception and records a `pilot_approved` event

No provider should move from prospect to pilot/active until the relevant checks are complete. Public research may move `credentials_review` to COMPLETE, but actual routing approval still requires provider pilot acceptance plus direct credential/insurance confirmation appropriate to the service.

## Research Queue

Google Sheet tab: `Research Queue`

The environment-aware research backlog is generated from Coverage and also seeded into Postgres as `research_backlog`.
At the last regeneration it contained 651 real research tasks, with Tier-1 work sorted ahead of Tier-2/core research. Regenerate after major prospect batches so gap counts stay current.

## First Wave provider cohort

Use the Google Sheet `First Wave` tab as canonical.

Priority examples:
1. ZebraScapes Landscaping & Services
2. Yavapai Landscaping
3. Bradshaw Fuel Mitigation LLC
4. Jonny's Tree and Landscaping
5. A and C Tree Services
6. Vicente Landscaping
7. KBD Contracting LLC
8. Scoop & Skedaddle
9. Swept Away AZ
10. American Crown Commercial Cleaning
11. Window Wranglers
12. Source One Supply

Pilot positioning:
- first qualified BMC lead/request free where appropriate
- no surprise subscription
- no paid lead terms until provider agrees
- recruit by service/territory/capacity
- verified Chamber/BBB/Firewise/directory credibility may be used as personalization only when actually verified

## First Wave buyer cohort

Canonical list is the `First Wave` sheet.

Initial buyers:
- LifePointe Church
- Prescott Valley United Methodist Church
- Prescott Valley Performing Arts / Main Street Theatre
- BASIS Prescott
- La Tierra Community School
- Trinity Christian School
- Prescott Unified School District Facilities

Facility pitch:
BMC is a managed request/coordination layer for cleaning, grounds, specialty maintenance, and project vendors. Do not imply public-sector buyers can bypass procurement.

## Outreach safety

Nothing has been sent.

Global vendor/buyer outreach switches remain OFF.

Do not enable outbound until:
- sender SMTP is configured
- monitored reply/IMAP mailbox is configured
- SPF/DKIM/DMARC are correct
- real BMC postal address is configured
- opt-out flow is tested
- first batch copy is reviewed
- launch cohort is selected

Do not blast all researched prospects.

## Stripe

Connected Stripe account:
BMC Luminary Ventures LLC
Account ID:
`acct_1UU9OfQU2BLM8GhL`

Dedicated live account is newly created.

Live Stripe products/prices already created:
- BMC Local Growth Pack — $499
  - product `prod_VVALyVr6R1NGuw`
  - price `price_1UUA0jQU2BLM8GhLhFJt2sDd`
- BMC Premium Growth Pack — $749
  - product `prod_VVALITlv81V4Tp`
  - price `price_1UUA0pQU2BLM8GhLnyZQPMPu`
- BMC Local Competitor Intelligence Pack — $299
  - product `prod_VVALDbksuY3Urv`
  - price `price_1UUA0rQU2BLM8GhLFCfeeSZ1`
- BMC Local Market Expansion Pack — $699
  - product `prod_VVALUxBVT90wjM`
  - price `price_1UUA0tQU2BLM8GhLP9LS7wUn`

Current Stripe blocker, independently re-checked against the live account on 2026-10-24:
- `details_submitted=false`
- `charges_enabled=false`
- `payouts_enabled=false`
- `card_payments=inactive`
- Stripe still requires completion of business profile, representative information, statement descriptor, and Terms acceptance

Payment Links cannot be created until account onboarding enables payment methods. Do not treat this as a code defect.

Do not create Stripe Connect yet. BMC is not currently collecting the contractor's full job payment and splitting it to vendors.

Backend already supports Stripe webhook event verification, payment/revenue events, dedupe and subscription state.

## Runtime architecture

Production target is now a small always-on cloud VPS rather than a home appliance.

Deployed production class:
- Ubuntu 26.04 LTS x86_64
- OVHcloud VPS-3 2027, Beauharnois
- 6 vCPU
- 12 GB RAM
- 100 GB NVMe
- 2 Gbps unlimited public bandwidth
- Docker Engine + Compose
- PostgreSQL
- BMC deterministic FastAPI Ops API
- n8n
- scheduler
- nginx webhook-only gateway
- Cloudflare Tunnel
- private SearXNG research search
- optional Ollama + Qwen3 1.7B utility model

The live production target is the OVHcloud VPS-3 class above. The stack remains provider-neutral.

All application ports bind to 127.0.0.1. Cloudflare Tunnel provides public webhook ingress without publishing n8n, SearXNG, Ollama, Postgres, or the admin interface. Private admin/n8n access should use SSH port forwarding.

The Compose stack keeps conservative memory ceilings and log rotation originally sized for the 8 GB class; the deployed 12 GB VPS therefore has additional headroom. The deterministic core runs without an LLM; the resident model is optional and capped so it cannot become the business operating system.

ENVY/Mac/Bonsai remain optional escalation AI workers.

Start with:
- `portfolio/automation/START_HERE.md`
- `portfolio/automation/CLOUD_DEPLOY.md`

Future white-label direction is documented in `portfolio/automation/WHITE_LABEL.md`: isolated, clonable single-tenant deployments first; multi-tenant SaaS later only after BMC proves the transaction loop.

After bootstrap, `runtime-doctor.sh` verifies Docker/Compose, cloud target resources, API/Postgres health, service/vendor/buyer seeds, exact 12-provider + 7-buyer `pilot1` cohort, outreach OFF switches, research backlog, private agent status and remaining external launch blockers.

Seed rerun safety is now enforced: `seed-vendors.sql` refreshes researched prospect records but will not overwrite vendors once their status is `applicant`, `pilot_pending_review`, `pilot`, `active`, `paused`, or `suppressed`. CI re-applies the vendor seed after a simulated activation submission and verifies the pending status, capacity, and insurance data survive. This matters because `bootstrap.sh` deliberately re-applies seeds on rerun.

## Autonomous operator

The bounded BMC operator V1 is now implemented in the Ops API and documented in `portfolio/automation/AGENT.md`.

It runs every 15 minutes through the scheduler and can:
- inspect open `classification_needed` leads;
- use the optional local Qwen/Ollama classifier;
- auto-apply only catalog-valid classifications at or above 0.82 confidence;
- route that lead through the existing deterministic matcher;
- create human-review tasks for low-confidence/unavailable AI;
- convert unresolved operational exceptions into owned tasks;
- assign the highest-priority queued coverage gaps to `research_agent` tasks;
- persist every run in `agent_runs` and `events`.

Private endpoints:
- `POST /api/agent-cycle`
- `GET /api/admin/agent-status`

The operator now also has a bounded autonomous research worker:
- private self-hosted SearXNG search service;
- operator holds at most 5 outstanding `research_agent` tasks by default;
- research worker runs one task per hour by default;
- search results are staged in `research_candidates` with title, URL, domain, snippet, query, rank and evidence;
- private admin exposes the staged candidate queue for review/reject state;
- discoveries are never inserted directly into the live provider network;
- discoveries are never contacted automatically.

Additional private endpoints:
- `POST /api/process-research`
- `GET /api/admin/research-candidates`
- `POST /api/admin/research-candidate-status`

The agent still performs **zero consequential external actions**. It cannot:
- send vendor/buyer prospecting;
- approve providers or credentials;
- activate a provider;
- charge/refund money.

The current research worker is first-pass discovery from search-result evidence. Deeper candidate-site crawling, contact extraction, multi-source evidence scoring, and reviewed-candidate promotion remain future improvements.

## Current runtime blockers

1. Cloud VPS deployed and healthy; Cloudflare Pages is deployed; remaining runtime work is custom-domain attachment, hooks tunnel, email, Stripe, and provider activation.
2. Cloudflare DNS is active for `bmcservicenetwork.com`; the Tunnel helper is built, but the production tunnel is not yet authorized/configured.
3. Main site is deployed on Cloudflare Pages at `bmc-service-network.pages.dev`; `bmcservicenetwork.com` is not yet attached as the Pages custom domain, and `hooks.bmcservicenetwork.com` is not yet published through the tunnel to `http://webhook_proxy:8080`.
4. SMTP sender not configured.
5. Reply/IMAP mailbox not configured.
6. BMC postal address not configured for outbound.
7. Stripe onboarding/payment-method activation incomplete.
8. No provider has been moved from prospect → pilot/active yet.
9. Google Search Console not verified/submitted.
10. Bing Webmaster / IndexNow not configured.

## Validation state

Most recent fully verified CI baseline:
`0b69cc61e51099fc2e4ca1968d6075abae62b3e6`

GitHub Actions run `40147496935` completed successfully on 2026-10-25 after aligning CI database startup with the production bootstrap. It includes the previously verified autonomous operator/research worker and the new 8 GB cloud resource limits, log rotation, startup/backup changes, cloud deployment docs and handoff.

The green CI now proves:
- Python API syntax
- 48-service/front registry validation
- Docker Compose validation
- Postgres + API boot
- service/vendor/buyer seeds
- 651 normalized queued research gaps on a fresh database
- exact 12-provider + 7-buyer First Wave cohort
- `runtime-doctor.sh`
- bounded operator creates exactly 5 concurrent research tasks
- second operator cycle respects the 5-task cap
- deterministic mock web search is processed by the research worker
- research results become review-only staged candidates
- research candidate admin review state works
- zero outreach is sent during agent/research execution
- live provider state survives vendor-seed reruns
- dedicated First Wave activation URL/copy
- existing-vendor activation to `pilot_pending_review`
- private BMC pilot approval to `pilot`
- ordinary lead intake
- real provider accept/contact-release path
- internal Growth Pack fulfillment path
- Stripe webhook/revenue/order/dedupe path

The cloud-targeted code is **CI GREEN and deployed to the production VPS**. Runtime doctor reports `Core failures: 0`. The first checksummed Postgres dump was verified on 2026-10-25 by restoring it into an isolated temporary database: 48 services, 210 vendors, 156 buyers, and 651 research rows all restored successfully without modifying production. A systemd timer now runs the portable Postgres backup daily at approximately 10:15 UTC / 3:15 AM America/Phoenix, in addition to OVH's provider-level automated backup.

## SEO / AI discovery

Implemented:
- robots.txt
- sitemap.xml
- OAI-SearchBot allowed
- canonical markup
- BMC Organization schema
- market hubs
- SEO status tracking
- new/thin service fronts intentionally use `noindex` until they have real local depth/provider coverage

Still needed:
- Google Search Console verification + sitemap submission
- Bing Webmaster Tools + IndexNow
- enrich priority market/service pages before removing noindex
- backlinks/citations/vendor references over time
- no fake Google Business Profiles for lead-gen fronts

## Critical next sequence

Do not add random new business ideas before clearing these:

1. Keep both global outreach switches OFF.
2. Keep the verified daily portable Postgres backup timer healthy; keep OVH automated backup as the provider-level layer and add a true off-host copy before meaningful customer data accumulates.
3. Create the remotely managed Cloudflare Tunnel, run `./configure-cloudflare.sh`, publish `hooks.bmcservicenetwork.com` to `http://webhook_proxy:8080`, then run `./verify-public-ingress.sh`. The verifier must prove `/admin` and `/api/admin/preflight` remain 404 publicly. Keep admin/n8n/SearXNG private via SSH forwarding.
4. Configure transactional SMTP, monitored reply/IMAP, SPF/DKIM/DMARC, and the real BMC postal address.
6. Invite only the curated `pilot1` providers using their dedicated activation links. The Prescott tree/landscape cluster already has three publicly credential-complete targets (ZebraScapes, Yavapai Landscaping, Jonny's).
7. Review activation submissions in the private **Pending pilot reviews** queue, obtain direct COI/license confirmation as applicable, and explicitly approve 3+ providers in that first niche.
8. Run one synthetic lead end-to-end.
9. Run one real lead end-to-end.
10. Complete Stripe activation and create the four Payment Links.
11. Sell the first paid Growth/Competitor/Expansion product.
12. Reconcile the Windsor.ai connection state, then verify the BMC Google Search Console property/data before marking Search Console complete; configure Bing/IndexNow separately.
13. Expand provider and buyer coverage according to Coverage gaps.

## Working rule

The goal is not "48 websites."

The goal is one shared operating system supporting 48 focused businesses. Every niche should eventually support:
- intake
- provider supply
- buyer demand
- routing
- outcome tracking
- monetization
- exceptions
- analytics
- repeat-service opportunity

When continuing in another conversation, tell ChatGPT:

> Continue the BMC Arizona Service Portfolio build from `portfolio/automation/HANDOFF.md` in `bmcgarybot/bmc-luminary-site` and the Google Sheet `BMC Arizona Service Portfolio - Master Operations`. Do not touch QNS. Verify current CI and Dashboard first, then continue the Critical next sequence without re-planning the whole business.
