# BMC Service Network — Master Handoff

Updated: 2026-10-25

This file is the starting point for the next conversation/thread. Read this before doing new work.

## 1. What BMC actually is

### Public copy rule — authoritative

Customer-facing copy must use plain, natural language and must not narrate BMC's internal architecture or strategy.

Read:
- `portfolio/automation/PUBLIC_COPY_STYLE.md`

Target roughly 6th-8th grade reading level. Customer pages should say what the customer can do or get. Internal documents explain routing, taxonomy, fulfillment, monetization, automation, and other operator concepts.

### Problem-solver architecture — authoritative

The umbrella experience is now organized around customer outcomes rather than a catalog:

- **Fix or handle a job** → universal/niche service request → provider match
- **Get me options** → quote/procurement sourcing
- **Keep it handled** → recurring facility/restaurant/property concierge
- **Help me spend less** → vendor/waste audit + rebid/sourcing
- **Help me get more customers** → Growth Packs / competitor intel / market expansion

Read:
- `portfolio/automation/CUSTOMER_PATHS.md`

The homepage was updated to expose these five paths directly. Treat this as the current customer-journey architecture.

Legal entity: **BMC Luminary Ventures LLC**

Public umbrella: **BMC Service Network**

Permanent domain:
- `https://bmcservicenetwork.com`

Public intake/webhook gateway:
- `https://hooks.bmcservicenetwork.com`

Primary mailbox:
- `contact@bmcservicenetwork.com`

BMC is **not** a passive directory and is **not** supposed to depend on 53 pages waiting for Google traffic.

The intended operating model is one shared automation/data/vendor system supporting many focused revenue engines and niche storefronts.

The sites are acquisition/conversion endpoints. The strategic asset is:
- verified providers;
- buyer/customer relationships;
- routing history;
- acceptance/close history;
- reusable automation;
- recurring revenue relationships;
- productized B2B data/research products.

See:
- `portfolio/automation/BUSINESS_MODEL.md`

Do not touch Quantum NeuroShift/QNS. It is unrelated.

## 2. Original business model restored

The uploaded October 2026 portfolio plans confirm that early acquisition was intended to be **outreach-led**, not SEO-dependent.

### Revenue engine A — Growth / Prospecting Packs

Original offer:
- $499 for 100 qualified prospects;
- $749 premium package with competitor snapshot + outreach plan;
- after three paid orders, test a $149-$249/month refresh.

Current Stripe products:
- BMC Local Growth Pack — $499
- BMC Premium Growth Pack — $749
- BMC Local Competitor Intelligence Pack — $299
- BMC Local Market Expansion Pack — $699

This revenue engine can produce cash before the local-service routing marketplace has large traffic.

### Revenue engine B — Service Match / accepted leads

Customer submits a real need → BMC qualifies/routes → provider sees job → accepts/declines → contact is released → BMC tracks outcome.

Original monetization:
- accepted lead fee;
- booked-job fee;
- referral/marketing fee where permitted;
- exclusive monthly territory subscription.

Original plan says:
- recruit providers asynchronously;
- run initial leads free or low-cost to prove quality;
- then convert strong providers to pay-per-lead or paid exclusive territory.

Original first-$5K modeling used:
- $75 accepted leads;
- $100 accepted leads;
- $1,000/month territories.

These are modeling examples, not universal final prices for every trade.

### Provider policy going forward

Recommended early policy:
- provider network is free to join;
- no surprise monthly subscription;
- no charge simply for being listed;
- first qualified opportunities may be free/low-cost to prove quality;
- once BMC proves value, provider explicitly accepts pay-per-accepted-lead, booked-job, referral/marketing, or territory terms;
- do not charge without explicit accepted commercial terms.

Do not confuse "free to join" with "unverified provider." Credentials, insurance/license and explicit pilot acceptance still matter where applicable.

### Revenue engine C — Maintenance / facility concierge

Original restaurant pilot:
- reminders;
- recurring service dates;
- one-click approval;
- vendor routing;
- certificates/invoices supplied by vendors;
- preferred-vendor reuse.

Original early price concept:
- $49-$149/month only after obvious administrative value is proven;
- partner revenue can be layered on.

Expand later to:
- churches;
- schools;
- theaters;
- offices;
- gyms;
- daycare;
- senior living;
- medical;
- property/facility operators.

