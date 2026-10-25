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

### 2026-10-25 funnel rebuild — committed after original handoff

Public/static work:
- all 53 registered service fronts audited onto the editorial shell;
- 12 market hubs modernized;
- plain-language public copy rules added in `PUBLIC_COPY_STYLE.md`;
- CI now rejects legacy public UI and common internal/meta copy;
- provider page rebuilt as a guided sales funnel with:
  - pain-first opening;
  - visual job imagery;
  - old-way vs BMC comparison;
  - phone-style example request;
  - accept/pass explanation;
  - risk reversal;
  - local Prescott/PV reason to try now;
  - scroll reveal/progress motion;
  - application CTA;
- building-maintenance page rebuilt as a guided multi-job funnel for churches, schools, offices, medical, gyms, daycare, theaters, etc.;
- the building form now sends the specific multi-service fields the API expects.

Backend/ops work committed but **NOT confirmed deployed to VPS**:
- provider outreach rewritten around bad-lead pain + free pilot risk reversal;
- provider application confirmation email;
- provider approval nurture email;
- provider marketing funnel scorecard:
  invited → sent → replied → applied → approved → job offered → accepted → won;
- Prescott/PV launch-cell coverage dashboard + queue-launch-gaps action;
- Growth Pack outbound lane (separate, gated, OFF by default);
- `customer_path` persisted on leads;
- expanded building categories including electrical, handyman, pressure washing, and duct/vent;
- building buyer outreach rewritten in plain pain-first language;
- building request confirmation stripped of internal “workflow/routing” language;
- CI test added proving one building request can split into several child jobs.

Current VPS redeploy must include these newer backend commits too.

### 2026-10-25 architecture correction after live manual QA

Manual QA exposed three important gaps:
1. public search was only a browser text filter and was not connected to backend classification;
2. provider operations existed as email links/admin actions but there was no provider login/dashboard;
3. standard startup did not start the Docker `local-ai` profile even when `LOCAL_AI_ENABLED=true`.

These are now corrected in the repo:

**Intelligent search**
- `POST /api/service-search` exposes the same rules + local-AI classification path used by intake;
- rules now explicitly cover plain-language terms such as `fryer` and `real estate`;
- `assets/service-finder.js` gives instant browser suggestions, then asks the VPS classifier and merges/reorders results;
- searches such as `fix my fryer` and `real estate` are regression-tested in CI;
- general request pages keep the original problem visible and show likely service matches before asking the user to continue;
- successful forms now show a large confirmation card with the matched service and next steps.

**Provider self-service**
- schema includes expiring/revocable provider magic-link sessions;
- `/provider-login/` emails approved providers a secure login link;
- `/provider-dashboard/` shows:
  - new opportunities;
  - accept/pass;
  - customer details after acceptance;
  - active jobs;
  - contacted/estimate/won/lost updates;
  - capacity, minimum job, territory, service and market settings;
- pilot approval now sends the provider directly to the dashboard;
- provider portal API actions verify the provider session and ownership of each match.

**AI startup**
- `start.sh` now starts the `local-ai` Docker profile whenever `LOCAL_AI_ENABLED=true`;
- it waits for Ollama, checks for the configured model, and pulls the model if missing;
- `bootstrap.sh` does the same on first setup;
- admin preflight reports AI enabled/reachable/model-available separately;
- `runtime-doctor.sh` checks the model and runs the exact `fix my fryer` service-search smoke test.

**Public architecture**
- `/solutions/` is the accessible hub for the major BMC business models;
- root BMC site is a fallback/rescue/search hub, NOT the intended landing page for most campaigns;
- outreach/ads should deep-link into the specific offer/service page promised;
- approved providers should use Provider Login / Provider Dashboard, not the marketing homepage.

**QA**
- CI now includes a public form-contract validator;
- broken special forms should fail CI if required fields do not match the API contract;
- outreach remains OFF until deployment and live smoke tests are completed.

**Additional provider autonomy / live-journey fixes**
- Provider Dashboard now has **Pause new work / Resume new work** so providers can manage availability without BMC staff.
- Providers may remove services themselves, but requested new trade/service types create a review exception and remain unroutable until BMC approves them.
- Private admin now has Provider Service Change Reviews with approve/reject actions.
- Magic-link login email requests are rate-limited for known providers.
- Provider outcome follow-up worker bug fixed: it now resolves the service display name correctly and keeps the one-click secure job-update link.
- Watchdog now checks semantic service-search health using `fix my fryer` and treats configured Ollama failure as an operational failure.
- Restaurant Equipment Repair was rebuilt into a guided visual funnel with Fryer, Oven/Range/Griddle, Dish Machine, Prep Equipment, Holding Equipment and an Ice Machine branch.
- CI now covers provider pause/resume and service-addition approval behavior.

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
docker compose --env-file .env build ops_api
bash ./start.sh .env
bash ./install-watchdog.sh
bash ./runtime-doctor.sh .env
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


## Autonomous demand discovery

BMC should not rely on one acquisition channel. The bounded operator continuously builds both supply and demand while external/high-risk actions remain gated.

- Public procurement monitor: check official city/county/state/federal sources for service contracts and solicitations, classify them to BMC service keys, deduplicate them, and stage them for human review. Never submit a bid or accept procurement terms automatically.
- Public local-demand signals: use ordinary search indexing to discover publicly visible local requests/recommendations from sources such as publicly indexed Nextdoor and Facebook pages. Do not log into, scrape, or bypass access controls on private groups. Do not automatically contact individual posters.
- B2B buyer research: explicitly include hospitals, medical/dental offices, therapy/behavioral facilities, pharmacies, grocery/retail, insurance/professional offices, hotels, schools, churches, restaurants, property managers, apartments, warehouses, auto dealers, and public facilities.
- Terrain-aware provider research: boost relevant context for high-desert/wildfire, acreage/septic/well/grading, Verde Valley irrigation, Flagstaff snow/freeze/heating, and desert heat/pool/HVAC/pest markets where appropriate.
- Private daily brief: the intended owner workflow is a few short checks per day focused on exceptions, provider approvals/credential-sensitive service changes, actionable public contracts, and unusual operator tasks. Routine research and monitoring should continue without owner intervention.

