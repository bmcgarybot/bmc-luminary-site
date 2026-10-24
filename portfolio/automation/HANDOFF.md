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
- 181 researched vendor prospects
- 156 unique researched buyer prospects
- 62 vendor prospects with public business email
- 34 buyer prospects with public business email
- 86+ institutional/facility prospects
- 0 active/pilot providers
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
- automatic READY / HOLD activation gate

No provider should move from prospect to pilot/active until the relevant checks are complete.

## Research Queue

Google Sheet tab: `Research Queue`

The environment-aware research backlog is generated from Coverage and also seeded into Postgres as `research_backlog`.
At the last regeneration it contained 702 real research tasks, with Tier-1 work sorted ahead of Tier-2/core research. Regenerate after major prospect batches so gap counts stay current.

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

Current Stripe blocker:
all payment method types, including card, report unavailable because onboarding/activation is incomplete.

Payment Links could not yet be created.

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

GitHub Pages build/deploy has succeeded.

Full CI smoke test has succeeded on the current architecture:
- Postgres starts
- schema and seeds load
- API health passes
- intake path works
- Stripe webhook/revenue path works
- dedupe behavior works

If a new thread continues work, re-check current CI before assuming latest commits are green.

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

1. Persist First Wave to runtime seed/queue.
2. Prepare exact first-send messages, but do not send.
3. Deploy HP runtime.
4. Configure SMTP/reply mailbox/postal address.
5. Configure Cloudflare Tunnel.
6. Activate 3+ pilot providers in one first niche.
7. Run one synthetic lead end-to-end.
8. Run one real lead end-to-end.
9. Complete Stripe activation and create Payment Links.
10. Sell first paid Growth/Competitor/Expansion product.
11. Submit search properties/sitemaps.
12. Expand provider and buyer coverage according to Coverage gaps.

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