### Revenue engine D — Quote/procurement concierge

Buyer submits a need → BMC sources viable vendors/quotes.

Potential monetization:
- buyer service fee;
- supplier referral/marketing fee where permitted;
- sourcing fee.

### The "$8,333/month" memory

The source plan does **not** contain a fixed $8,333 bulk-lead package.

Treat ~$8.3K/month as the approximate monthly run rate for a six-figure/year business, reached through a mix of:
- Growth Packs;
- accepted leads;
- territory subscriptions;
- recurring prospect refreshes;
- concierge accounts;
- procurement/referral revenue.

The original plan explicitly modeled mixed revenue rather than expecting one product to carry the business.

## 3. Acquisition engine — critical correction

Early BMC demand should not rely mainly on strangers discovering the umbrella website.

Original acquisition stack:
- compliant targeted B2B email = primary early outbound;
- inbound landing pages = conversion endpoints + later SEO;
- selective contact-form outreach;
- referral partners;
- direct mail for high-value hard-to-reach accounts;
- LinkedIn/social DMs optional;
- paid search only after fulfillment/monetization works manually.

Examples of buyer lists BMC should actively research/outreach:
- schools;
- churches;
- theaters;
- daycare;
- medical offices;
- restaurants;
- apartment/property managers;
- offices;
- gyms;
- senior living;
- community centers;
- retailers;
- hospitality;
- facilities.

Provider acquisition runs in parallel:
- electricians;
- HVAC;
- handyman;
- house cleaners;
- tree/landscape;
- towing/roadside;
- restaurant repair;
- commercial cleaning;
- pet;
- etc.

Community recommendations from public Nextdoor/Facebook/local sources are valuable **research signals**, not automatic provider approval.

Machine:
```
BUYER RESEARCH/OUTREACH
        ↓
CUSTOMER REQUEST / PURCHASE
        ↓
BMC CLASSIFICATION + ROUTING
        ↓
VERIFIED PROVIDER NETWORK
        ↓
ACCEPT / DECLINE / CONTACT / OUTCOME
        ↓
LEAD / TERRITORY / PRODUCT / CONCIERGE REVENUE
```

## 4. Automation target

Original staged model remains correct.

### $0-$1K
AI assists:
- research;
- enrichment;
- scoring;
- drafting;
- documents.

Human reviews consequential output.

### $1K-$5K
n8n becomes workflow operator:
- creates jobs/records;
- moves statuses;
- sends routine mail;
- follow-up;
- delivery packages;
- exception creation.

Human reviews exceptions.

### $5K-$15K
Exception-based operations:
- most intake/routing/reminders/fulfillment automated;
- Brett handles QA, unusual cases, disputes, approvals, and commercial decisions.

### $15K+
Portfolio operator:
- separate queues/agents by business;
- add compute only when throughput/latency actually affects revenue.

Current bounded operator remains intentionally unable to:
- approve providers;
- send uncontrolled outreach;
- charge/refund money.

## 5. Public-site design rule

Recent user feedback is authoritative:

**Customer pages should solve pain, not explain BMC.**

Do not lead with:
- "two sides of a network";
- portfolio architecture;
- provider monetization;
- internal categories;
- "managed concierge";
- "provider matching workflow";
- technical status language.

Customer above-the-fold should answer:
- What problem can you solve?
- Do you serve me?
- What is the easiest next action?

Preferred design direction:
- warm, approachable editorial look inspired by the Lovable Apex law template;
- strong photography/video;
- generous whitespace;
- modern typography;
- clear one-action hero;
- mobile-first;
- subtle motion/scroll reveals;
- not dark/admin/dashboard styling;
- no giant 53-item selects.

Provider side should feel like a separate product:
- BMC Partner Network;
- territory/services/capacity;
- accept/pass;
- commercial terms;
- job updates.

They share backend infrastructure but should not feel like one confused site.

## 6. Website state at thread end

### Newer customer experience

Recent work added:
- customer-first editorial CSS;
- real imagery;
- mobile-specific layout;
- sticky mobile CTA;
- scroll reveal / subtle image motion;
- simplified homepage focused on "What do you need help with?";
- general request flow reduced to:
  1. What needs to get done?
  2. Where/when?
  3. How can BMC reach you?
- no giant service/category dropdown;
- deterministic plain-English classifier for common categories before optional local AI;
- service explorer using search/cards rather than one huge dropdown.