Outbound prospecting remains separately gated and OFF until explicitly approved. Public opportunity discovery and public-index research are read-only research activities.


## 21. FINAL THREAD HANDOFF — 2026-10-25

This section supersedes stale status notes above where they conflict.

### Current repository / CI

Current GitHub master at handoff:
- `b9831d5f910bdfa4457ab269ea6f92039ea19738`
- commit: `Show traditional auto repair in vehicle service family`

Latest BMC Portfolio CI:
- **SUCCESS**
- run `40214025210`
- completed 2026-10-25

The registry now contains **54 services**, not 48 or 53. Traditional shop-based auto repair was added as a distinct service/front and is routed separately from mobile mechanic/tire/battery work.

New auto-repair work:
- dedicated customer funnel: `/portfolio/auto-repair-shop/`
- service classification/research routing added
- vehicle-service family page exposes traditional auto repair
- CI is green after these changes

### Production deployment status

Last production state actually confirmed by Brett's terminal output:
- Ops API healthy
- 53-service registry at that time
- vendor research pool 211
- buyer research pool 156
- First Wave 12 providers / 7 buyers
- research backlog 632 queued
- admin preflight reachable
- local Ollama reachable with `qwen3:1.7b`
- `fix my fryer` correctly classified to Restaurant Equipment Repair
- SearXNG reachable
- watchdog installed and timer confirmed ACTIVE
- runtime doctor: **0 core failures, 1 warning**
- warning was Stripe webhook not configured
- live intake BLOCKED because no real verified provider had been activated
- payments BLOCKED because Stripe onboarding/webhook not finished
- outreach switches remained OFF

Do **not** assume commits after that terminal deployment are already on the VPS. Current GitHub master is newer and must be deployed before treating the new research/brief/procurement features as production.

### Correct current deploy path

Because `start.sh` now performs safe additive database migrations automatically, normal production update is:

```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
docker compose --env-file .env build ops_api
bash ./start.sh .env
bash ./runtime-doctor.sh .env
```

Do not overwrite `.env`.

The watchdog is already installed/confirmed active; it does not need to be reinstalled on every deploy unless its systemd installation changes.

### Autonomous operating target

Brett's intended owner workload:
- ideally 2–3 short checks per day;
- each check should take roughly 10 minutes or less;
- routine research, monitoring, classification, coverage-gap work, provider routing, follow-up and queue processing should continue 24/7 without Brett;
- Brett should see only meaningful exceptions, approvals, credential-sensitive provider changes, promising contracts/opportunities, disputes, pricing/strategy decisions and unusual failures.

A private **Needs Brett** daily brief has been added in code to support this.

Do not turn BMC into a business that requires Brett to manually babysit every lead or research task.

### Recovered business expansion ideas — preserve these

The missing-message stretch contained valuable strategy. Preserve the following as source-of-truth ideas:

1. BMC is much larger than a homeowner directory. Buyer/client research should include:
   - hospitals and health systems;
   - medical centers, doctors and specialists;
   - dental groups and specialty dental offices;
   - therapy / behavioral-health clinics;
   - pharmacies and health retail;
   - grocery stores;
   - general retail;
   - insurance agencies;
   - financial/professional offices;
   - hotels;
   - apartments / property managers / HOAs;
   - restaurants;
   - warehouses;
   - auto dealers and auto repair shops;
   - churches;
   - schools;
   - theaters;
   - public/government facilities;
   - other facility-heavy organizations.

2. Locksmith/access control is an important service category. Existing research already includes:
   - High Desert Lock and Safe — Prescott
   - Joe's Glass & Locksmith — Winslow
   Continue building depth across Arizona.

3. Government/public procurement is a core demand lane, not an afterthought:
   - city;
   - county;
   - state;
   - school/district;
   - federal;
   - cooperative/public-facility purchasing.
   Monitor janitorial, landscaping, locksmith, HVAC, plumbing/backflow, electrical, lighting/signage, parking lot, fire-safety, laundry/linen, septic, restaurant-equipment, facility-maintenance and related opportunities.
   Never auto-submit bids or accept procurement terms.

4. Public local-demand signals can be a competitive advantage over Angi/Thumbtack:
   - publicly indexed Nextdoor content;
   - publicly indexed Facebook/community pages;
   - other public/indexable local discussions and request sources.
   Do **not** log into, bypass access controls on, or scrape private Facebook/Nextdoor groups.
   Do not auto-contact individual posters by default.
   Use these as demand intelligence/review signals unless a permitted workflow is explicitly approved.

5. Research should be terrain/market aware:
   - Prescott/PV: high desert, wildfire/defensible space, septic/well where relevant;
   - Chino Valley: acreage, grading, septic, well, land clearing;
   - Camp Verde: acreage, irrigation, septic, well, brush clearing;
   - Verde Valley/Cottonwood: irrigation, tree care, septic;
   - Sedona: hospitality/STR, pool/desert-property needs;
   - Flagstaff: snow, freeze, heating, tree care;
   - Phoenix/Scottsdale/Tucson: extreme heat, cooling/HVAC, pools, pest, desert landscaping;
   - Kingman/Winslow: climate/terrain-specific property and roadside needs.
   Do not use identical research prompts for every city/service.

6. Campaign localization rule:
   - generic BMC website should feel broad/capable;
   - outreach should localize the message to the recipient.
   Examples:
     - Camp Verde recipient: "We're opening BMC service requests in Camp Verde..."
     - Prescott recipient: Prescott-specific message
     - regional/multi-location operator such as WKS: Northern Arizona/regional message
   Do not make the generic website advertise BMC as a tiny/local experiment.
   Do not foreground "pilot" unless it actually helps the recipient understand the offer.

