# BMC Arizona Service Portfolio — Thread / Machine Handoff

Updated: 2026-10-24

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
- 0 live leads because runtime is not deployed yet
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

Planned HP x360 automation appliance:
- 2018 HP x360
- 8 GB RAM
- ideally lightweight Linux
- Docker
- PostgreSQL
- BMC deterministic FastAPI ops API
- n8n
- scheduler
- nginx webhook-only gateway
- Cloudflare Tunnel
- optional Ollama + Qwen3 1.7B utility model

ENVY/Mac/Bonsai remain escalation AI workers. AI is not required for core intake/routing.

Start with:
`portfolio/automation/START_HERE.md`

After bootstrap, `runtime-doctor.sh` verifies the local core instead of treating "containers started" as success. It checks Docker/Compose, API/Postgres health, service/vendor/buyer seeds, exact 12-provider + 7-buyer `pilot1` cohort, outreach OFF switches, research backlog, and the private launch preflight. Missing SMTP/IMAP/postal/Cloudflare/Stripe setup is reported as an external warning rather than silently hidden.

Seed rerun safety is now enforced: `seed-vendors.sql` refreshes researched prospect records but will not overwrite vendors once their status is `applicant`, `pilot_pending_review`, `pilot`, `active`, `paused`, or `suppressed`. CI re-applies the vendor seed after a simulated activation submission and verifies the pending status, capacity, and insurance data survive. This matters because `bootstrap.sh` deliberately re-applies seeds on rerun.

## Current runtime blockers

1. HP appliance not deployed yet.
2. Cloudflare Tunnel not authorized/configured.
3. `hooks.bmcluminaryventures.com` not routed to the HP.
4. SMTP sender not configured.
5. Reply/IMAP mailbox not configured.
6. BMC postal address not configured for outbound.
7. Stripe onboarding/payment-method activation incomplete.
8. No provider has been moved from prospect → pilot/active yet.
9. Google Search Console not verified/submitted.
10. Bing Webmaster / IndexNow not configured.

## Validation state

Latest code head immediately before this handoff refresh: `8b66f0e77f912bc6a4c939a90c7903f12df00b60`.

The last directly recorded GitHub Actions run was green before the newest activation-review/runtime-doctor commits. The available GitHub connector can read the latest commits and workflow file but does not expose push-based Actions check-runs for this repository, so **do not claim the newest head is green until the latest Actions run is independently confirmed**.

The CI workflow itself now covers:
- Python API syntax
- 48-service/front registry validation
- Docker Compose validation
- Postgres + API boot
- service/vendor/buyer seeds
- exact 12-provider + 7-buyer First Wave cohort
- `runtime-doctor.sh`
- live provider state survives vendor-seed reruns
- dedicated First Wave activation URL/copy
- existing-vendor activation to `pilot_pending_review`
- private BMC pilot approval to `pilot`
- ordinary lead intake
- real provider accept/contact-release path
- internal Growth Pack fulfillment path
- Stripe webhook/revenue/order/dedupe path

The Master Operations Dashboard now labels backend smoke status **GREEN — LAST VERIFIED**, not current-head green. Re-check GitHub Actions before changing that wording back.

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
2. Deploy the HP runtime from `START_HERE.md`; bootstrap now runs `runtime-doctor.sh` automatically.
3. Confirm the newest GitHub Actions run is green before treating that HP deploy as release-ready.
4. Configure transactional SMTP, monitored reply/IMAP, SPF/DKIM/DMARC, and the real BMC postal address.
5. Configure the Cloudflare Tunnel and route `hooks.bmcluminaryventures.com`.
6. Invite only the curated `pilot1` providers using their dedicated activation links. The Prescott tree/landscape cluster already has three publicly credential-complete targets (ZebraScapes, Yavapai Landscaping, Jonny's).
7. Review activation submissions in the private **Pending pilot reviews** queue, obtain direct COI/license confirmation as applicable, and explicitly approve 3+ providers in that first niche.
8. Run one synthetic lead end-to-end.
9. Run one real lead end-to-end.
10. Complete Stripe activation and create the four Payment Links.
11. Sell the first paid Growth/Competitor/Expansion product.
12. Submit Google/Bing search properties and sitemaps.
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