Latest CSS/JS version markers include `clarity-7` / related editorial versions.

### Critical unresolved website problem

The public portfolio is still **mixed-generation**.

Some links still open old dark pages branded:
- "BMC Service Portfolio"

Example observed by user:
- Towing & Roadside page still old dark design.

This is unacceptable for launch.

Do **not** manually polish pages one-by-one forever.

Next thread should create/use one shared modern customer storefront template/generator and migrate every old service front systematically.

Priority launch fronts for Prescott/PV:
- Electrical
- Heating & Air Conditioning
- Handyman
- House Cleaning
- Tree & Defensible Space
- Landscaping
- Junk/Hauling
- Realtor Listing Prep
- Home Staging
- Commercial Cleaning
- Facility Maintenance
- Towing/Roadside

Use real relevant imagery. Video can be added selectively later; do not use heavy autoplay video if it hurts mobile performance.

### Audience separation

Customer pages should default to customers.

Provider recruiting should not compete with the main customer CTA. A subtle "service business / partner network" link is acceptable in footer or an unobtrusive audience switch.

## 7. Portfolio / market data

Current catalog has **53 service fronts**, not the older 48.

Five added fronts:
- Electrical Repair & Installation
- Handyman & Small Home Repairs
- House Cleaning & Deep Cleaning
- Home Staging & Listing Styling
- Realtor Listing Prep Concierge

HVAC public name changed to:
- Heating & Air Conditioning

The original 12-market Arizona rollout remains:
- Prescott
- Prescott Valley
- Chino Valley
- Cottonwood
- Camp Verde
- Sedona
- Flagstaff
- Winslow
- Kingman
- Phoenix
- Scottsdale
- Tucson

Prescott/Prescott Valley/Chino remain first operational cluster.

The saved market-fit logic should be preserved and used to decide which services get emphasis by city.

## 8. Community signal research

A public community-signal research artifact was added for Prescott/PV:
- `portfolio/data/community-signals-prescott.json`

It contains candidate signals for:
- electricians;
- HVAC;
- handymen;
- residential cleaners;
- home staging.

These are research candidates only. Do not claim they are verified/contracted BMC providers until onboarding/credentials are complete.

## 9. First Wave / real providers

Original First Wave remains important.

Provider examples:
- ZebraScapes
- Yavapai Landscaping
- Bradshaw Fuel Mitigation
- Jonny's Tree & Landscaping
- A and C Tree Services
- Vicente Landscaping
- KBD Contracting
- Scoop & Skedaddle
- Swept Away AZ
- American Crown Commercial Cleaning
- Window Wranglers
- Source One Supply

Buyer examples:
- LifePointe Church
- Prescott Valley UMC
- Prescott Valley Performing Arts / Main Street Theatre
- BASIS Prescott
- La Tierra Community School
- Trinity Christian School
- Prescott Unified School District Facilities

Public credential research previously found 4 COMPLETE and 8 PARTIAL in First Wave.

Direct provider acceptance and relevant COI/license/insurance verification are still required.

## 10. Synthetic end-to-end test

Synthetic provider:
- `test_bmc_tree_provider`
- special market `__BMC_SYNTHETIC_TEST__`

The code explicitly excludes `test_%` vendors from real launch readiness.

Synthetic workflow was verified through:
- customer intake;
- customer receipt email;
- provider offer email;
- provider accept;
- customer/provider contact-release emails;
- provider job-update page;
- at least one successful job-status submission.

Email fixes made during test:
- human-readable service names;
- correct `bmcservicenetwork.com` URLs;
- HTML email buttons with text fallback;
- plainer customer/provider wording.

Synthetic data may still be in production.

When done:
```bash
cd ~/bmc-luminary-site/portfolio/automation
bash ./synthetic-e2e-test.sh cleanup
```

Then verify real launch readiness remains blocked until a real provider is activated.

## 11. Production infrastructure

VPS:
- OVHcloud
- host `vps-5675821a.vps.ovh.ca`
- IPv4 `148.113.151.47`
- user `ubuntu`
- Ubuntu 26.04.x
- 6 vCPU / 12 GB RAM / 100 GB NVMe

Normal:
```bash
ssh ubuntu@148.113.151.47
cd ~/bmc-luminary-site/portfolio/automation
```