### Autonomous research / demand discovery added after the last confirmed production deploy

Current repo includes:

**Buyer research expansion**
- explicit B2B buyer hints for medical, dental, therapy, pharmacy, grocery, retail, insurance/professional offices, hotels, schools, churches, restaurants, property managers, apartments, warehouses, public facilities, etc.
- research queries use OR groups rather than generic "business organization" search
- service-specific buyer targeting

**Terrain-aware provider research**
- market context is added only to environment-sensitive services where useful

**Public procurement monitor**
- table: `public_opportunities`
- endpoint: `POST /api/process-public-opportunities`
- admin list/status endpoints
- searches official/public procurement sources
- scheduled every 2 hours
- read-only discovery; no automatic bids

**Public local-demand signal monitor**
- table: `local_demand_signals`
- endpoint: `POST /api/process-local-demand-signals`
- admin list/status endpoints
- public-index-only intent discovery
- currently aimed at common local needs such as locksmith, electrician, plumber, HVAC, tree, landscaping, junk, handyman, house cleaning, garage door, pest and towing
- scheduled every 6 hours
- no private-group scraping
- no automatic contact with posters

**Research cadence**
- normal autonomous research was increased from roughly one task/hour to a pass every ~15 minutes
- target: ~96 research passes/day without hammering search infrastructure

**Needs Brett**
- endpoint: `GET /api/admin/daily-brief`
- private admin button/section added
- focuses on:
  - open exceptions;
  - real provider approvals;
  - provider service-change reviews;
  - human/operator tasks;
  - public procurement opportunities;
  - local-demand signals;
  - research inventory counts.

### Research-source / scaling work added

Current repo also includes:
- research-pass tracking in schema;
- authoritative-source registry;
- `seed-research-sources.sql`;
- market-size-aware research scaling via `seed-research-scale.sql`;
- `migrate.sh` for safe additive DB updates;
- `start.sh` now invokes safe migration automatically.

Next thread should inspect these files before inventing a second research architecture.

### Provider portal bug found and fixed

CI exposed a real bug in provider service-addition approval:
- requested service additions were read from Postgres JSON as text;
- approval code could treat the JSON string like a list of characters;
- review could resolve without actually adding the approved service.

Fixed by parsing the JSON payload properly before approval.

Also fixed:
- matched `service_name` definition before provider-routing response in `handle_lead`.

These fixes are in current GitHub master and CI is green.

### Growth Pack sample / form status

The first uploaded `.xlsx` sample was malformed and Excel rejected it.

That file was subsequently replaced with a verified Excel workbook:
- commit `9365a56a5d010cd97a1677fca1a4b9e1fab192af`
- website sample page points to the formatted Excel version
- raw CSV remains available as a plain-data option
- CSV headers/data were cleaned
- web preview was styled as a polished spreadsheet sample

The Growth Pack form was also corrected to send backend-required `scope` rather than the old incompatible `offer` field.

If the browser still downloads the corrupt old workbook, verify Cloudflare/static cache/deployment rather than rebuilding the workbook again.

### Google Drive live-data snapshot from this thread

Master workbook:
`1Ka-RDKKniq-RaYD90a1QvSDVZRhsPVHJUe76rQJeaUE`

At the time checked:
- 210 provider/vendor prospect rows in Drive
- 156 buyer/client prospect rows
- 87 providers with public email
- 34 buyers with public email
- 121 directly email-reachable prospects
- actual Leads tab: 0 submitted customer leads
- Outreach tab: 0 sent outreach records
- First Wave: 12 provider + 7 buyer = 19 total
- no real approved/activated provider yet at that check

Research Queue:
- 651 research rows/tasks in Drive
- 298 provider-side
- 353 buyer-side
- 533 medium priority
- 118 low priority
- approximately 1,936 missing prospect slots if every market/service goal were filled

Important: Drive planning counts and live VPS counts are snapshots and do not always synchronize immediately.

The Dashboard service count was updated to 53 during the thread, but repo now has **54** after adding traditional auto repair. Sync the Sheet again before trusting the displayed service-count KPI.

New Buyer Vertical rows added in Drive:
- Hospitals & Health Systems
- Dental Groups & Specialty Practices
- Therapy & Behavioral Health Facilities
- Pharmacies & Health Retail
- Insurance, Financial & Professional Offices
- Public Contract & Bid Opportunities

### Outreach / autonomy safety

Still mandatory:
- vendor outreach OFF until Brett explicitly approves;
- buyer outreach OFF until Brett explicitly approves;
- Growth Pack outreach OFF until Brett explicitly approves;
- no private social scraping;
- no auto-bidding public contracts;
- no fake testimonials/outcomes/scarcity;
- do not imply a provider is verified until actually approved/credentialed as appropriate.

Public opportunity discovery and public research may run internally because they do not contact anyone or accept external terms.

### Immediate next actions for the next thread

1. Read this final section first, then `BUSINESS_MODEL.md`.
2. Confirm current master is still at/after `b9831d5` and BMC CI is green.
3. Deploy current backend/database changes to VPS using the safe deploy block above.
4. Run `runtime-doctor.sh`.
5. Confirm production registry becomes **54 services**.
6. Smoke test:
   - `fix my fryer`;
   - traditional auto repair query;
   - provider dashboard;
   - provider service-addition approval;
   - `/api/admin/daily-brief`;
   - public-opportunity processor;
   - local-demand processor.
7. Sync Google Sheet Dashboard from 53 → 54 services if still stale.
8. Inspect first real procurement/local-demand discoveries; tune false positives rather than manually hunting sites.
9. Activate 1–3 real verified providers in the Prescott/PV first cell.
10. Finish Stripe onboarding + webhook.
11. Preview the first provider/buyer outreach privately.
12. Only after Brett explicitly approves: send a tiny controlled wave and measure replies, intake, provider acceptance and revenue.
13. Keep expanding research supply/demand autonomously while Brett works mainly from the Needs Brett queue.