Private tunnel:
```bash
ssh -L 8000:127.0.0.1:8000 -L 5678:127.0.0.1:5678 -L 8888:127.0.0.1:8888 ubuntu@148.113.151.47
```

Private:
- Admin: `http://127.0.0.1:8000/admin`
- n8n: `http://127.0.0.1:5678`
- SearXNG: `http://127.0.0.1:8888`

Docker:
- cloudflared
- n8n
- ops_api
- Postgres
- scheduler
- SearXNG
- webhook_proxy

Public ingress was verified:
- intended webhook routes exposed;
- admin/preflight blocked publicly.

Daily Postgres backup timer exists and isolated restore testing previously passed.

## 12. Email / compliance

Namecheap Private Email is configured:
- `contact@bmcservicenetwork.com`

SMTP + IMAP were verified.

SPF/DKIM were configured.

A valid BMC business postal address is configured in private production `.env`.
Exact address intentionally not stored in GitHub/handoff.

Runtime doctor previously reported:
- `outreach_ready: READY`

Important:
**Outreach switches are still OFF. Nothing has been sent.**

Do not enable prospecting without explicit user approval.

DMARC is still a desirable pre-scale improvement.

## 13. Stripe

Stripe account:
- `acct_1UU9OfQU2BLM8GhL`

Products:
- Growth $499 — `prod_VVALyVr6R1NGuw` / `price_1UUA0jQU2BLM8GhLhFJt2sDd`
- Premium $749 — `prod_VVALITlv81V4Tp` / `price_1UUA0pQU2BLM8GhLnyZQPMPu`
- Competitor Intel $299 — `prod_VVALDbksuY3Urv` / `price_1UUA0rQU2BLM8GhLFCfeeSZ1`
- Expansion $699 — `prod_VVALUxBVT90wjM` / `price_1UUA0tQU2BLM8GhLP9LS7wUn`

Live account was re-checked this thread:
- `details_submitted=false`
- `charges_enabled=false`
- `payouts_enabled=false`

So:
- Stripe account/products exist;
- do NOT create another Stripe account;
- finish Stripe onboarding/profile/representative/descriptor/TOS;
- then configure live webhook:
  `https://hooks.bmcservicenetwork.com/api/stripe-webhook`

No Stripe Connect yet.

## 14. Watchdog / failure visibility

An independent watchdog was added because n8n should not monitor only itself.

Files:
- `portfolio/automation/ops-watchdog.py`
- `portfolio/automation/install-watchdog.sh`
- `portfolio/automation/watchdog-status.sh`

It checks:
- Docker core services;
- Postgres;
- Ops API;
- n8n;
- SearXNG;
- public website;
- Cloudflare ingress;
- disk space;
- BMC exceptions;
- recent n8n failed/crashed executions when available.

It emails only on state change / recovery to avoid spam.

**Installation on the VPS has NOT been confirmed.**

Next thread should deploy/install:
```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
bash ./install-watchdog.sh
```

Manual report:
```bash
bash ./watchdog-status.sh
```

## 15. VPS deploy debt from this thread

Static Cloudflare Pages deploys automatically from GitHub.

Ops API / watchdog changes do NOT magically deploy to the VPS.

Recent backend changes include:
- HTML email actions;
- plain-English email wording;
- provider Partner Network URL;
- deterministic plain-English classifier;
- watchdog scripts.

At start of next thread, after verifying GitHub CI:
```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
docker compose --env-file .env up -d --build --force-recreate ops_api
bash ./install-watchdog.sh
bash ./runtime-doctor.sh
```

Do not overwrite `.env`.

## 16. Google Sheet

Master:
**BMC Arizona Service Portfolio - Master Operations**

ID:
`1Ka-RDKKniq-RaYD90a1QvSDVZRhsPVHJUe76rQJeaUE`

Important tabs:
- Dashboard
- Launch Checklist
- First Wave
- Pilot Activation
- Markets
- Services
- Vendors
- Buyers
- Coverage
- Outreach
- Billing
- Leads
- Exceptions
- Research Queue

The sheet may still show old 48-service counts in places. Reconcile it with current 53-service registry before treating every dashboard number as current.

## 17. Launch readiness estimate at thread end

Approximate overall readiness: **~72/100**.

Strong:
- VPS/infrastructure
- domain/tunnel
- email
- database
- backups
- synthetic routing flow
- operational foundation