### Process rule after lost updates

During long build sessions:
- capture Brett's new business ideas/decisions into this handoff (or a dedicated idea/decision log) **before** disappearing into implementation;
- send progress updates every few tool calls;
- do not spend 30–60 minutes silently chasing CI;
- if CI/debugging turns into a loop, report the current blocker before continuing;
- preserving Brett's ideas is higher priority than squeezing in one more code fix.

### Copy/paste starter for the next conversation

> Continue the BMC Service Network build from section 21 of `portfolio/automation/HANDOFF.md` plus `BUSINESS_MODEL.md`. This is BMC Luminary Ventures LLC / BMC Service Network, not Quantum Neuroshift. Current GitHub master was `b9831d5` with green BMC CI when the prior thread ended. Production was last confirmed healthy on the earlier 53-service deploy, so treat newer procurement/local-demand/research/daily-brief/auto-repair changes as pending VPS deployment unless independently verified. First deploy current master safely, run runtime doctor, and verify the registry reaches 54 services. Then continue toward the autonomous operating target: 24/7 research and opportunity discovery, with Brett doing only 2–3 short exception/approval checks per day. Do not turn on vendor, buyer or Growth Pack outreach without my explicit approval. Preserve the recovered ideas in section 21, especially public procurement, medical/retail/professional buyers, terrain-aware research, locksmith depth, public local-demand signals, and localized outreach rather than localizing the generic website.


## 22. CONTINUATION CHECKPOINT — 2026-10-25

This section records work completed immediately after Section 21. Section 21 remains the strategic source of truth except where this checkpoint updates current implementation status.

### Repository / CI updates

Master advanced beyond the prior handoff commit `da19c9a` with two safety-focused commits:

- `a72b2cce57866d658a1c51b608688f032f6e9025` — tightened CI to require the current 54-service registry, explicitly require active `auto_repair_shop`, add a traditional auto-repair service-search regression, and make the fresh CI database bootstrap include `seed-research-sources.sql` plus `seed-research-scale.sql` so CI mirrors the production migration path.
- `54515cc78b546bd2b07de3f5752313d3d71fe4e4` — tightened `runtime-doctor.sh` to require at least 54 services, explicitly verify active traditional auto repair, and smoke-test that `brake repair` maps to `auto_repair_shop`.

BMC Portfolio CI run `40217684688` reached a completed successful `validate` job with every validation/smoke-test step passing, including the database/API smoke test. GitHub's parent workflow status was still catching up when this checkpoint was written.

### Google Sheet sync

The live operations workbook Dashboard was stale at 53 services.

Updated:
- Dashboard registered-service KPI: **53 → 54**
- note now says the 54 fronts are in current GitHub master and that VPS deployment/production-registry verification is still pending.

This deliberately avoids claiming the newer master is already running in production.

### Production deployment remains unverified from this environment

The current ChatGPT tool environment has GitHub and Google Drive access but no direct SSH/shell session to the private VPS. The public Cloudflare gateway also intentionally exposes only intake/webhook routes, not private admin/runtime endpoints.

Therefore:
- do **not** mark the current 54-service backend as deployed from this checkpoint alone;
- do **not** claim the private daily brief, procurement processor, local-demand processor, or provider service-change approval have been production-smoke-tested yet;
- use the safe deploy block from Section 21 on the VPS, then run `runtime-doctor.sh`;
- after deployment, verify the production registry is 54 and run the Section 21 production smoke tests.

### Safety state

Unchanged:
- vendor outreach OFF;
- buyer outreach OFF;
- Growth Pack outreach OFF;
- no automatic public-contract bidding;
- no private social-group scraping;
- no automatic contact to individual local-demand posters.

Public/read-only research and opportunity discovery may continue internally.


## 23. AUTONOMY BUILD CHECKPOINT — 2026-10-25

This section continues Section 22 and records the autonomy/research work completed afterward. The operating target remains **2–3 short owner checks per day, ideally under 10 minutes each**. Outreach gates remain unchanged and OFF.

### Current implementation direction

The private operator experience is being reduced to decisions and exceptions rather than raw research administration.

Implemented since Section 22:

- **Needs Brett triage now separates actual decisions from review-only research.**
  - `needs_brett` covers real exceptions, provider approvals, provider service-change approvals, operator tasks, actionable public opportunities and useful local-demand signals.
  - `review_ready` covers newly discovered contract/local-demand research that is ready for a quick review.
  - The private UI no longer dumps up to 50 public contracts plus 50 local-demand records when Brett clicks Needs Brett.
  - Needs Brett now shows at most five public opportunities plus five local-demand signals; full lists remain available separately.

- **Public procurement coverage expanded to 17 monitored source lanes.**
  - Added Prescott Valley, Camp Verde, Kingman, Prescott Unified School District and Humboldt Unified School District.
  - Existing city/county/state/federal lanes remain.
  - Fleet/vehicle-maintenance opportunities can classify to `auto_repair_shop`; towing opportunities can classify to `towing_roadside`.
  - This remains discovery/classification only. No bid may be submitted automatically.

- **Public-index local-demand coverage expanded** to include access-control and traditional auto-repair language in addition to the existing trades.
  - Search-indexed public signals only.
  - No private-group login/scraping.
  - No automatic contact to individual posters.

- **Research review queues now age themselves.**
  - Untouched discovered public opportunities expire after 30 days without a fresh sighting.
  - Untouched discovered local-demand signals expire after 14 days.
  - Items explicitly marked actionable/useful are preserved.

- **Coverage research is now genuinely multi-pass instead of one-and-done.**
  - Added configurable `RESEARCH_MAX_PASSES` with default 4.
  - Each pass uses a different bounded query formulation.
  - If a coverage gap remains after a pass and the max-pass limit is not reached, the backlog item automatically re-enters `queued`.
  - The normal scheduler can therefore keep working the same gap over successive ~15-minute research cycles instead of stopping after the first search.
  - CI proves a completed pass returns to the queue and is eligible for the next agent cycle while respecting the five-task concurrency cap.

- **Human-approved research can now become an internal prospect with one click.**
  - Private research UI has **Add as prospect**.
  - A promoted vendor candidate becomes/reuses a `vendors` record with status `prospect` plus its service and market.
  - A promoted buyer candidate becomes/reuses a `buyers` record with status `prospect` plus its likely service.
  - Promotion updates research-gap counts.
  - Promotion never activates a provider, never creates outreach, and never contacts anyone.
  - CI explicitly verifies prospect-only status and zero outreach.

- **Public contact details visible directly in search-result snippets are now retained.**
  - Email/phone visible in the public search snippet are stored in research-candidate evidence.
  - When Brett promotes that candidate, missing prospect email/phone fields are populated from that evidence.
  - This does not fetch the candidate website or bypass any access control.
  - Existing non-empty prospect contact data is not overwritten.
  - A deterministic CI fixture and end-to-end assertions were added; the newest CI run was still executing when this checkpoint was written.

### Key commits after Section 22

- `89af796763eb1a52ee3eee2158aabb4df172ee94` — improved Needs Brett triage and expanded procurement coverage.
- `a15278d1d105ac56ad40f1bc22eaae58e11078ae` — CI coverage for procurement/owner-brief changes; green.
- `9bbc0d3d2f44e8e383f54e6fbec410af847ce328` — shortened Needs Brett review queue; green.
- `39ae6848d3c8565973ee6297dbcc94f20a764770` + `2e91c6e8fab5242a1511d0cc0b6dbaa57aa82e89` — stale research aging + CI; green.
- `e1c212d86b355125cb2f9e9161eaf5842fa8db8c` — genuine bounded multi-pass research.
- `c662ab703058c21b769eaacc544c081ca4dc7303`, `130cf775bc3d8f699f9b774856ce35f6b21902b9`, `82b0950cb77107c06044e83e7945f71b6c9bfa12` — continuous-research CI/config wiring; green.
- `b05d04eedcd1b6c1f3892964d98b636bfffa25cc` + `1ce3c22b62250d5875a8ca5494ee919fa82ecaa6` — safe one-click prospect promotion + CI; CI run `40218260057` green.
- `ae6fd17e7d49d3c783312c27ed804f62fe705705`, `4d195551b0c85c472392bae55e38ceb138f96a11`, `7b08768ab49278d9180f6d5ba532aa89b6f5f03f` — public snippet contact capture, deterministic fixture and CI assertions; latest CI pending at checkpoint time.

### Important newly identified next gap

The `research_sources` authoritative-source registry is seeded with sources such as Arizona contractor/licensing and regulated-facility directories, but as of this checkpoint the runtime search path does **not yet consume that registry**. The next autonomy improvement should wire those sources selectively into relevant research passes rather than treating the registry as decorative data.

Do this carefully:
- use licensed-trade registries only for service categories they actually fit;
- use medical/food/facility registries for relevant buyer discovery;
- rotate authoritative queries into bounded passes rather than replacing broad discovery completely;
- do not treat entity/license-directory presence as provider activation or credential approval.

### Production status remains unchanged

Current GitHub master is still ahead of the last verified VPS deployment.

Do not mark the 54-service/current autonomy backend as production-deployed until the VPS safe-deploy block is run and production smoke tests pass.

Outreach remains OFF:
- vendor outreach OFF;
- buyer outreach OFF;
- Growth Pack outreach OFF;
- no automatic procurement bids;
- no automatic contact to individual public-demand posters.


## 24. VERIFIED AUTONOMOUS RESEARCH CHECKPOINT — 2026-10-25

This section supersedes Section 23's open research-source/runtime gap. The autonomy work below is implemented and validated in GitHub CI. **It is still not a claim that the current master is deployed on the VPS.**

### Verified current functional checkpoint

Functional master at this checkpoint:
- `e0ab9b944d44d82c8a81884bb16b8d48567be1c5`
- BMC Portfolio CI run `40219370276`: **SUCCESS**
- full database/API smoke step: **SUCCESS**

### Authoritative research sources are now active runtime inputs

The previously seeded `research_sources` table is no longer decorative data.

Implemented behavior:
- broad discovery remains active on normal/even research passes;
- selected authoritative sources rotate into relevant odd passes;
- authoritative passes are service-aware rather than blindly applied to every category;
- returned results are constrained to the expected authoritative domain;
- source key/name/domain are recorded in candidate/task/event evidence.

Current selective source rules include:
- Arizona Registrar of Contractors sources only for relevant licensed/construction trades;
- Arizona Office of Pest Management registry only for pest-control research;
- ADHS regulated-facility sources for relevant buyer/facility research;
- county food/facility directories for relevant buyer services;
- entity/verification-only sources are not treated as discovery or credential approval.

Current official public sources were independently checked in this thread and remain available/current, including the AZ ROC active-contractor posting list, Arizona pest-business registry, ADHS facility/GIS data, and county regulated-food/facility directories.

Important safety rule:
- appearing in a license or government directory does **not** activate a provider;
- credential-sensitive routing still requires BMC review/approval.

### Research now continues active gaps before opening equivalent fresh gaps

A CI test exposed that the scheduler could finish pass 1 on a gap and then fill the freed slot with a brand-new gap instead of continuing the existing multi-pass item.

Fixed:
- among equally ranked research work, queued items with `research_pass > 0` are prioritized before untouched gaps;
- CI proves the freed research slot goes back to the partially researched gap;
- CI then proves the next pass for the Prescott electrical example uses the relevant Arizona ROC authoritative source.

This makes the ~15-minute research cadence genuinely continuous rather than merely rotating through one-pass searches.

### Research gap accounting now counts real prospects only