Weak/blocking:
- zero real activated providers;
- Stripe not activated;
- mixed old/new public storefront designs;
- sales/outreach engine not yet turned on;
- watchdog installation not confirmed;
- no real paid transaction;
- no real customer lead routed to a real provider.

A controlled Prescott/PV pilot can move toward ~85/100 after:
- watchdog install;
- consistent launch storefronts;
- 1-3 real verified providers;
- controlled outreach/buyer acquisition;
- one real lead route.

90-95/100 launchable after:
- Stripe enabled + webhook;
- real payment;
- real provider transaction loop;
- initial conversion/outreach measurement.

Do not wait for all 53 niches to become perfect.

## 18. Immediate next sequence

Start the next thread here:

1. Read this HANDOFF + `BUSINESS_MODEL.md`.
2. Verify current GitHub HEAD / CI / Pages deployment.
3. Deploy pending backend changes to VPS and install watchdog.
4. Run `runtime-doctor.sh`.
5. Clean synthetic test data if finished and confirm launch gate still ignores test provider.
6. Fix the mixed-generation website problem SYSTEMATICALLY:
   - shared modern service template/generator;
   - migrate old dark "BMC Service Portfolio" pages;
   - customer pain-first copy;
   - real images;
   - mobile-first;
   - subtle movement;
   - no giant service dropdowns;
   - preserve niche-specific SEO/content.
7. Keep provider experience separate at BMC Partner Network.
8. Build/activate Prescott/PV provider bench:
   - electrical;
   - heating/air;
   - handyman;
   - house cleaning;
   - tree/landscape;
   - hauling;
   - towing/roadside;
   - commercial/facility as appropriate.
9. Decide and implement launch provider monetization:
   - free join;
   - initial proof leads free/low-cost;
   - then explicit accepted-lead/territory terms.
10. Finish Stripe onboarding and live webhook.
11. Restore the SALES ENGINE:
   - Growth Pack sample + checkout;
   - target buyer lists;
   - controlled B2B outreach;
   - reply classification;
   - interested buyer → correct BMC intake;
   - provider recruitment running in parallel.
12. Only after user explicitly approves sending, enable a very small controlled outreach batch and measure:
   - delivery;
   - open/click where available;
   - replies;
   - opt-outs;
   - intake;
   - provider acceptance;
   - paid conversion.
13. Use results to scale/kill niches rather than polishing everything indefinitely.

## 19. Tailscale DNS follow-up

User relies on Tailscale DNS for home-lab access.

Earlier diagnostics proved Tailscale resolver `100.100.100.100` returned the correct public BMC domain. The Mac resolver cache was stale.

Do NOT tell the user to permanently disable Tailscale DNS.

At a natural lull:
- re-enable Tailscale "Use Tailscale DNS settings" / MagicDNS;
- verify public BMC domain + a known private Tailscale hostname;
- if public resolution breaks, flush macOS DNS cache rather than immediately disabling Tailscale DNS.

Cache flush:
```bash
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder
```

## 20. Working rules for next assistant

- Keep building; do not make Brett babysit infrastructure.
- Minimize terminal errands.
- Never ask for secrets/passwords in chat.
- Never claim background/asynchronous work.
- Give short progress updates during long work.
- User wants actual business progress, not endless planning.
- Preserve the business model in `BUSINESS_MODEL.md`.
- Do not drift into "SEO pages are the business."
- Outreach and provider/buyer research are core acquisition engines.
- Do not imply revenue is guaranteed.
- No consequential outbound without explicit approval.
- Do not touch QNS.

## Copy/paste starter for next conversation

> Continue the BMC Service Network build from `portfolio/automation/HANDOFF.md` and `portfolio/automation/BUSINESS_MODEL.md` in `bmcgarybot/bmc-luminary-site`. This is the same BMC Luminary Ventures LLC project, not QNS. Verify current GitHub CI/Pages and production runtime first. Then continue the Immediate next sequence without re-planning the business. The highest priorities are: deploy pending VPS/watchdog changes, migrate every remaining old dark service storefront to the modern pain-first/mobile/image-rich template, activate the first real Prescott/PV provider bench, restore controlled B2B buyer/provider outreach, finish Stripe, and get the first real paid/lead transaction. Do not turn outreach on without my explicit approval.