Previously, raw search candidates could reduce `target_gap` before they were actually promoted into vendor/buyer prospect records.

Fixed:
- `target_gap` is based on `goal - current_count`;
- staged search-result candidates do not count as researched prospects;
- only actual internal vendor/buyer prospect records close the research target;
- CI explicitly verifies this invariant.

This keeps the portfolio-wide missing-prospect metric honest.

### Conservative autonomous prospect promotion

High-confidence public research can now remove a clerical approval step while preserving outbound safety.

`RESEARCH_AUTO_PROMOTE_CONTACTS=true` by default.

A newly discovered result may auto-promote to an **unverified internal prospect** only when all conservative conditions pass:
- it is not an authoritative-registry pass;
- result rank is within the top 3;
- the public search snippet exposes an email address;
- the email domain matches the source website domain/subdomain;
- the source is not a blocked social/directory marketplace;
- the URL looks like a simple business page rather than a blog/news/directory/search/category/tag page.

Blocked auto-promotion domains include examples such as Facebook, Nextdoor, LinkedIn, Yelp, Yellow Pages, Angi, Thumbtack, BBB and MapQuest.

Auto-promotion:
- creates/reuses only `status='prospect'`;
- attaches relevant service/market;
- carries public snippet email/phone evidence;
- updates actual prospect-gap counts;
- does **not** activate providers;
- does **not** verify credentials;
- does **not** create an outreach record;
- does **not** send email/SMS;
- does **not** contact any poster or business.

Lower-confidence results remain in the human research-review queue.

### Prospect deduplication

The same company appearing on multiple indexed pages must not inflate coverage counts.

Implemented:
- promotion reuses an existing vendor/buyer by exact source URL/website **or case-insensitive public email**;
- CI fixture includes two separate pages for the same mock company with the same public email;
- both research candidates promote successfully;
- both point to the **same internal prospect ID**;
- exactly one vendor prospect exists for that email;
- no outreach row exists for that prospect.

This was validated in CI run `40219370276`.

### Important commit sequence after Section 23

Key functional commits include:
- `34e46b5a6b433d23bae6f77d20924886ed25590c` — use authoritative registries in bounded research passes.
- `d1715ebf3870fc6f3cddca33bea0c04e6ba2a90a` — continue active research gaps before fresh ones.
- `884749d4c0b9a980e17a1364a7e2db76ac8f5286` — CI proof of continuation + authoritative rotation.
- `ef6f07063ba575277d6c65653dc6599f1a7c3bdc` — count only real prospects toward research goals.
- `aae897e47c2cd298aabcd726afdca0df9e39dc9c` — CI proof of honest gap accounting.
- `fb00187424d11c583b653bf42230bd0680181504` — conservative automatic internal prospect promotion.
- `650d15a29c8f898249c18b4fe5fac81ee6437d99` — CI proof that auto-promoted prospects remain internal with zero outreach.
- `a97aee2df5476c7dcaab06cf9ff608b37d7c1bec` — deduplicate promoted research prospects by public email.
- `de244027a6e5f7a2205568c76ac05f996c049382` — duplicate-business CI fixture.
- `e0ab9b944d44d82c8a81884bb16b8d48567be1c5` — final dedupe/autonomy assertions; CI `40219370276` green.

### Production state remains intentionally separate

The last independently confirmed VPS deployment is still older than this current master.

Do not claim these autonomy changes are live until the VPS safe deploy is run:

```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
docker compose --env-file .env build ops_api
bash ./start.sh .env
bash ./runtime-doctor.sh .env
```

Then verify:
- registry = 54 services;
- `fix my fryer`;
- traditional auto repair query;
- provider dashboard;
- provider requested-service approval;
- `/api/admin/daily-brief`;
- public procurement processor;
- public local-demand processor;
- research agent status shows bounded passes and safe contact-ready auto-promotion;
- outreach remains OFF.

### Safety / approval state remains unchanged

Still mandatory:
- vendor outreach OFF until Brett explicitly approves;
- buyer outreach OFF until Brett explicitly approves;
- Growth Pack outreach OFF until Brett explicitly approves;
- no automatic public-contract bidding;
- no private Facebook/Nextdoor/group scraping;
- no automatic contact to individual local-demand posters;
- no automatic provider activation from research/license-directory evidence.

### Best next autonomy direction

The next meaningful scaling improvement is **source-native ingestion**, not simply increasing generic search volume.

Good candidates:
- current AZ ROC active-contractor data for provider discovery;
- regulated food/facility directories for buyer discovery;
- healthcare/facility registry datasets for institutional buyer discovery.

Any source-native importer should:
- remain read-only toward external systems;
- stage/create unverified prospects only;
- deduplicate against the current prospect database;
- preserve source/evidence lineage;
- never interpret registry presence as final credential approval;
- never create outreach unless Brett separately approves an outbound workflow.


## 24. RECOVERED OWNER NOTES + LAUNCH BLOCKERS — 2026-10-25

This section captures owner ideas recovered from Better Whisper dictation history plus newly observed launch blockers. Preserve these even if later implementation details change.

### Recovered strategic direction

- Target launch timing discussed: **Monday**, with owner preparing to finish Stripe setup.
- Initial acquisition mix being considered:
  - direct email outreach to businesses after explicit approval;
  - Meta/Facebook advertising;
  - broader Arizona market coverage rather than treating Prescott alone as the real pilot.
- Arizona operating/research area should include major markets such as:
  - Phoenix;
  - Scottsdale;
  - Tucson;
  - Prescott / Prescott Valley;
  - Flagstaff;
  - Sedona;
  - Cottonwood / Camp Verde;
  - Kingman / Bullhead City;
  - Winslow;
  - and other practical Arizona markets where BMC can sell.
- Smaller-town research should also include places such as:
  - Dewey / Humboldt;
  - Mayer;
  - Cordes Lakes;
  - Williamson Valley;
  - Ash Fork;
  - Seligman;
  - Skull Valley;
  - Golden Valley;
  - Bullhead City.
- Use county/city/state authoritative public data aggressively for internal research where lawful and practical:
  - county health/environmental-health food establishment lists;
  - restaurant/food-service permits and inspections;
  - medical/behavioral-health and other licensed facility directories;
  - contractor/licensing registries;
  - public procurement data;
  - other authoritative public business/facility registries.
- The long-term expectation is that the completed research queue should yield a very large Arizona provider and buyer prospect base, potentially thousands of internal prospects.
- Brand positioning idea to keep available for later:
  - possible “support Arizona / support local” angle;
  - do **not** deploy this positioning yet without owner approval;
  - avoid making the website feel like a small pilot or experiment.
- Success standard remains commercial, not just technical:
  - if BMC cannot generate meaningful demand/revenue from a statewide pool after launch/outreach begins, revisit acquisition/offer mechanics rather than assuming more directory volume alone will solve it.

### Launch blockers reported by owner

1. **`www.bmcservicenetwork.com` DNS failure**
   - Chrome screenshot showed `ERR_NAME_NOT_RESOLVED`.
   - This must be fixed before launch because many users will type the www hostname.
   - Root hostname behavior must also be verified separately.

2. **Customer request submission failure**
   - Owner submitted a customer request through the public website.
   - The flow reported an email-related error and then redirected/opened the owner's private email URL.
   - Treat as a serious public-flow bug.
   - Verify intake success/failure handling, SMTP dependency behavior, and any fallback `mailto:` / private email link in public UI.
   - Public forms must never expose or redirect to a private personal email address.

3. **Growth Pack sample spreadsheet remains broken**
   - Downloaded sample still triggers a file-extension/format error.
   - The downloadable sample must be the correctly formatted deliverable buyers would actually receive.
   - Verify actual file bytes, extension, MIME/content headers, generated-link target and workbook integrity.

4. **Google Search Console / indexing appears unfinished**
   - Owner cannot find the site in Google search.
   - Verify:
     - Search Console property;
     - DNS/HTML ownership verification;
     - sitemap;
     - robots;
     - canonical URLs;
     - indexability;
     - sitemap submission;
     - request-indexing steps for priority pages.
   - Do not assume search visibility is immediate even after setup.

5. **Windsor.ai trial / dependency question**
   - Owner reports Windsor.ai showing 29 days left.
   - Determine why it was installed, whether BMC currently depends on it, and whether a paid plan is actually necessary.
   - Prefer removing/avoiding nonessential recurring SaaS dependencies if the same function is already covered by BMC's own stack or free/native integrations.

### Current autonomy / CI status at time of this note

- Latest fully verified combined autonomy build before this note:
  - current auto-promotion boundary CI run on `650d15a29c8f898249c18b4fe5fac81ee6437d99` completed successfully.
- The research engine now includes:
  - multi-pass gap research;
  - authoritative-source rotation;
  - source-domain constraints on authoritative passes;
  - public snippet contact retention;
  - conservative internal prospect auto-promotion for strong same-domain public-email matches;
  - zero automatic outreach from those promotions;
  - prospect-based gap accounting rather than counting raw search hits as prospects.
- Outreach remains OFF unless Brett explicitly approves enablement.

### Immediate priority order

1. Fix/verify public DNS for root + www.
2. Fix public customer request submission and remove any private-email redirect/exposure.
3. Fix Growth Pack sample workbook/download integrity.
4. Confirm Google Search Console/indexability setup.
5. Determine whether Windsor.ai can be removed or kept free.
6. Then continue expanded Arizona research/source coverage and launch automation.
7. Clearly tell Brett when a VPS pull/rebuild/restart is required.


## 25. SOURCE-NATIVE BUYER RESEARCH CHECKPOINT — 2026-10-25

This section continues Section 24. The first source-native importer is implemented and CI-verified. **It is not yet verified on the VPS.**

### Verified functional checkpoint

Functional master:
- `52c03988d578670c20df3d326337597929d2dce6`
- BMC Portfolio CI run `40219901387`: **SUCCESS**
- full database/API smoke: **SUCCESS**

### New source-native research architecture

Added a generic state/cursor layer:
- `source_native_state`
- per-source + per-market cursor
- last run / last success
- source data clock
- cumulative records seen/upserted
- structured metadata

Added structured `source_data jsonb` evidence fields to buyer/vendor records so future native importers can preserve official-source lineage without stuffing everything into notes.

### ADHS licensed-facility buyer importer

New private endpoint:
- `POST /api/process-source-native-research`

Current first source:
- Arizona Department of Health Services licensed-facilities ArcGIS FeatureServer
- source key: `adhs_facilities_arcgis`

Behavior:
- processes one bounded page per configured BMC market;
- tracks a separate cursor for each market;
- defaults to a 100-record page;
- scheduler runs the source-native pass twice daily;
- only rows reporting `OPERATION_STATUS=ACTIVE` are staged;
- source fields such as FACID/license number, facility type, address, county, source run date and phone are retained in structured evidence;
- source-derived buyer records remain `status='prospect'`;
- source data is explicitly marked general-reference/verification-required;
- no provider activation occurs;
- no outreach rows are created;
- no external contact occurs.

Default market scope:
- Prescott
- Prescott Valley
- Chino Valley
- Camp Verde
- Cottonwood
- Sedona
- Flagstaff
- Winslow
- Kingman
- Phoenix
- Scottsdale
- Tucson

### Institutional buyer service mapping

ADHS facility prospects currently contribute to buyer coverage for a conservative core facility-service set:

- commercial cleaning
- floor/carpet care
- window cleaning
- HVAC
- pest control
- fire safety
- locksmith/access control
- backflow/plumbing
- facility maintenance
- electrical
- duct/vent
- pressure washing

The importer recomputes actual buyer counts for those market/service cells after each page so source-native prospects close research gaps only when real buyer records exist.

### Idempotency and outbound safety are CI-proven

The deterministic CI ArcGIS fixture contains:
- one active hospital;
- one active behavioral/residential facility;
- one inactive facility.

CI proves:
- exactly 2 active records are accepted;
- the inactive facility is skipped;
- exactly 2 internal buyer prospects are created on the first pass;
- both retain public phone + structured source evidence;
- zero outreach rows exist for them;
- a second identical run creates 0 new prospects and updates the same 2;
- the source-native state row reports the expected cumulative records;
- buyer research-backlog counts reconcile to the actual buyer table;
- `external_actions_performed=0`.

### Important source-quality caveat

ADHS documents the facilities service as a public licensing/reference dataset and says the feed is updated monthly, but the currently exposed all-facilities layer has an older underlying data clock (February 2025).

Therefore BMC must treat these records as:
- institutional buyer discovery evidence;
- useful address/phone/facility-type research;
- **not** proof that a facility is presently open;
- **not** a reason to contact automatically;
- **not** a credential or operating-status approval.

The importer preserves that caveat in record evidence.

### New configuration

```env
SOURCE_NATIVE_RESEARCH_ENABLED=true
SOURCE_NATIVE_MARKETS=Prescott,Prescott Valley,Chino Valley,Camp Verde,Cottonwood,Sedona,Flagstaff,Winslow,Kingman,Phoenix,Scottsdale,Tucson
ADHS_FACILITIES_URL=https://services1.arcgis.com/mpVYz37anSdrK4d8/ArcGIS/rest/services/All_State_Licensed_Facilities_in_Arizona/FeatureServer/18/query
ADHS_SOURCE_NATIVE_PAGE_SIZE=100
```

### Key commits

- `4dbed3fdbba71fc0f66cd1013fe6cf04b82c53e3` — source-native cursor/state table.
- `39f6ae0402d790a3d560a88f42906c03301d711e` — structured buyer/vendor source evidence.
- `2210db36594bbe228fbb62f661a2ddcb4588f239` — ADHS source-native importer.
- `8ab3176b4cb9e18b9f270e26e3b453297736c816` — twice-daily scheduler hook.
- `c365552dd4da1ac6f5f320836a1de716fb6f9b86` — configurable source-native market scope.
- `d10be35ab8ad89a9069ee88dcad4328fe22b6da1` — deterministic ADHS CI fixture.
- `52c03988d578670c20df3d326337597929d2dce6` — end-to-end source-native CI proof; run `40219901387` green.

### Current best next steps

1. Add source-health/staleness visibility to the private owner brief so Brett sees a data-source problem only when it materially needs attention.
2. Add a more current institutional buyer source where feasible (for example current CMS datasets) so ADHS's older GIS clock is not the only bulk healthcare source.
3. Add a source-native ROC provider importer only if the current posting-list file can be retrieved reliably without defeating ROC access controls. Do not build around bypassing Cloudflare.
4. Continue preserving the rule that registry presence creates at most an unverified prospect; it never activates a provider or authorizes outreach.

### Production / safety state

Still unchanged:
- current master is ahead of the last independently verified VPS deployment;
- vendor outreach OFF;
- buyer outreach OFF;
- Growth Pack outreach OFF;
- no auto bids;
- no private social scraping;
- no automatic contact to individual demand posters;
- no automatic provider activation.


## 26. SOURCE HEALTH / OWNER ATTENTION CHECKPOINT — 2026-10-25

This section continues Section 25. Source-native research health now follows the owner-workload principle: healthy systems stay quiet; only material source failures/staleness enter **Needs Brett**.

### Verified functional checkpoint

Functional master:
- `d2311574ce56eee5a4f3c31f7ee3193d758262f4`
- BMC Portfolio CI run `40220094450`: **SUCCESS**
- full database/API smoke: **SUCCESS**

### Source-health behavior

The private daily brief now includes:
- `source_native_markets_tracked`
- `source_native_stale_markets`
- `source_native_issues`

A tracked source/market is considered stale when:
- it has attempted a source-native run, and
- it has never completed successfully, or
- its last successful refresh is more than 36 hours old.

Healthy source state does **not** create a Brett review item.

Stale source state:
- contributes to `needs_brett=true`;
- appears as a compact private UI card with source, market, last successful refresh and latest error context;
- does not create or send any external communication.

A successful source-native refresh clears the stored last-error marker.

### CI proof

CI explicitly:
1. runs the deterministic ADHS importer successfully;
2. verifies one tracked market and zero stale markets;
3. verifies no source-health issue is shown;
4. forces the source's `last_success_at` to more than 36 hours old;
5. verifies the daily brief flips to `needs_brett=true`;
6. verifies exactly one stale-source issue for Prescott;
7. restores the healthy source state.

This keeps routine research-source monitoring out of Brett's daily workload unless intervention is actually needed.

### Key commits

- `18efc96e081495ca4bef19d2858008fa1796c111` — source-health state in daily brief/private UI.
- `d2311574ce56eee5a4f3c31f7ee3193d758262f4` — end-to-end source-health CI proof; run `40220094450` green.

### Production state remains unchanged

These changes are still GitHub/CI verified only. They are not yet independently verified on the VPS.

After the eventual safe VPS deployment, verify:
- source-native scheduler creates state rows;
- successful source refreshes remain absent from Needs Brett;
- intentionally failed/stale source state appears in Needs Brett;
- all outreach switches remain OFF.

### Next data-quality priority

Add a second, more-current institutional buyer source so the older ADHS all-facilities layer is not the sole bulk healthcare discovery feed.

Prefer official, structured, public datasets/APIs with:
- organization/facility identity;
- location;
- facility/provider type;
- recent update cadence;
- stable source identifiers;
- lawful public access without bypassing controls.

Keep all imported entities prospect-only, source-attributed, deduplicated, and disconnected from outreach until separately approved.
