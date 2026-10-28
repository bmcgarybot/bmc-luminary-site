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


## 27. CMS INSTITUTIONAL BUYER RESEARCH CHECKPOINT — 2026-10-25

This section continues Section 26. CMS hospital and nursing-home directories are now integrated into source-native buyer research and CI-verified.

### Verified functional checkpoint

Functional master:
- `b2c704480a00c7fd0d88d1bc49716ac2b2a14cf7`
- BMC Portfolio CI run `40220461989`: **SUCCESS**
- full database/API smoke: **SUCCESS**

### CMS Provider Data Catalog integration

BMC now uses three independent authoritative institutional-research lanes per configured market:

1. `adhs_facilities_arcgis`
2. `cms_hospitals`
3. `cms_nursing_homes`

CMS sources:
- Hospital General Information — dataset ID `xubh-q36u`
- Nursing Home Provider Information — dataset ID `4pq5-n9py`

The CMS Provider Data Catalog API:
- is public;
- requires no API key;
- supports stable dataset-ID endpoints across data refreshes;
- supports offset pagination.

CMS data freshness independently verified in this thread:
- Nursing Home Provider Information was released October 8, 2026 from a September 30, 2026 modification and had another planned update October 28.
- CMS reported a hospital dataset refresh September 30, 2026.
- This gives BMC a materially fresher institutional source alongside the older ADHS all-facilities GIS layer.

### Cross-source deduplication and evidence lineage

Source-native buyer records now preserve a nested `source_data.sources` map.

When ADHS and CMS describe the same organization:
- BMC reuses one buyer prospect when market + business name + public phone align;
- the buyer retains evidence for both sources;
- the newest source does not erase the prior source lineage;
- buyer count increases only once.

The deterministic CI fixture intentionally makes the CMS hospital the same organization as the ADHS hospital.

CI proves:
- ADHS active hospital + ADHS behavioral/residential facility + CMS nursing home = 3 buyer prospects total;
- the CMS hospital does **not** create a fourth buyer;
- the hospital prospect contains both `adhs_facilities_arcgis` and `cms_hospitals` evidence;
- the nursing-home prospect contains `cms_nursing_homes` evidence;
- there is exactly one buyer record for the duplicated hospital;
- no outreach rows are created.

### CMS source-native behavior

CMS rows are normalized into institutional buyer prospects using stable provider/facility identifiers, public address/phone, organization/facility type and ownership fields where available.

Current CMS facility service coverage includes:
- commercial cleaning
- floor/carpet
- window cleaning
- HVAC
- pest control
- parking lot
- fire safety
- locksmith/access control
- backflow/plumbing
- facility maintenance
- electrical
- duct/vent
- pressure washing
- linen/laundry
- restaurant equipment
- ice machine
- landscaping
- junk hauling
- waste audit
- coffee/water

Each CMS dataset has its own `source_native_state` row per market.

A source-native cycle therefore has independent cursor/health state for ADHS, CMS hospitals and CMS nursing homes.

### First-run / repeat-run CI proof

With the deterministic Prescott fixtures:

First run:
- 1 market;
- 3 successful source checks;
- 4 accepted source records;
- 3 new buyer prospects;
- 1 cross-source buyer update;
- zero outbound actions.

Second identical run:
- 3 successful source checks;
- 4 source records;
- 0 new prospects;
- 4 updates to the same existing prospects;
- zero duplicates;
- zero outbound actions.

The daily source-health brief now tracks all three source-market states independently.

### Key commits

- `1534fc07a4d4a165f10e5a7bfe13c9ba8d1445cd` — CMS source definitions, API normalization and multi-source merge helper.
- `8dca437a8c421743dacd527b27e5c367980dff09` — preserve multi-source institutional evidence.
- `f4da66c9b1070d5c56df3cc5087f0bf0201a153c` — CMS hospital + nursing-home source-native import loops.
- `b3cb871b85f33332d1e9326d8a5ab184d4194294` / `2b231eb46ebfc2461fb351bf4ba98936ecf1cba0` — CMS runtime configuration.
- `abec9eb3ff6dd0aec25d094c692cc87c402ac7d9` / `609ce8232b3b093f1307074729df8e438b7a2b5c` — deterministic CMS fixtures.
- `b2c704480a00c7fd0d88d1bc49716ac2b2a14cf7` — end-to-end CMS + ADHS cross-source CI proof; run `40220461989` green.

### Safe next institutional lanes

Official CMS datasets already identified for possible next integration:
- Home Health Care Agencies — `6jpm-sxkc`
- Hospice General Information — `yc9t-dgbk`

They should use the same rules:
- buyer prospect only;
- source-attributed;
- deduplicated;
- no automatic outreach;
- no clinical/patient-level data;
- no quality-score logic needed for acquisition.

### Production state remains unchanged

Current master remains ahead of the last verified VPS deployment.

Do not treat ADHS/CMS source-native research as live until the VPS safe deploy and production source-native smoke tests are run.

All outbound gates remain OFF.


## 28. FIVE-LANE HEALTHCARE + ARIZONA MARKET EXPANSION — 2026-10-25

This section continues Section 27 and captures the combined verified state after home-health/hospice integration plus concurrent Arizona market expansion.

### Verified combined checkpoint

Current verified master at this checkpoint:
- `64428d5cdbc1b1b13b0b41d49781050d32df1791`
- BMC Portfolio CI run `40220820415`: **SUCCESS**
- full database/API smoke: **SUCCESS**

The five-source healthcare changes were also independently green on:
- `3e52440e26bb3ccdb837c3908b7ef9e76daf0985`
- BMC Portfolio CI run `40220691445`: **SUCCESS**

This is important because additional Pages/search/market-scope commits landed concurrently after the healthcare build. Both the healthcare feature itself and the later combined master were verified green.

### Five institutional source-native lanes

Per configured source-native market, BMC now monitors:

1. `adhs_facilities_arcgis`
2. `cms_hospitals` — CMS dataset `xubh-q36u`
3. `cms_nursing_homes` — CMS dataset `4pq5-n9py`
4. `cms_home_health` — CMS dataset `6jpm-sxkc`
5. `cms_hospice` — CMS dataset `yc9t-dgbk`

Home health and hospice use a narrower office/facility service map than hospital/nursing-home sources so those organizations do not artificially count as buyers for kitchen/laundry-heavy facility services.

The hospital/nursing source map remains broader because those facilities are more likely to own or contract for full-building, grounds, laundry and food-equipment work.

### Five-source CI behavior

The deterministic Prescott smoke now models:
- 2 accepted ADHS facility records;
- 1 CMS hospital record that describes the same hospital already found by ADHS;
- 1 CMS nursing-home record;
- 1 CMS home-health agency;
- 1 CMS hospice organization.

Expected first-run result:
- 5 successful source lanes;
- 6 accepted source records;
- 5 unique institutional buyer prospects;
- 1 cross-source update/merge;
- zero external actions;
- zero outreach.

The hospital remains one buyer with both ADHS and CMS evidence.

Home-health/hospice records are prospect-only and preserve public organization/contact/source metadata, not clinical or patient information.

### Expanded Arizona research / source-native market scope

Concurrent repo work expanded default source-native coverage to 21 Arizona markets:

- Prescott
- Prescott Valley
- Chino Valley
- Dewey-Humboldt
- Mayer
- Cordes Lakes
- Williamson Valley
- Ash Fork
- Seligman
- Skull Valley
- Camp Verde
- Cottonwood
- Sedona
- Flagstaff
- Winslow
- Kingman
- Golden Valley
- Bullhead City
- Phoenix
- Scottsdale
- Tucson

The research backlog also adds smaller/regional Arizona markets with deliberately smaller provider/buyer goals than major metros.

This expansion is research coverage, not an instruction to build thin public SEO pages.

### Source freshness

Official CMS datasets used here are current public Provider Data Catalog sources. In this thread:
- Home Health Care Agencies `6jpm-sxkc` was identified as a current CMS source with an October 2026 release cycle.
- Hospice General Information `yc9t-dgbk` had an August 2026 refresh.
- CMS hospital/nursing feeds are materially fresher than the older ADHS all-facilities layer.

ADHS remains useful as independent facility evidence, but CMS now prevents BMC from relying on ADHS alone for major institutional categories.

### Newly identified reliability gaps

#### 1. Never-started source blind spot

Current source-health logic can alert when a tracked source becomes stale, but if a configured source-native lane never runs even once after deployment, it may not yet have a `source_native_state` row to become stale.

Next fix:
- initialize expected source/market state automatically;
- do not alert immediately on fresh deployment;
- after an appropriate grace period, surface a configured source that has never completed successfully.

#### 2. Smaller-market postal-city aliases

Some newly added BMC markets are CDP/neighborhood/regional names while official facility datasets may store a different USPS/mailing city.

Examples that need careful handling include:
- Dewey-Humboldt
- Cordes Lakes
- Williamson Valley

Do not solve this by blindly mapping a small market to a large nearby city, which would falsely attribute all Prescott/Mayer institutions to the smaller BMC market.

Preferred approach:
- maintain explicit, conservative source-query aliases only when they preserve geographic meaning;
- otherwise let broad web research cover the market rather than polluting source-native counts;
- keep the BMC market label distinct from the source mailing-city value in evidence.

### Concurrent repo activity

During this build, other legitimate commits landed on `master` for:
- search/download readiness;
- sitemap/canonical/Growth Pack integrity;
- Service Network root Pages deployment/DNS documentation;
- expanded Arizona research-market scope.

Those changes were preserved. No branch reset, force push or destructive merge was used.

### Production state

Still not independently verified on the VPS.

The current code/CI state is ahead of the last confirmed production deployment.

Outbound gates remain unchanged:
- vendor outreach OFF;
- buyer outreach OFF;
- Growth Pack outreach OFF;
- no automatic bids;
- no private social scraping;
- no automatic contact to individual demand posters;
- no provider activation from research evidence.


## 28. LAUNCH READINESS + ARIZONA EXPANSION CHECKPOINT — 2026-10-25

This section captures the owner-reported launch blockers, recovered Better Whisper dictation, and implementation work completed after Sections 24–27. Treat this as the latest continuation point for the public-site/domain/research-launch work.

### Verified functional checkpoint

Current master at this checkpoint:
- `64428d5cdbc1b1b13b0b41d49781050d32df1791`
- BMC Portfolio CI run `40220820415`: **SUCCESS**
- automatic Pages build run `40220819815`: **SUCCESS**

Important: successful GitHub CI/Pages does **not** mean the BMC custom domain or current VPS runtime is fully launched.

### Recovered owner direction preserved

Recovered from Better Whisper history:
- target is to be capable of launching Monday if practical;
- acquisition should be outreach-led initially, with controlled business email plus potential Meta/Facebook ads;
- Arizona research should not be treated as a Prescott-only experiment;
- Phoenix, Scottsdale, Tucson and other major markets should be serious revenue markets;
- county health/environmental-health lists, licensed-facility directories and other authoritative public datasets should be exploited for internal research;
- small/regional markets explicitly requested:
  - Dewey-Humboldt
  - Mayer
  - Cordes Lakes
  - Williamson Valley
  - Ash Fork
  - Seligman
  - Skull Valley
  - Golden Valley
  - Bullhead City
- completed research should create a very large provider/buyer prospect base, not a small token directory;
- possible future “support Arizona / support local” positioning is preserved but **not approved for deployment**.

### Customer request failure fixed in frontend

Owner reported that a public customer request failed, showed an email-related problem, then opened/redirected into email.

Root cause found:
- `portfolio/assets/core.js` deliberately used a `mailto:` fallback whenever `https://hooks.bmcservicenetwork.com/api/intake` was unreachable.

Fixed:
- public form failures stay on-page;
- customer-entered fields remain in place;
- payload is also preserved in `sessionStorage` best-effort;
- UI tells the customer to retry and use the footer contact path only if the problem persists;
- public form code no longer redirects into an email client;
- CI/form validation now rejects reintroduction of the `mailto:` fallback.

This removes the bad customer experience, but the underlying public intake hostname still must be made reachable through DNS/tunnel + current VPS deployment.

### Growth Pack sample workbook rebuilt

Owner reported the website sample workbook still produced a file-extension/format error.

The sample was rebuilt from scratch as a clean Excel workbook and committed to:
- `portfolio/growth-packs/sample/sample-growth-pack.xlsx`

The rebuilt workbook includes:
- formatted prospect table;
- filters;
- frozen headers;
- priority styling;
- public contact fields;
- likely-need / fit / outreach-angle fields;
- Read Me sheet;
- fictional sample data.

CI now opens the XLSX as a ZIP-based Office package and verifies required workbook/package parts, so a corrupt/fake-extension file cannot silently ship again.

Rebuilt workbook commit:
- `6e11f42a66c22a0f0954bfe825d55b86ff541dc4`

### Search / sitemap readiness fixed

Before this checkpoint, 9 registered live service fronts were absent from `sitemap.xml`.

Added:
- Auto Repair Shop
- Electrical Service
- Facility Maintenance
- Handyman Repairs
- Home Staging
- Hood Exhaust Cleaning
- House Cleaning
- Ice Machine Service
- Realtor Listing Prep

New CI validator:
- `portfolio/automation/validate-search-readiness.py`

It now checks:
- every registered live service front is in the sitemap;
- sitemap uses the canonical BMC origin;
- robots.txt advertises the sitemap;
- canonical JS is pinned to the non-www BMC domain;
- Growth Pack XLSX is a readable Office package.

Canonical policy:
- `https://bmcservicenetwork.com` is canonical;
- `www` should be a redirect/access variant, not a second SEO identity.

### Major GitHub Pages / DNS discovery

Owner screenshot proved:
- `www.bmcservicenetwork.com` -> `ERR_NAME_NOT_RESOLVED`.

GitHub Pages logs then revealed the larger issue:

The current automatic branch Pages deployment publishes the repository root and reports its environment URL as:
- `http://mycosmicsoulmap.com/bmc-luminary-site/`

The BMC Service Network itself lives under:
- `portfolio/`

Therefore simply adding a `www` CNAME to the current configuration is not enough to produce the intended clean BMC domain/site architecture.

Prepared manual-only workflow:
- `.github/workflows/bmc-service-network-pages.yml`

It publishes:
- `./portfolio`

as the actual Pages artifact root.

Do **not** run it until the repository Pages source is switched from branch publishing to **GitHub Actions**.

Correct target:
- GitHub Settings -> Pages -> Source = GitHub Actions;
- custom domain = `bmcservicenetwork.com`;
- Namecheap apex A records:
  - `185.199.108.153`
  - `185.199.109.153`
  - `185.199.110.153`
  - `185.199.111.153`
- Namecheap `www` CNAME:
  - `bmcgarybot.github.io`
- preserve MX/SPF/DKIM/DMARC/email records;
- keep `hooks.bmcservicenetwork.com` separate for Cloudflare Tunnel;
- enable Enforce HTTPS after GitHub validates DNS.

See updated:
- `portfolio/automation/DNS_HOSTING.md`

Important:
- do not point `www` to the apex;
- do not add wildcard DNS;
- GitHub recommends pointing `www` directly to `<user>.github.io`.

### Google Search Console state

The repo already has:
- `robots.txt`;
- `sitemap.xml`.

But:
- public search for the BMC domain returned no meaningful indexed result;
- no completed Search Console ownership state is evidenced in the repo;
- the domain/hosting architecture must be fixed before sitemap submission is treated as launch-complete.

After DNS/Pages works:
1. create Google Search Console **Domain property** for `bmcservicenetwork.com`;
2. add Google's DNS TXT verification record;
3. submit `https://bmcservicenetwork.com/sitemap.xml`;
4. request indexing for homepage, services, request, Growth Packs, major markets and priority service fronts.

Do not promise immediate Google visibility; indexing can take time and is not guaranteed merely by sitemap submission.

### Windsor.ai decision

Owner asked whether the 29-day trial countdown means BMC must pay.

Current Windsor.ai documentation says:
- the initial 30-day expanded trial drops to a Forever Free plan;
- Forever Free supports 1 data source + 1 account;
- no credit card is required and there is no automatic bill merely because the trial ends.

Repository search found **no BMC runtime dependency on Windsor.ai**.

Current recommendation:
- **do not pay for Windsor.ai for launch**;
- use it only if its one free connected analytics source is useful;
- reconsider paid Windsor only if BMC later needs multi-source marketing aggregation badly enough to justify another recurring SaaS cost.

### Live Stripe account checked

Live Stripe account:
- `acct_1UU9OfQU2BLM8GhL`
- name: BMC Luminary Ventures LLC

Current live state checked through Stripe:
- `charges_enabled=false`
- `payouts_enabled=false`
- `details_submitted=false`
- disabled reason: `requirements.past_due`

Currently due includes:
- business profile MCC/category;
- product description;
- support phone;
- website;
- business type;
- representative identity/email/DOB;
- statement descriptor;
- Terms acceptance.

Therefore Stripe onboarding remains a real launch blocker.

Do not create another Stripe account; finish the existing BMC account.

### Arizona market expansion is now implemented

Public intake market vocabulary expanded to include:
- Dewey-Humboldt
- Mayer
- Cordes Lakes
- Williamson Valley
- Ash Fork
- Seligman
- Skull Valley
- Golden Valley
- Bullhead City

No thin SEO market pages were created for these places.

Instead, research coverage was expanded in `seed-research-scale.sql`.

New research cells:
- 9 regional markets;
- 12 provider categories per market;
- 10 buyer categories per market;
- **198 additional market/service/side research cells**.

Examples of provider categories:
- tree service
- landscaping
- rural property
- junk hauling
- handyman
- residential cleaning
- towing
- traditional auto repair
- HVAC
- electrical
- garage door
- pest control

Examples of buyer categories:
- commercial cleaning
- facility maintenance
- HVAC
- electrical
- locksmith/access control
- landscaping
- tree service
- pest control
- parking lot
- restaurant equipment

Target depth is market-sized:
- Bullhead City is weighted higher;
- very small markets have deliberately smaller targets.

The added cells create roughly **1,400+ additional prospect target slots** across these markets.

Source-native ADHS/CMS default market scope was also expanded to these places so official healthcare/facility datasets can contribute when matching records exist.

All expansion CI is green.

### What now requires Brett / external account action

#### 1. GitHub Pages + Namecheap DNS
This is not a VPS task.

Brett must:
- switch repo Pages source to GitHub Actions;
- set custom domain `bmcservicenetwork.com`;
- add/verify Namecheap website DNS records while preserving email records;
- run the prepared manual BMC Service Network Pages workflow;
- enable HTTPS once available.

#### 2. Google Search Console
After domain works:
- create/verify Domain property;
- add Google TXT verification in Namecheap;
- submit sitemap;
- request priority indexing.

#### 3. Stripe
Finish the existing live account onboarding.

### What now requires VPS deployment

GitHub master is materially ahead of the last independently verified VPS runtime.

After public-site/DNS work or when ready to refresh production backend, run:

```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
docker compose --env-file .env build ops_api
bash ./start.sh .env
bash ./runtime-doctor.sh .env
```

Important existing production `.env` may still contain the older `SOURCE_NATIVE_MARKETS` value. After pulling, ensure it includes the expanded market list or remove that explicit value so the current default can take effect.

Then verify:
- 54 services;
- `fix my fryer`;
- `brake repair`;
- provider dashboard;
- provider requested-service approval;
- daily brief;
- procurement processor;
- local-demand processor;
- source-native research;
- public ingress to `hooks.bmcservicenetwork.com/api/intake`;
- outreach switches remain OFF.

### Safety remains unchanged

Still OFF / prohibited unless separately approved:
- vendor outreach;
- buyer outreach;
- Growth Pack outreach;
- automatic procurement bid submission;
- private Facebook/Nextdoor/group scraping;
- automatic contact to individual demand posters;
- automatic provider activation from registry/research evidence.

### Recommended continuation order

1. Fix Pages source + root/www DNS.
2. Deploy current master to VPS and verify hooks/customer intake.
3. Finish Stripe onboarding.
4. Set up Search Console after the domain is real.
5. Retest the Growth Pack sample from the live domain.
6. Retest a real customer request from the live domain.
7. Review first real provider activation readiness.
8. Only after Brett explicitly approves, prepare a tiny controlled provider/buyer/Growth Pack outreach batch.


## 29. FINAL THREAD TRANSFER — LAUNCH BLOCKERS + DEPLOYMENT — 2026-10-25

This is the final continuation checkpoint for this thread. Read Sections 28–29 first before doing more public-site or launch work.

### Latest verified GitHub checkpoint

Current functional HEAD at this checkpoint:
- `63f1f911237abf47310f65ba7c6816fb02f1d647`

BMC Portfolio CI:
- run `40221058846`: **SUCCESS**
- full database/API smoke: **SUCCESS**
- search/download readiness: **SUCCESS**
- form contracts: **SUCCESS**
- Compose/scripts/public gateway validation: **SUCCESS**

### Additional safe VPS helper

Added:
- `portfolio/automation/expand-source-native-markets.sh`

Purpose:
- existing production `.env` may contain the older explicit 12-market `SOURCE_NATIVE_MARKETS` value;
- that would override the newer code/Compose defaults;
- the helper unions missing recovered Arizona markets into the existing value;
- it does not replace/remove custom markets;
- it does not touch passwords, Stripe, SMTP, Cloudflare or outreach settings;
- it restores mode 600 on the env file.

`runtime-doctor.sh` now verifies:
- at least 198 recovered Arizona expansion research cells exist;
- the source-native market scope includes the recovered expansion, or warns to run the helper.

### Exact VPS refresh block

A VPS update is now required for the current backend/research/intake code.

Run:

```bash
ssh ubuntu@148.113.151.47
cd ~/bmc-luminary-site/portfolio/automation

git pull --ff-only
chmod +x expand-source-native-markets.sh
bash ./expand-source-native-markets.sh .env

docker compose --env-file .env build ops_api
bash ./start.sh .env
bash ./runtime-doctor.sh .env
```

Then:

```bash
bash ./verify-public-ingress.sh
```

Do not turn outreach on.

After deploy, verify:
- 54 services;
- recovered Arizona expansion research cells >=198;
- `fix my fryer` -> restaurant equipment;
- `brake repair` -> traditional auto repair;
- provider dashboard;
- provider requested-service approval;
- daily brief/source health;
- procurement monitor;
- local-demand monitor;
- source-native ADHS/CMS lanes;
- `hooks.bmcservicenetwork.com/api/intake` works publicly;
- all outreach switches remain OFF.

### Current public-site/domain blocker

The owner screenshot showed `www.bmcservicenetwork.com` NXDOMAIN.

More importantly, GitHub Pages deployment logs show the current branch Pages site still deploys the repository root under:
- `http://mycosmicsoulmap.com/bmc-luminary-site/`

The BMC Service Network site is under `portfolio/`.

Prepared:
- `.github/workflows/bmc-service-network-pages.yml`

This manual workflow publishes `portfolio/` as the Pages site root.

External GitHub/Namecheap actions still required:
1. GitHub repo Settings -> Pages -> Source = **GitHub Actions**.
2. Custom domain = `bmcservicenetwork.com`.
3. Namecheap website DNS:
   - four GitHub Pages apex A records;
   - `www` CNAME -> `bmcgarybot.github.io`;
   - preserve all email and hooks-related records.
4. Run manual **BMC Service Network Pages** workflow.
5. Enable Enforce HTTPS once GitHub validates the domain.

See `DNS_HOSTING.md` for exact records.

### Search Console

Do this only after the real BMC domain works:
- add Google Search Console Domain property `bmcservicenetwork.com`;
- verify with Google's TXT DNS record;
- submit `https://bmcservicenetwork.com/sitemap.xml`;
- request indexing for priority pages.

The sitemap now includes all 54 registered service fronts and CI prevents future omissions.

### Growth Pack sample

Rebuilt clean XLSX is committed and CI verifies it is a readable Office package.

Retest it from the final custom domain after Pages/DNS is switched.

### Customer request bug

Frontend mail-client fallback is removed.

Underlying intake still must be retested after:
- current VPS deployment;
- `hooks.bmcservicenetwork.com` DNS/tunnel verification.

### Stripe status — live account

Account:
- `acct_1UU9OfQU2BLM8GhL`

Current state checked this thread:
- charges disabled;
- payouts disabled;
- details not submitted;
- disabled reason = requirements past due.

Current onboarding requirements include:
- MCC/category;
- product description;
- support phone;
- website;
- business type;
- representative identity/DOB/email;
- statement descriptor;
- Terms acceptance.

Current live Payment Links:
- **0**

Do not make a second Stripe account.

After onboarding is approved:
- create the four existing product Payment Links;
- update website/billing config;
- configure/verify the live Stripe webhook.

### Windsor.ai

No BMC repo dependency was found.

Current Windsor documentation says the 30-day trial drops to Forever Free (1 source / 1 account) rather than automatically charging.

Recommendation:
- do not buy a Windsor plan for launch;
- keep free only if one analytics connector is useful;
- reconsider later if multi-source marketing reporting justifies cost.

### Outreach state

Still OFF.

Do not enable:
- provider outreach;
- buyer outreach;
- Growth Pack outreach;

until Brett explicitly approves a small controlled batch after domain, intake, Stripe and provider-readiness checks.

### Next-thread sequence

1. Help Brett perform the GitHub Pages + Namecheap DNS switch.
2. Have Brett run the VPS refresh block above.
3. Retest live root + www + HTTPS + hooks.
4. Retest customer request.
5. Retest Growth Pack XLSX from production.
6. Finish Stripe onboarding and then Payment Links/webhook.
7. Set up Search Console.
8. Review provider launch readiness.
9. Only with explicit approval, prepare the first tiny outbound batch.


## 30. BOUNDED SOURCE-NATIVE ROTATION CHECKPOINT — 2026-10-25

This section continues Section 29 and records the source-native scaling fix added after the final launch/VPS transfer checkpoint.

### Verified functional checkpoint

Current verified master at this checkpoint:
- `4484a78a2e6dbd016b954d3bee4ec48f0c19ae4b`
- BMC Portfolio CI run `40221507818`: **SUCCESS**
- full database/API smoke: **SUCCESS**

### Why this changed

The expanded source-native footprint is now:

- 21 Arizona markets
- 5 institutional source lanes per market
- 105 expected source/market lanes total

The prior twice-daily implementation could therefore make up to 105 sequential external source requests in one API invocation.

That was acceptable while the source-native footprint was small, but it is not a good autonomous production pattern at the expanded Arizona scale.

### New bounded rotation

Added:

```env
SOURCE_NATIVE_CHECK_BATCH=10
```

Production behavior:
- source-native processing selects at most **10 expected lanes per invocation**;
- selection is oldest-run-first;
- never-run lanes are processed before already-run lanes;
- source/market cursor state is retained;
- each processed lane updates its own `last_run_at` / success/error state;
- the endpoint reports:
  - `lanes_selected`
  - `lanes_remaining`
  - `lane_batch_limit`

At 105 expected lanes and a 10-lane batch, a normal healthy footprint rotates through roughly one complete sweep across successive hourly passes instead of one giant request.

### Scheduler cadence

Source-native research changed from one large twice-daily pass to a bounded hourly pass.

The scheduler intentionally staggers it from the main hourly workload:

```bash
if [ $((i % 12)) -eq 6 ]; then
  curl --max-time 360 -fsS -X POST http://ops_api:8000/api/process-source-native-research \
    -H "X-BMC-Admin-Key: ${BMC_ADMIN_KEY}" || true
fi
```

This means:
- the source-native pass starts around the half-hour relative to the scheduler loop;
- each call has a six-minute outer timeout;
- a broken external source cannot wedge the scheduler indefinitely;
- the normal research agent, procurement scanner and local-demand scanner remain independent.

### Rotation fairness

Lane selection is ordered by:
1. whether a lane has never run;
2. oldest `last_run_at`;
3. in-progress cursor state as a tie-breaker;
4. source / market.

This deliberately favors fairness across the Arizona footprint rather than letting a large multi-page Phoenix source monopolize every pass.

A multi-page lane retains its cursor and returns on a later rotation.

### CI proof

CI uses:
- one configured market: Prescott;
- five real expected institutional source lanes;
- `SOURCE_NATIVE_CHECK_BATCH=5`;
- one extra synthetic expected Phoenix lane with a recent successful run.

The first source-native pass must:
- select exactly 5 lanes;
- leave 1 lane remaining;
- process the five never-run Prescott lanes;
- leave the newer synthetic Phoenix lane untouched;
- retain the existing five-source institutional buyer behavior;
- create zero outreach.

The synthetic lane is then removed.

The second pass must:
- select all five real Prescott lanes;
- report zero remaining;
- update the same buyer prospects idempotently;
- preserve cross-source dedupe;
- preserve zero outbound actions.

BMC CI run `40221507818` passed this full rotation test.

### Key commits

- `399414b3156553e1d60df6392155a913b4cb9615` — bound source-native research into rotating lanes.
- `57ef4fbc97fbd74c55cd469c0ce44afeaecccc17` — document/configure 10-lane default.
- `eb79395b268513aa9a7dd0be3802eb524ff271cb` — pass the lane batch limit into Ops API.
- `80c276ddb0c48e67846737bad588bea551142214` — rotate bounded source-native research hourly.
- `aab3b8b853a28752c4a4ee7fabce86a3d45800b9` — add bounded-rotation CI proof.
- `4484a78a2e6dbd016b954d3bee4ec48f0c19ae4b` — fix the test fixture JSON; CI `40221507818` green.

### Source-health interaction

This works together with the never-started / stale monitoring from Section 29:

- every configured source/market lane exists in state at API startup;
- fresh never-run lanes get a 36-hour grace period;
- hourly batching should normally touch the full 105-lane footprint well within that grace period;
- if the rotation stops, a lane never starts, or a source repeatedly fails, it eventually surfaces in **Needs Brett**.

Routine healthy rotation remains invisible to Brett.

### Production state

Still not independently verified on the VPS.

Do not claim the bounded source-native rotation is live until the current master is deployed and the production scheduler/state is checked.

After deployment verify:
- `SOURCE_NATIVE_CHECK_BATCH` resolves to 10 unless intentionally overridden;
- expected source-native state count matches the configured market/source footprint;
- hourly scheduler passes begin advancing `last_run_at`;
- `lanes_selected` never exceeds the batch limit;
- stale/never-started lanes remain absent when rotation is healthy;
- all outreach switches remain OFF.

### Remaining source-native geography rule

Do not inflate smaller-market coverage with unsafe postal-city aliases.

A conservative alias may be added only when the official geography is defensible. Dewey-Humboldt has official evidence supporting Dewey/Humboldt naming, but Cordes Lakes, Williamson Valley and similar areas should not simply inherit all Mayer/Prescott institutions.

Broad web research remains preferable to false source-native attribution.


## 30. DNS AUTHORITY CORRECTION — CLOUDFLARE IS SOURCE OF TRUTH — 2026-10-25

This section corrects a handoff regression introduced in Sections 28–29.

### Authoritative correction

`bmcservicenetwork.com` is registered at Namecheap **but authoritative DNS is already delegated to Cloudflare**:

- `iris.ns.cloudflare.com`
- `will.ns.cloudflare.com`

Therefore all active BMC DNS changes belong in:
- **Cloudflare -> bmcservicenetwork.com -> DNS -> Records**

Do **not**:
- switch nameservers back to Namecheap BasicDNS;
- try to manage the active BMC A/CNAME/MX/TXT records in Namecheap Advanced DNS;
- rebuild the Cloudflare Tunnel from scratch;
- disturb existing `hooks`, MX, SPF, DKIM, DMARC, or mail-verification records.

### Existing setup that was already completed before this thread

Earlier handoff sections were correct that:
- Cloudflare Tunnel had already been configured;
- `hooks.bmcservicenetwork.com` had already been published to the restricted webhook gateway;
- public ingress had already been verified;
- Namecheap Private Email for `contact@bmcservicenetwork.com` was configured;
- SMTP + IMAP were verified;
- SPF/DKIM were configured.

The newer Namecheap-DNS instructions in Sections 28–29 were wrong because they failed to reconcile that existing Cloudflare delegation.

### Current Pages work already completed

In this thread Brett already:
- switched `bmcgarybot/bmc-luminary-site` Pages source to **GitHub Actions**;
- ran **BMC Service Network Pages** successfully;
- set GitHub Pages custom domain to `bmcservicenetwork.com`.

GitHub now reports:
- apex/custom domain accepted as primary;
- `www.bmcservicenetwork.com` improperly configured / DNS record missing;
- HTTPS unavailable until DNS is corrected.

### Correct next step

Inspect the existing **Cloudflare DNS Records** list before editing anything.

For the static GitHub Pages site, the intended records are:
- apex A -> `185.199.108.153`
- apex A -> `185.199.109.153`
- apex A -> `185.199.110.153`
- apex A -> `185.199.111.153`
- `www` CNAME -> `bmcgarybot.github.io`

Preserve:
- `hooks` Cloudflare Tunnel record;
- mail MX records;
- SPF;
- DKIM;
- DMARC;
- all other working verification records.

Review the existing Cloudflare record list first and only change website-conflicting rows.

### Related repo ownership verified this thread

- `bmcgarybot/bmcgarybot.github.io` owns `mycosmicsoulmap.com` and contains a CNAME for that domain.
- `bmcgarybot/qns-site` owns `quantumneuroshift.com` and contains a CNAME for that domain.
- `bmcgarybot/bmc-luminary-site` is the BMC Service Network repo and does not own those other sites.

The account-level Cosmic Soul Maps custom domain caused project-site URLs such as `mycosmicsoulmap.com/bmc-luminary-site/`, but changing the BMC project's custom domain does not delete the separate Cosmic Soul Maps or QNS repositories/sites.

### Process correction

Before asking Brett to repeat infrastructure setup, first check:
1. HANDOFF;
2. current repo scripts/docs;
3. current live/runtime verification output;
4. existing DNS/provider ownership.

Do not infer “not configured” from one UI screen when the handoff already records a verified setup.


## 31. STATIC HOSTING CORRECTION — CLOUDFLARE PAGES IS PRODUCTION — 2026-10-25

Live Cloudflare DNS inspection finally confirmed the original static hosting architecture:

- production apex `bmcservicenetwork.com` is a proxied CNAME to:
  - `bmc-service-network.pages.dev`
- `hooks.bmcservicenetwork.com` remains the existing Cloudflare Tunnel;
- Namecheap Private Email MX records remain present;
- SPF remains present;
- DKIM remains present.

Therefore the production BMC website is already on **Cloudflare Pages**.

The GitHub Pages custom-domain work performed in this thread was unnecessary and must not replace the Cloudflare Pages apex.

### Correct www repair

Do not manually change the existing apex CNAME.

For `www.bmcservicenetwork.com`:
1. open Cloudflare -> Workers & Pages;
2. open the existing `bmc-service-network` Pages project;
3. open Custom domains;
4. add `www.bmcservicenetwork.com` through the Pages custom-domain flow;
5. only after it is active, create/verify a 301 redirect from `www` to `https://bmcservicenetwork.com` if desired.

Cloudflare documentation warns that manually creating a Pages CNAME without associating the hostname in the Pages project can produce a 522.

### GitHub Pages

`bmc-luminary-site` was temporarily switched to GitHub Actions Pages and given the BMC custom domain during troubleshooting. That is not the intended production architecture.

Do not point Cloudflare DNS at GitHub Pages.

After Cloudflare Pages custom-domain state is reconfirmed, remove the BMC custom-domain claim from GitHub Pages so only Cloudflare Pages owns the production hostname.

### Email improvement still outstanding

Cloudflare currently recommends adding DMARC for `@bmcservicenetwork.com`.

Do this only after the website hostname repair, preserving the existing MX/SPF/DKIM records.


## 32. STRIPE LIVE CHECKOUT + WEBHOOK — 2026-10-25

Stripe onboarding is now complete on live account `acct_1UU9OfQU2BLM8GhL`:
- charges enabled;
- payouts enabled;
- details submitted;
- no outstanding requirements;
- card payments active.

Four live one-time Payment Links were created:

- `growth_pack_starter` / BMC Local Growth Pack — $499
  - `plink_1UUYdjQU2BLM8GhLWdq2uB1F`
  - `https://buy.stripe.com/cNi00lfxD8pJdBxa5G1oI00`
- `growth_pack_premium` / BMC Premium Growth Pack — $749
  - `plink_1UUYdvQU2BLM8GhLe3QUR0Yg`
  - `https://buy.stripe.com/6oUdRb3OV49t5515Pq1oI01`
- `competitor_intelligence_pack` / BMC Local Competitor Intelligence Pack — $299
  - `plink_1UUYe2QU2BLM8GhL6xBTBVC8`
  - `https://buy.stripe.com/eVq5kFbhn21l0OLfq01oI02`
- `market_expansion_pack` / BMC Local Market Expansion Pack — $699
  - `plink_1UUYe6QU2BLM8GhLgTbWoNAJ`
  - `https://buy.stripe.com/fZu6oJ99f21lfJF2De1oI03`

All four links redirect after successful checkout to:
- `https://bmcservicenetwork.com/order-complete/`
with `offer` and `session_id={CHECKOUT_SESSION_ID}`.

Updated in GitHub:
- `portfolio/data/billing.json` -> checkout live + exact link IDs/URLs;
- `portfolio/data/products.json` -> exact live link IDs/URLs;
- `portfolio/automation/seed-products.sql` -> exact link IDs/URLs;
- `migrate.sh` now applies `seed-products.sql` during safe production refreshes.

Google Drive Master Operations:
- Billing tab updated for all four products;
- status = `live`;
- old activation blockers removed;
- exact live Payment Link IDs/URLs recorded.

Live Stripe webhook endpoint created:
- endpoint ID: `we_1UUYgvQU2BLM8GhLlqebzgMb`
- URL: `https://hooks.bmcservicenetwork.com/api/stripe-webhook`
- status: enabled
- events:
  - `checkout.session.completed`
  - `checkout.session.async_payment_succeeded`
  - `invoice.paid`
  - `customer.subscription.created`
  - `customer.subscription.updated`
  - `customer.subscription.deleted`
  - `customer.subscription.paused`
  - `customer.subscription.resumed`
  - `refund.created`

The webhook signing secret is intentionally NOT stored in GitHub or in this handoff.

Added:
- `configure-stripe-webhook.sh`

This script prompts invisibly for the Stripe signing secret, updates only `STRIPE_WEBHOOK_SECRET` in VPS `.env`, chmods the env back to 600, recreates `ops_api`, then runs runtime doctor + public ingress verification.

Required final VPS step:

```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
chmod +x configure-stripe-webhook.sh
bash ./configure-stripe-webhook.sh .env
```

When prompted, paste the signing secret from the Stripe webhook endpoint. Do not paste it into chat.

After that, perform one small real checkout validation and confirm:
- Stripe payment succeeds;
- redirect returns to BMC order-complete page;
- webhook delivery returns 2xx;
- payment event/order/revenue rows are created;
- Growth Pack fulfillment intake linkage works.

Outreach remains OFF.


## 33. STRIPE WEBHOOK SECRET INSTALLED ON VPS — PRODUCTION VERIFIED — 2026-10-25

Owner completed the secure VPS webhook-secret installation using:
- `configure-stripe-webhook.sh .env`

Verified production results from the VPS after installation:

- Ops API restarted successfully.
- Runtime doctor: **Core failures: 0 · warnings: 0**.
- Deployment target: cloud VPS.
- Service registry: **54 services**.
- Traditional auto repair active.
- Vendor research pool: **211**.
- Buyer research pool: **156**.
- Research backlog: **839 queued**.
- Recovered Arizona expansion research cells: **198**.
- First Wave: **12 providers + 7 buyers**.
- Vendor outreach global switch: **OFF**.
- Buyer outreach global switch: **OFF**.
- Outbound waves restricted to pilot1.
- Stripe launch gate: **payments_ready = READY**.
- AI/search gate: **intelligent_search_ai_ready = READY**.
- `fix my fryer` maps to restaurant equipment repair.
- `brake repair` maps to traditional auto repair.
- Ollama `qwen3:1.7b` reachable and loaded.
- Public ingress verification passed:
  - root hooks hostname -> 404 as intended;
  - `/api/intake` -> 405 on GET, proving the route reaches the application gateway;
  - `/api/stripe-webhook` -> 405 on GET, proving the route reaches the application gateway;
  - public `/admin` and `/api/admin/preflight` -> 404, confirming private admin remains unexposed.
- Stripe webhook signing secret is stored only in VPS `.env`, not GitHub.

Current remaining launch gate from runtime doctor:
- `live_intake_ready = BLOCKED` only because **no verified pilot provider has yet been activated**.

GitHub:
- authoritative handoff commit before this note: `38b04937be01065438766d32b275a545dd05df2f`
- BMC Portfolio CI for that commit completed **SUCCESS**.

### Next Stripe validation

Run one deliberate live purchase validation through the lowest-cost product or a purpose-built low-value live test checkout, then verify:
1. Stripe payment succeeds;
2. customer returns to `/order-complete/`;
3. Stripe webhook delivery receives HTTP 2xx;
4. `payment_events`, `orders`, and `revenue_events` update as expected;
5. fulfillment/intake linkage behaves correctly.

Do not enable outreach as part of the Stripe validation.

### Launch interpretation

Infrastructure/payment readiness is no longer the main blocker.

The primary operational launch blocker is now:
- activate at least one real, verified pilot provider.

After provider activation, re-run `runtime-doctor.sh .env` and confirm `live_intake_ready` becomes READY.


## 34. STRIPE LIVE WEBHOOK 502 ROOT CAUSE + GATEWAY REFRESH FIX — 2026-10-25

A harmless live Stripe validation was performed:
- production webhook temporarily subscribed to `payment_link.updated`;
- metadata-only update made to the $499 live Payment Link;
- Stripe generated event `evt_1UUbryQU2BLM8GhLYqgJ5WtA`;
- no charge, price change, customer-facing change, or fake revenue was created.

Stripe delivery returned:
- **HTTP 502**
- delivery status: Failed
- event remained pending.

Root cause identified:
- `configure-stripe-webhook.sh` recreated `ops_api` after installing the signing secret;
- `webhook_proxy` (nginx) was not recreated;
- nginx resolves Docker service names at container startup and retained the old `ops_api` container address;
- GET `/api/stripe-webhook` returning 405 did not prove upstream health because nginx itself returns that 405 before proxying;
- the POST request therefore reached nginx but failed to reach the recreated API container, producing 502.

Permanent mitigation committed:
- `configure-stripe-webhook.sh` now force-recreates `webhook_proxy` immediately after recreating `ops_api`;
- `start.sh` now starts application services first and then force-recreates `webhook_proxy` so nginx resolves current Docker container addresses.

Immediate production repair:
```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
docker compose --env-file .env up -d --force-recreate webhook_proxy
```

Then in Stripe, use **Resend** on event:
- `evt_1UUbryQU2BLM8GhLYqgJ5WtA`

Expected result:
- HTTP 2xx, normally 200;
- pending webhook count clears.

After successful delivery:
- remove temporary `payment_link.updated` subscription from the Stripe production webhook;
- remove temporary `bmc_webhook_test` metadata from the $499 Payment Link;
- record validation success here.

Outreach remains OFF.


## 35. STRIPE WEBHOOK LIVE DELIVERY VERIFIED — 2026-10-25

Production Stripe webhook validation is now **PASS**.

Harmless live test:
- temporary event subscription: `payment_link.updated`;
- test event: `evt_1UUbryQU2BLM8GhLYqgJ5WtA`;
- no charge or customer payment occurred;
- temporary metadata only was used on the $499 Payment Link.

Initial delivery failed with HTTP 502 because nginx retained the old `ops_api` Docker address after API recreation.

Production repair:
- pulled the gateway-refresh fix;
- recreated `webhook_proxy`;
- Stripe retried successfully.

Verified Stripe Workbench result:
- delivery status: **Delivered**
- recovery status: **Recovered**
- HTTP status: **200 OK**
- `pending_webhooks: 0`
- response on manual resend:
  `{"received": true, "duplicate": true}`

Interpretation:
- the first successful post-repair delivery was already persisted by the backend;
- the manual resend was safely rejected as a duplicate by the backend's idempotency check;
- public Cloudflare -> nginx -> ops_api POST routing works;
- Stripe signature verification works with the installed live signing secret;
- `payment_events` idempotency works.

Cleanup completed:
- removed temporary `payment_link.updated` subscription;
- removed temporary `bmc_webhook_test` metadata from the $499 Payment Link;
- production webhook is back to the intended event set only.

Current webhook endpoint:
- `we_1UUYgvQU2BLM8GhLlqebzgMb`
- `https://hooks.bmcservicenetwork.com/api/stripe-webhook`
- status: enabled
- live mode: true

Production events:
- `checkout.session.completed`
- `checkout.session.async_payment_succeeded`
- `invoice.paid`
- `customer.subscription.created`
- `customer.subscription.updated`
- `customer.subscription.deleted`
- `customer.subscription.paused`
- `customer.subscription.resumed`
- `refund.created`

Stripe webhook infrastructure is now operationally complete.

The next launch blocker remains:
- activate at least one real, verified pilot provider so `live_intake_ready` can become READY.

Outreach remains OFF.


## 36. PRE-LAUNCH COPY CLEANUP + RESEARCH BACKLOG PASS — 2026-10-25

Owner explicitly paused first-provider activation to do one more pre-launch quality pass.

Current priorities, in order:

1. **Public-site wording cleanup**
   - review public-facing descriptions, headings, buttons, and explanatory copy;
   - remove wording that sounds like internal product taxonomy, AI-generated filler, vague consultant language, or awkward operational jargon;
   - make the site sound like a straightforward Arizona service network that helps people/businesses find providers and helps businesses grow;
   - preserve the approved BMC Service Network identity, service breadth, pricing, offers, and business model;
   - do not rename Quantum Neuroshift or mix QNS into this project;
   - keep public copy concrete and easy to understand;
   - no unnecessary hype or unsupported claims.

2. **Research queue reduction**
   - work through the existing research backlog using the already-built bounded research system;
   - prioritize useful provider/buyer prospect discovery and source-native Arizona research already seeded;
   - preserve safeguards: no automatic outreach, no unverified activation, no private/social-network scraping that violates current boundaries;
   - outreach remains OFF unless Brett explicitly approves it.

3. **Handoff discipline**
   - record material copy decisions, research changes, scripts, counts, and remaining blockers here before long implementation stretches;
   - do not let this pass disappear into an unrecorded debugging/build session.

Current known production state before this pass:
- Stripe live account active;
- four live Payment Links active;
- live Stripe webhook validated end-to-end with HTTP 200;
- webhook test cleanup complete;
- `payments_ready = READY`;
- `live_intake_ready = BLOCKED` only because no real verified pilot provider is active yet;
- runtime doctor previously reported 839 queued research items + 5 assigned;
- outreach remains OFF.

Do not activate a provider until this copy/research cleanup pass is substantially complete or Brett explicitly changes priority.


## 37. PUBLIC COPY SWEEP + RESEARCH DRAIN TOOLING — 2026-10-25

The pre-launch wording cleanup is now underway and materially implemented.

### Public copy cleaned

Customer-facing wording was simplified across:
- homepage;
- How It Works;
- Growth Packs;
- payment/order confirmation pages;
- restaurant maintenance help;
- snow service;
- ice machine service;
- fire safety service;
- mobile vehicle service;
- pet waste cleanup;
- towing/roadside;
- restaurant repair;
- short-term rental property care;
- floor/carpet care;
- pool/desert property care;
- sign/lighting repair;
- septic/earthwork/water;
- backflow/commercial plumbing;
- multiple Arizona market pages;
- provider pilot terms;
- provider pilot activation.

Examples removed/replaced:
- `Local service routing`;
- `routing path underneath`;
- `Tow / roadside matching`;
- `100 qualified prospects`;
- `begin fulfillment`;
- `fulfillment starts`;
- `Payment confirmation is recorded server-side`;
- `vendor routing`;
- `lead-routing tests`.

Direction:
- explain the outcome/customer action, not BMC's internal machinery;
- prefer "local service help," "towing and roadside help," "100 researched businesses," "add order details," etc.;
- provider-facing pages now say BMC sends/offers requests rather than narrating "routing."

### Copy regression guard

`portfolio/automation/validate-public-ui.py` now rejects the removed internal/awkward phrases if they reappear in public HTML.

CI continues to validate the public-site shell and now also protects the cleaned wording.

### Research backlog drain tooling

Added:
- `portfolio/automation/drain-research-backlog.sh`

Purpose:
- work through the currently seeded research backlog without enabling outreach.

Safety behavior:
- refuses to run if `OUTREACH_ENABLED`, `BUYER_OUTREACH_ENABLED`, or `GROWTH_OUTREACH_ENABLED` is true;
- temporarily raises `RESEARCH_WORKER_BATCH` to 5 for the drain;
- restores the original research batch setting on exit/interruption;
- recreates `ops_api` and then `webhook_proxy` so nginx does not retain stale Docker addresses;
- never activates providers;
- never sends outreach.

Drain order:
1. complete a source-native Arizona sweep first;
   - processes expected ADHS/CMS lanes;
   - continues lanes with nonzero cursors until the sweep is complete or genuinely stalls;
   - updates buyer/prospect coverage and research gaps from authoritative data.
2. process the standard public-web research backlog;
   - cycles `/api/agent-cycle`;
   - processes up to 5 assigned research tasks per worker call;
   - continues until queued + assigned research reaches zero or the script detects 10 no-progress rounds;
   - keeps discoveries staged/reviewable;
   - conservative direct-domain public-email auto-promotion remains prospect-only.

Default production command:

```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
chmod +x drain-research-backlog.sh
bash ./drain-research-backlog.sh .env
```

Optional arguments:
- arg 2 = maximum standard research rounds (default 1000);
- arg 3 = pause in seconds between rounds (default 1).

Example:
```bash
bash ./drain-research-backlog.sh .env 1000 2
```

The script prints:
- source-native pending lanes;
- records seen;
- prospects created/updated;
- queued/assigned research counts;
- candidates staged;
- conservative auto-promotions;
- final backlog statuses;
- vendor/buyer totals;
- final runtime-doctor state.

Do not activate the first provider until this cleanup/research pass is reviewed or Brett changes priority.

Outreach remains OFF.


## 38. COPY CLEANUP EXPANDED + RESEARCH DRAIN HARDENED — 2026-10-25

The copy cleanup pass was expanded after the new CI guard surfaced older template residue.

Additional service pages cleaned:
- locksmith/access control;
- parking lot services;
- duct/vent cleaning;
- commercial pest control;
- grease/drain service;
- mobile detailing;
- mobile tire/battery;
- fleet washing;
- pet sitting/dog walking;
- mobile pet grooming;
- commercial window cleaning;
- epoxy/concrete flooring;
- windshield/auto glass;
- pressure washing;
- hood/exhaust cleaning.

Key conversion pages also received a second manual wording pass:
- Request;
- Solutions;
- Competitor Research;
- Market Expansion.

Examples:
- "Describe the problem. We’ll sort out the service." -> "Describe the problem. We’ll help find the right kind of help."
- "Location and timing help us move the request in the right direction." -> "Location and timing help us find the right option."
- "Each path below has its own page, its own questions, and its own next step." -> "Choose the kind of help you need below."
- "buyer pool map" -> "potential customer base";
- "priority outreach targets" -> "businesses to contact first";
- "competitor set" -> "who you’re up against";
- "offer & reputation signals" -> "offers, reviews & visibility."

Provider-page wording was also simplified:
- BMC "sends/offers requests" rather than narrating routing mechanics;
- "Services you want BMC to route" -> "Services you want to receive."

### Research drain hardening

The source-native drain stall detector was corrected before production use.

Old risk:
- a large source lane could process multiple pages while the pending-lane count stayed unchanged;
- a count-only stall detector could stop early.

Current behavior:
- progress is measured using cumulative source-native records seen/upserted plus cursor movement;
- failed source-native lanes remain pending when `last_error` is populated;
- the drain stops only after 8 rounds with no actual record/cursor progress;
- standard public-web research still stops after 10 no-progress rounds.

The production command remains:

```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
chmod +x drain-research-backlog.sh
bash ./drain-research-backlog.sh .env
```

All outreach switches must remain OFF.


## 39. RESEARCH DRAIN EARLY-EXIT FIX — 2026-10-25

The first production invocation of `drain-research-backlog.sh` exited immediately after `git pull` with no drain banner/output.

Observed command:

```bash
bash ./drain-research-backlog.sh .env 1000 2 | tee research-drain.log
```

Root cause:
- script runs with `set -euo pipefail`;
- `env_value()` used a `grep | cut` pipeline;
- if an optional key (for example a defaulted outreach/research key) was absent from the VPS `.env`, `grep` returned 1;
- command substitution inherited that failure and the script exited before its first `echo`;
- the outer `| tee` made the terminal return look deceptively clean.

Fix committed:
- `env_value()` now uses `awk` and returns an empty string with exit status 0 when a key is absent;
- required keys are still explicitly validated afterward;
- optional keys can safely fall back to defaults as intended.

Fix commit:
- `5508a5a2c2fa5139d40321a0653f11de3ef8490c`

Production rerun:

```bash
cd ~/bmc-luminary-site/portfolio/automation
git pull --ff-only
chmod +x drain-research-backlog.sh
bash ./drain-research-backlog.sh .env 1000 2 | tee research-drain.log
```

Expected first lines now:

```text
BMC research backlog drain
==========================
Outreach switches verified OFF.
Temporarily using RESEARCH_WORKER_BATCH=5.
```

Outreach remains OFF.


## 40. CMS API PACING + BACKOFF HARDENING — 2026-10-25

During the first real source-native drain, production output showed:

- round 1: 10 checks, 369 records seen, 350 created, 19 updated, 0 errors;
- round 2: 10 checks, 520 records seen, 504 created, 16 updated, 0 errors;
- round 3: 1 successful check, 19 records seen, 17 created, 2 updated, 9 errors;
- round 4: 0 successful checks, 0 records seen, 10 errors.

This strongly indicated public-source throttling/transient failures after two heavy rounds.

Official CMS Provider Data API guidance indicates high-volume API use should be paced, HTTP 429 should reduce request volume, and HTTP 5xx should use incremental randomized backoff.

Fixes committed:

- `api/app.py`
  - retries HTTP 429 and 5xx;
  - retries transient URL/timeout/OS failures;
  - uses incremental randomized backoff;
  - respects `Retry-After` when supplied;
  - paces CMS requests even when healthy.

- `drain-research-backlog.sh`
  - prints up to the first three source/market error details each source-native round;
  - temporarily reduces `SOURCE_NATIVE_CHECK_BATCH` to 4 during the drain;
  - restores the prior `SOURCE_NATIVE_CHECK_BATCH` and `RESEARCH_WORKER_BATCH` on exit/interruption;
  - keeps outreach OFF.

Relevant commits:
- `b54ef2a1f9fa3a9da77dd5b3b6917de1d2418413` — initial retry/backoff support.
- `c50886bd8e6bfd98ba7923a3379abe6d55f4b8a1` — source error details in drain output.
- `82ba75a4bc02b5463d1d6454f83b1fec83401210` — CMS pacing + randomized backoff.
- `a63bd2045f2ca5d0dfea5fd67a112b219545cbfa` — lower source-native drain batch to 4 and restore safely.

Owner stopped the older aggressive drain with Ctrl+C after repeated source errors. This was the correct action. The cleanup trap is expected to restore the prior research/source-native batch values.

Before rerunning, pull the paced/backoff fixes.


## 41. CMS BULK CSV SOURCE-NATIVE RESEARCH — 2026-10-25

The second production drain was stopped with Ctrl+C after repeated CMS HTTP 403 responses. This was correct; 403 is not a normal transient retry condition.

Official CMS Provider Data documentation was checked.

Key findings:
- the Provider Data Catalog exposes stable dataset metadata at:
  `/provider-data/api/1/metastore/schemas/dataset/items/{datasetId}`;
- the metadata response includes the current CSV in `distribution[].data.downloadURL`;
- CMS documentation recommends using full dataset downloads for high-volume retrieval instead of many API queries;
- dataset IDs remain stable while distribution/download resource IDs can change across data refreshes.

Production architecture changed accordingly.

### New CMS source-native behavior

For the four configured CMS datasets:
- hospitals (`xubh-q36u`);
- nursing homes (`4pq5-n9py`);
- home health (`6jpm-sxkc`);
- hospice (`yc9t-dgbk`);

the worker now:

1. requests the stable per-dataset metadata endpoint;
2. discovers the current CSV `downloadURL`;
3. downloads the full official CSV once;
4. parses and normalizes CSV column names;
5. keeps only Arizona records in memory;
6. indexes those records by city;
7. serves all configured Arizona market lanes locally from the cached dataset;
8. reuses the cached bulk file for 6 hours by default.

This removes the prior pattern of repeated CMS per-city datastore API requests.

The legacy per-city query function remains available only when:
- `CMS_BULK_DOWNLOAD_ENABLED=false`; or
- the configured CMS source URL points to a non-CMS host, such as the CI research mock.

This preserves deterministic CI coverage without making production depend on the throttled query pattern.

New optional settings:
- `CMS_BULK_DOWNLOAD_ENABLED=true`
- `CMS_METADATA_BASE=https://data.cms.gov/provider-data/api/1/metastore/schemas/dataset/items`
- `CMS_BULK_CACHE_TTL_SECONDS=21600`

Bulk CSV/header normalization includes aliases needed by existing parsers:
- `City/Town` -> `citytown`
- `County/Parish` -> `countyparish`
- common CMS human-readable CSV headers are normalized to the existing API-style keys.

Successful records from the earlier interrupted runs remain in Postgres; stopping the drain did not roll them back.

Relevant implementation commit:
- `a3641e0426b7e1f3695b4b32db3ae59bc306c383`

Do not rerun the drain until this bulk-loader change and its Compose/env documentation pass CI.


## 42. RESEARCH DRAIN DEPLOYMENT IMAGE REBUILD — 2026-10-25

Before the next production drain rerun, one more deployment issue was identified and fixed.

Problem:
- drain-research-backlog.sh recreated ops_api but did not rebuild the image.
- after pulling a changed api/app.py, Docker could therefore recreate the container from the previous image and silently keep old CMS behavior.

Fix:
- the drain now builds the ops_api image once before the initial API/gateway restart.
- cleanup restarts do not rebuild again.

Commit:
- b49214052e3ebed38df1f5309bfa8e643481f3fe

Next production rerun should use the normal drain command after git pull; no separate build command is required.


## 43. CMS SOURCE CLARIFICATION + CURRENT DRAIN STATE — 2026-10-25

Current production observation:

The source-native CMS lanes are the only research source family still returning HTTP 403. The standard public-web research worker is functioning normally and is reducing the queue.

Recent production output after the source-native stall:
- source-native stopped itself after 8 rounds without record/cursor progress;
- Phase 2 continued successfully;
- research round 1: queued 774, processed 5, staged 16, errors 0;
- later rounds continued processing 5 tasks at a time with 0 errors.

Do not treat this as a full research-system failure.

### What "CMS" means in BMC

CMS = Centers for Medicare & Medicaid Services Provider Data Catalog.

BMC uses four official public CMS datasets as healthcare/institutional **buyer prospect** sources:

- Hospitals:
  - dataset: Hospital General Information
  - dataset ID: xubh-q36u
- Nursing homes:
  - dataset: Provider Information
  - dataset ID: 4pq5-n9py
- Home health:
  - dataset: Home Health Care Agencies
  - dataset ID: 6jpm-sxkc
- Hospice:
  - dataset: Hospice - General Information
  - dataset ID: yc9t-dgbk

These are not service-provider/vendor sources. They are used to identify facilities and healthcare organizations that may buy BMC-network services such as cleaning, HVAC, pest control, electrical, plumbing, floor care, window cleaning, landscaping, waste service, facility maintenance, etc.

The CMS dataset pages are public and official. The 403 responses are CMS access-control/protection responses against the VPS request path, not evidence that the datasets are private or invalid.

CMS's current API FAQ states:
- 403 means protection measures have blocked the requester and support should be contacted if the block is believed to be in error;
- 429 means reduce request volume;
- for high-volume work, download underlying data files instead of many API calls;
- 5xx should use incremental randomized backoff.

Important interpretation of log lines like:
`ERROR cms_hospitals · Dewey-Humboldt · HTTP Error 403: Forbidden`

The market name is the BMC source-native lane that triggered the fetch. It does not mean CMS has a special Dewey-Humboldt API/source. Production bulk mode shares one official dataset across markets, but a failed CMS retrieval is recorded against the lane that attempted to use it.

Current recommendation:
- allow Phase 2 public-web research to continue;
- do not restart source-native CMS repeatedly while the VPS is receiving 403;
- ADHS and already-ingested CMS records remain valid and stored;
- treat remaining CMS lanes as a separate blocked source issue rather than blocking the rest of launch research.


## 44. PHASE 2 HEALTHY + SOURCE SUCCESS VISIBILITY — 2026-10-25

Current drain behavior after CMS source-native stalled:
- source-native stopped itself after repeated no-progress CMS 403s;
- Phase 2 public-web research continued normally;
- recent rounds processed 5 research tasks each with 0 errors;
- queue continued falling unevenly because a processed research pass does not always complete the parent backlog row immediately.

Important interpretation:
- `processed=5` means five research task passes were executed;
- it does not mean five backlog rows must leave `queued` in that round;
- some gaps require multiple research passes before completion;
- flat queue counts for one or two rounds are expected when tasks are advancing through additional passes.

Do not stop the current Phase 2 run merely because CMS source-native stopped. Phase 2 is independent and healthy.

Visibility improvement committed for future source-native runs:
- API now returns `successful_lanes` with source + market;
- CMS successes indicate whether bulk mode was used;
- drain output now prints up to four successful lanes, e.g.:
  - `OK adhs_facilities_arcgis · Prescott`
  - `OK cms_hospitals · Phoenix · bulk`
- failures continue to print source + market + error.

Commits:
- `fb5e640b5f8f3c9d327f502ff1efb66afb63a220` — report successful source-native lanes.
- `57b59ae45ca2cafa1d42f80c0b2afe81f29dcb08` — show successful source-native lanes in drain output.

These diagnostics apply on the next pulled/rebuilt run; do not interrupt the currently healthy Phase 2 drain just to obtain them.


## 45. PARALLEL PRE-LAUNCH SEO + PUBLIC ENDPOINT CLEANUP — 2026-10-25

While the VPS Phase 2 research drain continued, a parallel GitHub-only pre-launch cleanup was performed. This work did not touch the running database worker.

### Sitemap / indexing corrections

A sitemap-vs-robots conflict was found:
- multiple real public offer/service pages were listed in `sitemap.xml` while also carrying `noindex,follow`.

Corrected public pages include:
- garage door service;
- office coffee & water;
- facility maintenance;
- market expansion;
- waste/recycling audit;
- linen/laundry sourcing;
- competitor research;
- quote sourcing;
- equipment quotes;
- move-out/turnover cleaning;
- used restaurant equipment;
- restaurant maintenance.

The legacy `/vendor-partner/` page is only a redirect stub to `/providers/`, so it was removed from the sitemap instead of being made indexable.

`validate-search-readiness.py` now:
- verifies every sitemap URL maps to a public page;
- rejects sitemap URLs that contain a `noindex` robots meta tag.

This prevents future sitemap/indexing contradictions.

### Storefront generator cleanup

`generate-storefronts.py` now emits the actual live intake endpoint:

`https://hooks.bmcservicenetwork.com/api/intake`

instead of:

`REPLACE_ME`

The 10 generator-managed storefronts were updated to match the generator.

The stale `noindex` override on facility maintenance was also removed from `storefront-overrides.json`.

### Core public pages cleaned

The live intake endpoint was also written directly into high-value manual public pages, including:
- main Request page;
- Providers page;
- Growth Packs;
- Market Expansion;
- Competitor Research;
- Facility Maintenance;
- Auto Repair;
- Quote Sourcing;
- Equipment Quotes;
- Restaurant Maintenance.

This is a source-code cleanup, not a fix for a broken form. Forms already worked because `core.js` ignored `REPLACE_ME` and fell back to the live global endpoint.

### Validation state

The SEO/indexing/generator changes passed BMC Portfolio CI at commit:
- `58d8d772105e5d58ef94babcea70727a5952a8fe`

Later endpoint-only page edits were still progressing through CI when this handoff section was written.

GitHub code-search indexing can lag behind direct file writes, so old `REPLACE_ME` search hits may remain visible briefly after the files are updated. Use direct file contents and CI status as the source of truth.

The VPS research drain should continue uninterrupted; do not pull these static-site changes solely to affect the currently running Phase 2 worker.


## 46. STATEWIDE SERVICE SEO CLEANUP — 2026-10-25

A second parallel static-site pass corrected geographic SEO that still reflected the original Prescott-only launch concept.

Problem:
- the 10 generator-managed service storefronts still used titles such as:
  - `HVAC Repair & Service | Prescott Area`
  - `Commercial Cleaning | Prescott Area`
  - `Tree Service & Defensible Space | Prescott Area`
- several descriptions also said `in the Prescott area`.
- this conflicted with the current statewide Arizona network architecture.

Fix:
- generator-managed service-level titles now use `| Arizona`;
- service-level descriptions now say `in Arizona` where applicable;
- dedicated market pages remain responsible for city-specific local SEO.

Updated managed storefronts:
- HVAC;
- landscaping;
- home staging;
- junk hauling;
- tree/defensible space;
- house cleaning;
- handyman;
- electrical;
- commercial cleaning;
- realtor listing prep.

Source-of-truth:
- `portfolio/data/storefront-overrides.json` updated;
- all 10 generated storefront files updated to remain generator-synchronized.

The latest statewide SEO commit passed:
- generated storefront validation;
- public UI validation;
- public-copy validation;
- form contracts;
- search/download readiness;
- Compose validation;
- operational script syntax checks.

Full container smoke test was still completing when this handoff entry was written.

Do not alter genuinely local research records or market-specific examples merely because they mention Prescott; this change applies to generic service-level public SEO, not historical/source data.


## 45. RESEARCH BACKLOG FULLY DRAINED — 2026-10-25

The production research drain completed successfully.

Final Phase 2 result:
- research queue: 0 queued;
- research assigned: 0;
- open agent tasks: 0;
- research round 617 processed the final 2 tasks;
- queue declared drained.

Final backlog states:
- completed: 56;
- review: 22;
- searched_no_results: 771.

Final prospect totals:
- vendors: 211;
- buyers: 2537;
- staged research candidates: 205.

Runtime doctor after drain:
- deployment target: cloud-vps PASS;
- memory/storage/swap PASS;
- Docker/Compose PASS;
- .env PASS;
- public site URL PASS;
- vendor outreach OFF;
- buyer outreach OFF;
- waves restricted to pilot1;
- Compose validates;
- Ops API healthy;
- 54 services seeded;
- traditional auto repair active;
- vendor research pool 211;
- buyer research pool 2537;
- First Wave provider cohort exactly 12;
- First Wave buyer cohort exactly 7;
- recovered Arizona expansion cells 198;
- private admin preflight reachable;
- outreach_ready: READY;
- payments_ready: READY;
- intelligent_search_ai_ready: READY;
- live_intake_ready: BLOCKED only because no verified pilot provider is active;
- local AI reachable and qwen3:1.7b loaded;
- fryer and brake-repair search regressions PASS;
- private research search reachable.

Runtime doctor summary:
- core failures: 0;
- warnings: 1.

The sole warning is:
- research backlog has no queued rows.

Interpretation:
- this warning is expected after a successful full drain and should not be treated as a production failure.

Remaining launch gate:
- activate at least one verified pilot provider.

CMS source-native 403s remain a separate source-access issue, but they did not block Phase 2 from draining the full queued research backlog.

Outreach remains OFF.


## 46. POST-DRAIN PUBLIC SITE + SEO CLEANUP — 2026-10-25

While the production research drain completed, a parallel GitHub-only public-site cleanup was completed without touching the live research worker.

### Research state entering this cleanup

Production drain completed:
- queued research: 0;
- assigned research: 0;
- vendors: 211;
- buyers: 2537;
- staged candidates: 205;
- completed backlog rows: 56;
- review rows: 22;
- searched_no_results: 771;
- core runtime failures: 0.

### Public wording cleanup

Older public service pages were cleaned further to remove remaining internal/system-style language.

Removed/replaced examples:
- `No directory hunting` -> `One place to start`;
- `We’ll move the request toward the right next step.` -> `We’ll help you get it moving.`;
- How It Works headline now uses normal customer language rather than narrating internal routing;
- homepage wording simplified from “move toward” language to “find the right service, quote, or next step.”

The public UI validator now rejects:
- `REPLACE_ME`;
- `No directory hunting`;
- `We’ll move the request toward the right next step.`;
- previously banned routing/fulfillment/internal phrases.

### Live intake endpoint cleanup

Public pages that still contained:
`<meta name="bmc-webhook" content="REPLACE_ME">`

were changed to the real live intake endpoint:
`https://hooks.bmcservicenetwork.com/api/intake`.

The storefront generator was also changed to emit the live intake endpoint, so regenerated pages do not reintroduce the placeholder.

### Statewide storefront alignment

Core generated storefront titles/descriptions were aligned to the statewide network:
- old title suffix: `| Prescott Area`;
- current title suffix: `| Arizona`;
- descriptions now say service is available `in Arizona` instead of implying Prescott-only coverage.

The storefront generator/config and committed pages are in sync.

### SEO / indexing consistency

A sitemap/noindex contradiction was found and fixed.

Several real public service/research pages were included in the sitemap but also carried:
`<meta name="robots" content="noindex,follow">`

Those public offer pages are now indexable, including:
- garage door service;
- office coffee/water;
- facility maintenance;
- market expansion;
- waste/recycling audit;
- linen/laundry sourcing;
- competitor research;
- quote sourcing;
- equipment quotes;
- move-out/turnover cleaning;
- used restaurant equipment;
- restaurant maintenance.

The old `/vendor-partner/` redirect stub remains noindex and was removed from the sitemap.
The sitemap now points to the real public `/providers/` page instead.

Private/status/workflow pages remain noindex, including:
- provider pilot activation/response/update flows;
- payment/order status pages;
- synthetic test page;
- sample output page.

### Search-readiness regression guard

`validate-search-readiness.py` now verifies that every sitemap URL:
- resolves to an existing local page;
- is not marked `noindex`.

This prevents future sitemap/indexing contradictions.

### CI state

At commit `61106777c70360f19c17a7891b62594e9ce7a4f9`, the latest workflow passed all static/pre-smoke gates:
- API syntax;
- service registry/fronts;
- generated storefront sync;
- legacy public UI guard;
- internal-language public copy guard;
- public form contracts;
- search/download readiness;
- Docker Compose validation;
- operational script validation;
- public gateway configuration.

The database/API smoke-test stage was still running when this handoff section was written.

Remaining launch gate is still:
- activate at least one verified pilot provider.

Outreach remains OFF.


## 47. RESEARCH DRAIN COMPLETE + RUNTIME DOCTOR NORMALIZED — 2026-10-25

Production research is now fully drained:
- queued: 0;
- assigned: 0;
- completed: 56;
- review: 22;
- searched_no_results: 771;
- vendors: 211;
- buyers: 2537;
- staged candidates: 205.

The prior runtime doctor behavior treated `0 queued` research as a warning:
- `WARN Research backlog has no queued rows`.

That is no longer appropriate after an intentional full drain.

`runtime-doctor.sh` now reports:
- `PASS Research backlog is fully drained (0 queued)`

when the queue is empty.

Commit:
- `090a5f639e0c4cdb21965ae14bc08cee35a23069`

Public-site cleanup commit `61106777c70360f19c17a7891b62594e9ce7a4f9` passed the full BMC Portfolio CI workflow, including:
- generated storefront sync;
- public copy/legacy UI guards;
- form contracts;
- search readiness;
- Compose;
- operational scripts;
- public gateway;
- database/API smoke tests.

Current launch state:
- copy cleanup: substantially complete;
- research queue: fully drained;
- Stripe/payments: READY;
- intelligent search: READY;
- outreach: OFF;
- only launch gate remains activating at least one verified pilot provider.

CMS 403 source-native access remains a separate research-source issue and is not blocking the drained standard research backlog.


## 48. PRE-LAUNCH REVIEW COCKPIT + SEARCH CONSOLE READINESS — 2026-10-25

Work resumed from commit `e662c966cd86d135765a991908a124aea9597233` after the research queue was fully drained and the public-copy cleanup was complete.

No outreach was enabled.
No provider was activated.
No customer/provider message was sent.

### Private admin review cockpit improved

Commit:
- `2afa0e701a815903a4ab0143aa697b891e9986e2` — Improve prelaunch provider and research review admin.

The existing private admin already had the necessary review endpoints, but it hid useful information and only displayed the newest 100 staged research candidates.

The private admin now:
- relabels First Wave as the pilot shortlist / First Wave;
- displays the exact secure pilot activation URL already generated for each First Wave provider;
- shows provider ID, market, service, public email, public phone, website/source URL, status and association/source signal when available;
- includes a copy button for the exact provider pilot invite;
- keeps the process manual — displaying/copying the invite does not send anything;
- loads up to 250 staged research candidates so the current 205 staged rows can all be reviewed;
- filters staged candidates by provider/buyer side;
- supports free-text filtering by market, service, business, domain, snippet and public contact details;
- supports a “has public contact” filter;
- shows public email/phone evidence when the research worker captured it;
- preserves the existing Add as prospect / Mark reviewed / Reject controls.

The pilot approval safety path is unchanged:
- a researched prospect is not automatically a provider;
- a provider must submit the pilot activation flow;
- pilot terms must be accepted;
- territory and capacity must be recorded;
- credentials/insurance must be reviewed where applicable;
- BMC must explicitly approve the pending pilot;
- only then does the vendor become `pilot`.

BMC Portfolio CI for `2afa0e701a815903a4ab0143aa697b891e9986e2` completed SUCCESS, including the database/API smoke test.

### Search/indexing reality check

External search checks did not surface BMC Service Network as an indexed Google result yet.

Repository search-readiness was already strong:
- canonical BMC origin;
- sitemap;
- robots sitemap declaration;
- Organization JSON-LD;
- sitemap/noindex conflict guard;
- public offer/service pages indexable where intended.

Google's general Indexing API is not appropriate for ordinary BMC local-service pages; the normal launch path is Search Console + sitemap + URL Inspection.

No Search Console property was created during this pass. Domain-property verification requires access to the Google account and the Cloudflare DNS verification step.

### Provider sitemap omission found and fixed

A discrepancy was found between the prior handoff text and the actual source tree.

The handoff said the old `/vendor-partner/` sitemap entry had been replaced by the real `/providers/` page.

Actual state at the start of this pass:
- `/vendor-partner/` was correctly absent;
- but `/providers/` was also absent from `portfolio/sitemap.xml`.

The real Providers page is public and indexable, so it should be discoverable.

Fix:
- `13c39c6ff0dd02f2b66fdd51d61056d8935122e1` — Add provider network page to sitemap.

Regression guard:
- `0bfbc4b236459b73bb87bed89d6b4f09713cd488` — Guard required public pages in sitemap.
- `validate-search-readiness.py` now requires:
  - homepage;
  - `/services/`;
  - `/providers/`;
  - `/request/`;
  - `/how-it-works/`.

This is in addition to the existing per-service front and sitemap/noindex checks.

### First Search Console launch procedure documented

Commit:
- `7fcf7a417047f23eb2639c5fb87f19b45cffc652` — Document first Search Console indexing launch.

`portfolio/seo/SEO.md` now records the exact launch path:
1. create a Google Search Console Domain property for `bmcservicenetwork.com`;
2. verify ownership with the Google TXT record in authoritative Cloudflare DNS;
3. submit `https://bmcservicenetwork.com/sitemap.xml`;
4. inspect/request a small priority set instead of manually submitting every page.

Initial URL Inspection set documented:
- homepage;
- Services;
- Providers;
- Prescott market;
- Phoenix market;
- Facility Maintenance;
- Restaurant Equipment Repair;
- Traditional Auto Repair;
- Growth Packs;
- Market Expansion Pack.

The sitemap remains the discovery path for the rest of the public pages.

At the time this section was written, the latest indexing commit had already passed:
- API syntax;
- service/front validation;
- generated storefront validation;
- public UI/copy guards;
- public form contracts;
- search/download readiness;
- Compose;
- operational scripts.

Its full database/API smoke run was still completing.

### Current next actions

The business is now at a clean fork:

A. Search discovery:
- complete Google Search Console Domain verification;
- submit the sitemap;
- inspect the documented priority URLs.

B. Provider activation:
- deploy/pull the latest admin changes to the VPS;
- use the private pilot shortlist to choose one real provider;
- verify the business/contact/credentials as appropriate;
- send one controlled manual pilot invitation;
- wait for that provider to submit the activation form;
- review and approve only after the required checks;
- rerun runtime doctor and confirm `live_intake_ready = READY`.

Bulk vendor and buyer outreach remain OFF.


## 49. FIRST PILOT CANDIDATE + ACTIVATION HARDENING — 2026-10-25

After Section 48, the 12 First Wave providers were compared using the existing seed record plus fresh public verification.

No outreach was sent.
No pilot was activated.
Bulk outreach remains OFF.

### Recommended first manual pilot invite: American Crown Commercial Cleaning

Vendor ID:
- `v_prescott_americancrown`

Why this provider is the strongest first test:
- directly covers `commercial_cleaning`, which is in the current launch cell;
- Prescott-based and serves the wider Yavapai County footprint;
- direct public business email and phone are available;
- public site is active and advertises commercial janitorial, window cleaning, pressure washing, construction cleanup, venue cleaning and related facility work;
- BBB profile currently shows the business as accredited with an A+ rating, accredited since 2020;
- Prescott Valley Chamber has a live member listing;
- an Arizona Department of Gaming active-vendor list includes American Crown Commercial Cleaning as vendor certification `V99196` with an expiration of 2027-03-31.

Important:
- the Arizona gaming vendor certification is an active-business/vendor signal, **not** a substitute for a contractor license, insurance certificate, or any service-specific credential;
- the company's site states NFPA Code 96 / MFS certification for relevant kitchen work, but those claims still need appropriate review if BMC routes regulated/specialty work;
- insurance must still be reviewed from the provider activation response / documentation before approval where applicable.

Public contact in the BMC seed remains:
- `donna@americancrowncc.com`
- `928-250-0490`
- `https://americancrowncc.com/`

Fallback candidate:
- `v_prescott_windowwranglers` — Window Wranglers.
- Active local site, direct email/phone, family-owned, broad Yavapai coverage, commercial/residential window cleaning and pressure washing.
- Lower regulatory complexity, but American Crown is preferred first because commercial cleaning is already one of the launch-cell services.

### Pilot activation dead-end found and fixed before outreach

While reviewing the real provider path, a contract mismatch was found:

- the provider activation page allowed Current capacity to be blank;
- the admin `approve-pilot` endpoint refuses approval if capacity is blank.

That meant a real provider could submit the activation form successfully but become impossible to approve without manual database repair or a second submission.

Fix:
- `c30b3d0c4c92cfa089a99461ec10c7d86a8e40a5` — Require provider capacity before pilot review.
- `provider-pilot-activate/index.html` now requires the capacity field.

### Pending pilot review now shows the provider's actual submission

A second review gap was fixed.

Previously:
- the activation submission stored market/services/credentials/insurance in the event payload and vendor fields;
- the Pending Pilot Review endpoint/card mostly showed the seeded/current vendor record;
- a reviewer could not easily compare what the provider actually requested against current routing.

Fix:
- `f0e58b52e5661c9e65ba14c5206d920337daab27` — Show provider-submitted pilot review details.

Pending Pilot Review now shows:
- current routing markets;
- current routing services;
- provider-submitted primary market;
- territory;
- requested services;
- minimum job;
- current capacity;
- credentials;
- insurance response;
- contact name/email/phone;
- submission timestamp.

The admin card explicitly warns to update Vendor controls before approval if submitted market/services differ from current routing.

### Regression guards added

Form validator:
- `301453c505cc1f263f4143c9e5fad79449cac1a5` — Guard required pilot activation fields.
- the public form contract validator now requires the activation form to contain vendor ID, market, territory, services, capacity and pilot terms;
- it also verifies that contact name, email, market, territory, services, capacity and pilot-terms controls retain the HTML `required` contract.

CI smoke coverage:
- `9059a32b74f50878224dd91cc84289c303ce35e2` — Cover submitted pilot review details in CI.
- the existing end-to-end pilot smoke test now asserts the review endpoint returns the provider-submitted capacity, credentials, insurance and accepted pilot terms before approval.

The existing CI pilot lifecycle already proves:
1. First Wave activation URL is generated;
2. provider activation submits against the existing vendor record;
3. provider stays unroutable at `pilot_pending_review`;
4. seed reruns preserve the activation data;
5. provider appears in Pending Pilot Review;
6. BMC approval changes the provider to `pilot`;
7. the approved provider can load/update the provider dashboard.

### Next operational move

Once the latest code is deployed to the VPS:
1. open the private admin;
2. open Pilot shortlist / First Wave;
3. locate American Crown Commercial Cleaning;
4. recheck the displayed source/contact evidence;
5. copy the pilot invite;
6. manually send **one** invitation only;
7. keep global vendor/buyer outreach OFF;
8. wait for American Crown to submit the activation form;
9. review the actual submitted market/services/capacity/credentials/insurance in Pending Pilot Review;
10. update routing if their requested services/market differ from the seed;
11. approve only after the appropriate credential/insurance checks;
12. rerun runtime doctor.

If American Crown declines or does not respond, use Window Wranglers as the next controlled candidate.



## 50. PILOT PATH GREEN + SAFE VPS DEPLOY READY — 2026-10-25

This checkpoint closes the pre-invite code work started in Sections 48–49.

No provider outreach has been sent.
No provider has been activated.
Global vendor and buyer outreach remain OFF.
Production has **not** yet been pulled/rebuilt with these latest commits.

### Pilot activation contract is now fully CI-proven

The first regression-guard pass exposed a validator bug in the new guard itself:
- `CONTROL_RE` was referenced before being defined;
- the required-field regex was double escaped.

The application/pilot flow was not the source of that failure.

Fix:
- `080e1e8e067936658791d92a89829f0a427c2fad` — Fix pilot form contract validator.

BMC Portfolio CI run `40268442797` completed SUCCESS after that fix, including the full database/API smoke test.

That proves the controlled pilot lifecycle still executes end-to-end:
1. First Wave provider receives a secure activation URL;
2. provider activation submission records market, territory, requested services, minimum job, capacity, credentials, insurance and accepted pilot terms;
3. vendor remains `pilot_pending_review` and unroutable;
4. Pending Pilot Review exposes the provider's actual submission;
5. BMC explicitly approves;
6. vendor changes to `pilot`;
7. approved provider can use the provider dashboard.

### Safe existing-VPS update path added

A deployment footgun was found in the old operator path:

- `start.sh` applies additive migrations and starts services;
- it does **not** rebuild the `ops_api` Docker image;
- therefore `git pull && ./start.sh` can leave production running old API code after a source update.

New helper:
- `20c12a242151ac3e8eff22e4b39cb5425499bedd` — Add safe production update helper.
- file: `portfolio/automation/deploy-update.sh`.

The helper:
- refuses tracked local changes rather than discarding them;
- refuses detached HEAD;
- verifies the checkout matches the current remote branch;
- preserves the existing production `.env`, secrets and outreach switches;
- rebuilds the current Ops API image;
- applies only the existing additive migrations;
- recreates Ops API from the new image;
- refreshes the webhook proxy after the API restart;
- keeps persistent Postgres/n8n/Ollama volumes intact;
- finishes with `runtime-doctor.sh`.

CI now syntax-checks the helper:
- `b14eb5ed1dff1850fa85e836375d4743e5c051b8` — Validate production update helper.

Deployment guide updated:
- `a24fd50a1a98c5bee6b2d27f4cd65f9cb8608818` — Document safe VPS update path.

Use on the existing production VPS:

```bash
cd ~/bmc-luminary-site
git pull --ff-only
cd portfolio/automation
chmod +x deploy-update.sh
./deploy-update.sh .env
```

Do not use a hard reset as a production deployment shortcut.

### START_HERE status corrected

`START_HERE.md` was still describing a much older state:
- 48 services;
- 210 vendors;
- 156 buyers;
- Cloudflare/Stripe/outbound mail as unresolved blockers.

That contradicted the current runtime doctor and handoff.

Fix:
- `9007665ad32e47a1c9b838d0e25cb78b77dedab2` — Refresh production start-here status.

It now records:
- 54 seeded service categories;
- 211 vendor prospects;
- 2,537 buyer prospects;
- 205 staged candidates;
- research backlog fully drained;
- Cloudflare/live intake ready;
- payments ready;
- mail/reply/opt-out readiness with outreach intentionally OFF;
- only runtime launch gate: one verified pilot provider;
- safe existing-VPS update command.

Search Console, staged-candidate review, off-host backup hardening and CMS 403 source access are parallel/nonblocking work.

### First-provider invite copy cleaned before real outreach

The First Wave step-1 copy contained an internal-sounding phrase:

> “while we prove whether BMC is worth paying for”

That was removed before any real provider saw it.

Fix:
- `39301277aa3f292e1ea91cff61e236c7f6c26e92` — Polish first provider pilot invitation.

Current offer language:
- BMC Service Network is opening a small provider pilot in Arizona;
- there is no fee to join;
- provider chooses work area, jobs, minimum job size and capacity;
- provider sees the matching customer request before deciding;
- some pilot opportunities may be free or discounted;
- any future paid lead/territory price and terms are shown before the provider chooses to participate.

CI now locks those promises into the First Wave smoke test:
- `c26634f65758f4b5d861c22befdc51d872c4b9a3` — Lock first provider invite copy in CI.

Latest BMC Portfolio CI:
- run: `40268655215`;
- head: `c26634f65758f4b5d861c22befdc51d872c4b9a3`;
- result: **SUCCESS**;
- API syntax: PASS;
- service/front validation: PASS;
- generated storefront sync: PASS;
- public UI/copy guards: PASS;
- public form contracts: PASS;
- search/download readiness: PASS;
- Compose: PASS;
- operational scripts, including `deploy-update.sh`: PASS;
- public gateway config: PASS;
- full database/API smoke test: PASS.

### Production state at this checkpoint

Repository side:
- ready for controlled deployment.

Production VPS:
- still on the previously deployed code until the VPS pull/rebuild commands above are run.

Public static site:
- repository source contains the sitemap/provider/search changes;
- do not assume every static change is live solely because it is committed;
- the repository's BMC Service Network GitHub Pages workflow is manual-only (`workflow_dispatch`), so static hosting/deployment should be verified separately before claiming a public-page change is deployed.

Provider activation:
- not started with a real provider yet.

Recommended first controlled candidate remains:
- `v_prescott_americancrown` — American Crown Commercial Cleaning.

Fallback:
- `v_prescott_windowwranglers` — Window Wranglers.

### Exact next operational sequence

1. On the production VPS, run:
   `git pull --ff-only`
2. Run:
   `./deploy-update.sh .env`
3. Confirm runtime doctor returns the expected ready state with only the verified-provider gate remaining.
4. Open the private admin through the existing SSH tunnel.
5. Open Pilot shortlist / First Wave.
6. Recheck American Crown's displayed source/contact details.
7. Copy the exact live pilot invitation containing its secure activation URL.
8. Send **one** controlled invitation only.
9. Keep all global outreach switches OFF.
10. Wait for the provider's activation submission.
11. Review submitted services/market/capacity/credentials/insurance.
12. Update routing if needed.
13. Approve only after appropriate checks.
14. Rerun runtime doctor and confirm `live_intake_ready = READY`.

No real-provider invitation should be sent from an old production API image.


## 51. STATIC HOSTING CLARIFIED — CLOUDFLARE PAGES — 2026-10-25

A final hosting check corrected one ambiguity in Section 50.

Production static hosting is **Cloudflare Pages**, not the repository's manual GitHub Pages workflow.

Current source-of-truth:
- `portfolio/automation/DNS_HOSTING.md`;
- canonical public site: `https://bmcservicenetwork.com`;
- Cloudflare is authoritative DNS;
- apex `bmcservicenetwork.com` is a proxied CNAME to `bmc-service-network.pages.dev`;
- the temporary GitHub Pages custom-domain experiment is explicitly not the production hosting architecture;
- `hooks.bmcservicenetwork.com` remains the separate Cloudflare Tunnel for the restricted webhook gateway.

Therefore:
- do **not** dispatch the manual GitHub Pages workflow merely to publish production;
- do **not** change the apex CNAME to GitHub Pages;
- preserve the existing Cloudflare Pages project and Cloudflare DNS records.

The repository's synthetic E2E tooling also refers to opening the public test page once **Cloudflare Pages deploys the latest commit**, consistent with Cloudflare Pages being the intended static publish path.

What is not yet independently verified from this chat:
- whether Cloudflare Pages has already completed deployment of the newest static commits containing the sitemap/provider/search changes.

The browsing environment used in this thread cannot directly fetch the BMC domain or pages.dev hostname, so that tool failure must not be treated as evidence that the site is down.

Before Search Console submission or the first real provider invite, verify the public site is on the current Cloudflare Pages deployment by checking at minimum:
- `https://bmcservicenetwork.com/providers/`;
- `https://bmcservicenetwork.com/sitemap.xml`;
- that the sitemap contains `https://bmcservicenetwork.com/providers/`;
- that the provider activation page contains the required Current capacity field.

The VPS API deployment and the Cloudflare Pages static-site deployment are separate concerns:
- VPS pull/rebuild updates the private Ops API/admin/runtime;
- Cloudflare Pages publishes the static customer/provider pages from the repository.

Do not send the first real provider invitation until both sides reflect the current code.


## 52. NEXT CONVERSATION BOOTSTRAP — AUTHORITATIVE STATE — 2026-10-25

This section exists specifically so a new ChatGPT thread can resume BMC Service Network without asking Brett to reconstruct prior work.

A standalone companion file also exists at:
- `portfolio/automation/NEXT_THREAD.md`

**New thread instruction:** read `NEXT_THREAD.md`, this section, Sections 47–51, `BUSINESS_MODEL.md`, and the current runtime/deployment scripts before changing production or asking Brett to redo infrastructure.

### Current business/application state

Pre-launch cleanup requested by Brett is complete:
- public wording cleanup: complete;
- research queue drain: complete;
- Stripe live checkout/webhook validation: complete;
- site/frontend/public-intake regressions: guarded by CI;
- first-provider lifecycle: fully CI-proven but not yet exercised with a real provider.

Research state:
- queued = 0;
- assigned = 0;
- buyer prospects = 2,537;
- vendor prospects = 211;
- staged candidates = 205;
- completed research backlog rows = 56;
- review rows = 22;
- searched/no-usable-result rows = 771.

The 22 review rows and 205 staged candidates are not an unfinished queue. They are optional material for later human review/promotion.

Public-site cleanup completed before this checkpoint:
- remaining awkward/internal wording removed;
- leftover `REPLACE_ME` public webhook placeholders replaced with the real intake endpoint;
- core service positioning changed from Prescott-only language to Arizona where applicable;
- sitemap/noindex contradictions corrected;
- real `/providers/` page added to sitemap;
- obsolete `/vendor-partner/` redirect removed from sitemap;
- CI now guards sitemap/noindex conflicts and required public sitemap pages;
- public-copy validator blocks the removed internal/placeholder language from returning;
- runtime doctor treats a fully drained research queue as PASS.

Research and public cleanup full CI passed before provider work.

### Stripe / payments

Production Stripe account is live:
- charges enabled;
- payouts enabled;
- details submitted;
- no outstanding requirements.

Four live products/payment links:
- Local Growth Pack: $499;
- Premium Growth Pack: $749;
- Local Competitor Intelligence Pack: $299;
- Local Market Expansion Pack: $699.

Live webhook:
- endpoint ID: `we_1UUYgvQU2BLM8GhLlqebzgMb`;
- URL: `https://hooks.bmcservicenetwork.com/api/stripe-webhook`;
- signing secret is stored only in the VPS `.env`; never expose or rotate casually.

Webhook was validated live:
- Stripe event reached production;
- post-repair delivery returned HTTP 200;
- pending_webhooks cleared to 0;
- manual resend returned `{"received":true,"duplicate":true}`, proving idempotency;
- temporary test event subscription/metadata were removed afterward.

Do not repeat Stripe setup unless a new failure proves it is necessary.

### Production hosting / DNS

Authoritative DNS and static production hosting:
- Cloudflare is authoritative DNS;
- static production is Cloudflare Pages project `bmc-service-network`;
- apex CNAME points to `bmc-service-network.pages.dev`, proxied;
- www redirects to apex/root;
- `hooks.bmcservicenetwork.com` is a separate Cloudflare Tunnel to the restricted webhook gateway.

Do not restart the prior GitHub Pages experiment.
Do not move the apex CNAME to GitHub Pages.
The repository GitHub Pages workflow is not the production static deployment path.

VPS:
- OVH VPS hostname: `vps-5675821a.vps.ovh.ca`;
- IP: `148.113.151.47`;
- SSH user: `ubuntu`;
- repo path: `~/bmc-luminary-site`;
- automation path: `~/bmc-luminary-site/portfolio/automation`.

Private admin/API services intentionally bind locally/private; do not expose Postgres, n8n, SearXNG, Ollama, or the private admin API directly to the Internet.

### Current repo/CI checkpoint

At the beginning of this bootstrap section:
- master was `b7341a511521e4dccc38cbf43ee3452c59d864b7`;
- Section 51 was already present;
- latest fully discussed green application CI: run `40268655215`, head `c26634f65758f4b5d861c22befdc51d872c4b9a3`, SUCCESS including full DB/API smoke test.

The provider activation/admin/deployment/static-hosting clarifications added after that run are documented in Sections 49–51.

### First real provider path

No provider invitation has been sent.
No real provider has been activated.
Global vendor/buyer/growth outreach switches remain OFF.

Recommended first controlled provider:
- vendor ID: `v_prescott_americancrown`;
- American Crown Commercial Cleaning;
- public seed contact:
  - `donna@americancrowncc.com`;
  - `928-250-0490`;
  - `https://americancrowncc.com/`.

Why preferred:
- directly matches current commercial-cleaning launch cell;
- Prescott/Yavapai footprint;
- direct public business contact;
- active commercial janitorial/facility service presence;
- current public business/accreditation signals were checked in Section 49.

Important:
- public business/vendor certifications are not substitutes for insurance or service-specific licensing;
- review insurance/credentials appropriate to requested work before approval.

Fallback:
- vendor ID `v_prescott_windowwranglers`;
- Window Wranglers.

### Provider activation flow already hardened

Real-provider activation issues found before outreach have been fixed:
- capacity is now required on activation because approval requires it;
- Pending Pilot Review now exposes the provider's actual submitted market, territory, services, minimum job, capacity, credentials, insurance response, and contact data;
- provider remains `pilot_pending_review` and unroutable until explicit BMC approval;
- CI proves submission -> pending review -> explicit approval -> pilot -> dashboard lifecycle;
- first invite copy was cleaned and its promises locked in CI.

Do not bypass the pending-review gate.
Do not auto-approve the first provider.
Do not turn on global outreach merely to send the first controlled invite.

### Production code deployment status

Repository is ready, but Section 50 explicitly stated the VPS still needed the newer provider/admin code deployed.

Safe existing-VPS updater:
- `portfolio/automation/deploy-update.sh`.

It:
- refuses tracked local changes rather than destroying them;
- refuses detached HEAD;
- verifies checkout against remote;
- preserves production `.env`, secrets, outreach switches, DB and volumes;
- rebuilds Ops API;
- applies additive migrations;
- recreates API;
- refreshes webhook proxy;
- runs runtime doctor.

Manual production update command:

```bash
cd ~/bmc-luminary-site
git pull --ff-only
cd portfolio/automation
chmod +x deploy-update.sh
./deploy-update.sh .env
```

Do not use `git reset --hard` as a production deployment shortcut.

### Important tooling limitation found in the prior thread

A deep connector/plugin search found no authenticated SSH, OVH shell, remote-terminal, or existing VPS deployment connector available to ChatGPT in that thread.

The repo contained:
- VPS address/SSH instructions;
- no existing GitHub Action with production SSH credentials;
- no self-hosted GitHub runner;
- no established deploy secrets such as `SSH_PRIVATE_KEY`, `VPS_HOST`, or equivalent.

Therefore, do not claim ChatGPT can directly SSH to the production VPS unless the new thread actually discovers a newly connected tool.

A future improvement was identified:
- create a narrowly scoped deployment SSH key;
- authorize it only for BMC deployment on the VPS;
- store the private key as a protected GitHub Environment secret;
- add a manually triggered production deployment workflow that executes the safe updater;
- protect the production environment and ideally protect master before granting production credentials.

This would allow future ChatGPT sessions to trigger/inspect production deployments through the connected GitHub integration instead of using Brett as the SSH bridge.

Do not invent those credentials or assume the workflow already exists. Creating/connecting production credentials requires Brett's explicit setup/approval.

### Static production verification still required before first invite

VPS deployment and Cloudflare Pages deployment are separate.

Before sending the first provider invitation, verify the public Cloudflare Pages deployment reflects current code, at minimum:
- `https://bmcservicenetwork.com/providers/`;
- `https://bmcservicenetwork.com/sitemap.xml`;
- sitemap contains `https://bmcservicenetwork.com/providers/`;
- provider activation page has required Current capacity control.

Do not dispatch the manual GitHub Pages workflow as a substitute for Cloudflare Pages.

### Search/indexing

Search Console has not yet been completed.

Documented path:
1. create Google Search Console Domain property for `bmcservicenetwork.com`;
2. add Google TXT verification in authoritative Cloudflare DNS;
3. submit `https://bmcservicenetwork.com/sitemap.xml`;
4. use URL Inspection on a small priority set, not every page.

Priority set is documented in `portfolio/seo/SEO.md`.

Google's general Indexing API is not appropriate for ordinary BMC local-service pages.

### CMS source issue

CMS source-native research returned HTTP 403 from the VPS and is a parallel/nonblocking issue.
The standard public-web research queue nevertheless fully drained.
Already-ingested ADHS/CMS records remain stored.
Do not restart massive CMS source-native pulls as a launch prerequisite.

### Business-model safeguards

Do not casually rewrite pricing or business model.
Before changing monetization, consult:
- `portfolio/automation/BUSINESS_MODEL.md`;
- current HANDOFF;
- original BMC portfolio plan documents if needed.

BMC remains a broad Arizona service/lead/referral/research network intended to compete with cumbersome directory/lead marketplaces while operating with high automation.

Outreach remains OFF unless Brett explicitly authorizes it.

### Correct next-thread sequence

On a new conversation:

1. Read:
   - `portfolio/automation/NEXT_THREAD.md`;
   - HANDOFF Sections 47–52;
   - `BUSINESS_MODEL.md`;
   - `deploy-update.sh`;
   - latest CI state.
2. Verify current GitHub master/head; do not assume this exact SHA remains latest.
3. Do not ask Brett to redo Stripe, DNS, Cloudflare, research drain, or public-copy cleanup.
4. Determine whether production VPS has already been updated since Section 50.
   - If not, use the safe deployment command above.
   - If ChatGPT still has no SSH execution tool, Brett must run it once or the deployment-automation path must be built.
5. Verify Cloudflare Pages has current static provider/sitemap/activation-form changes.
6. Rerun/inspect runtime doctor after API deployment.
7. Keep all global outreach OFF.
8. Only after both API and static production are current:
   - recheck American Crown;
   - copy the live secure pilot invite;
   - manually send ONE invite;
   - wait for submission;
   - review submitted market/services/capacity/credentials/insurance;
   - update routing if needed;
   - approve only after appropriate checks;
   - rerun runtime doctor and confirm `live_intake_ready = READY`.
9. In parallel or before invite, Search Console setup is safe and useful.
10. After the first verified provider is active and launch gate turns READY, move into controlled acquisition/launch, not more speculative infrastructure rebuilding.

### Process rules for the next assistant

- inspect GitHub/handoff before asking Brett to repeat anything;
- write major new decisions/results into HANDOFF before long implementation stretches;
- provide visible progress updates during multi-tool work;
- do not disappear for 30–60 minutes without updates;
- do not claim background/asynchronous work;
- prefer direct implementation over repeatedly replanning the same system;
- do not conflate BMC Service Network with Quantum Neuroshift;
- do not enable outreach without explicit permission;
- do not expose secrets;
- do not rotate Stripe webhook secret without a proven need;
- do not alter Cloudflare DNS/hosting architecture casually;
- do not send a real provider invite from stale production code.


## 53. LAUNCH READINESS AUDIT + RESEARCH QUEUE REGRESSION — 2026-10-25

Brett explicitly stopped the move toward the first provider invitation because the goal is not merely to have one provider path working. Before any real provider, buyer, or Growth Pack outreach is sent, BMC must be genuinely ready to launch and to work the researched prospect pool in a controlled way.

### Production deployment completed, but exposed a research-state regression

Brett deployed the prior authoritative master `1b8606fbad9009b7464f31d8c48baef14e1c3d03` with `deploy-update.sh`.

The deployment itself succeeded:
- Ops API rebuilt and recreated;
- additive migrations completed;
- webhook proxy refreshed;
- Postgres remained healthy;
- scheduler, n8n, SearXNG and Ollama remained up;
- runtime doctor returned 0 core failures / 0 warnings;
- public ingress verification passed;
- Cloudflare hooks hostname resolved;
- `/api/intake` and `/api/stripe-webhook` reached the constrained application gateway;
- private admin routes remained blocked publicly;
- provider, buyer and growth sending remained effectively OFF.

However, the post-deploy runtime doctor unexpectedly reported:
- research queued = **56**;
- research assigned = 0;
- open agent tasks = 0.

This contradicted the previously confirmed fully drained state.

### Root cause

`seed-research-scale.sql` was being run as part of every normal additive migration.

Its scale-refresh block recalculated goals and then changed terminal research rows back to `queued` when:
- candidates found were below the goal;
- research_pass was below 4;
- status was `completed`, `review`, or `searched_no_results`.

That meant a normal future production deploy could resurrect already-finished research work even after the queue had intentionally drained to zero.

This was a deployment/migration semantics bug, not evidence that 56 brand-new research cells had deliberately been added.

### Fix

`seed-research-scale.sql` now:
- still raises/reconciles research goals;
- still recalculates target gaps;
- still inserts genuinely new expansion cells when they do not exist;
- **never changes terminal research status back to queued merely because a migration is rerun**.

Multi-pass retry remains the responsibility of the active research worker. A later deployment must preserve terminal research state.

Fix commit:
- `9e2d1f6948c85a2f686014cccd968a731a7f0b12`

Regression CI:
- creates synthetic `completed`, `review`, and `searched_no_results` rows with low pass counts;
- reruns `seed-research-scale.sql`;
- requires all three rows to remain terminal.

Guard commit:
- `239437e5745dc8475031a3cdfe4fb5bf8d97965c`
- BMC Portfolio CI run `40274589901`: **SUCCESS**.

The 56 production rows that were already resurrected still need to finish/return to terminal state once. The code fix prevents a later deploy from reopening them again.

### Runtime outbound safety tightened

The production deploy output showed `GROWTH_OUTREACH_ENABLED` was absent from the VPS `.env`.

The application/Compose default is false, so this did not enable Growth outreach. Still, runtime doctor previously checked only vendor and buyer switches.

Runtime doctor now explicitly verifies:
- vendor outreach OFF;
- buyer outreach OFF;
- Growth Pack outreach effective OFF.

Commit:
- `f6a80225dc13bb6d828de6dd91a8886940b0014c`.

No outreach was enabled and no messages were sent during this work.

### Research records are not automatically outreach-ready

A second launch-readiness gap was confirmed.

The existence of:
- 211 vendor records;
- 2,537 buyer records;

does not prove that all researched prospects are usable for outbound launch.

The old `outreach_ready` preflight gate primarily proves outbound infrastructure:
- SMTP;
- monitored IMAP;
- postal address.

It does **not** prove:
- research queue is fully drained;
- records have usable public email/contact paths;
- duplicate emails are controlled;
- suppressions are honored at staging time;
- research prospects have been deliberately selected into a launch wave.

Therefore do not describe the entire research pool as outreach-ready merely because `outreach_ready: READY`.

### New production launch-readiness audit

Added:
- `portfolio/automation/launch-readiness.sh`

The audit is read-only and checks/reports:
- current commit;
- all three outreach switches;
- research queued/assigned/open-agent-task counts;
- staged review-candidate count;
- total/prospect vendor counts;
- vendor email/phone/website/contact-path readiness;
- vendor records eligible for a new recruitment wave;
- total/prospect buyer counts;
- buyer email/phone/website/contact-path readiness;
- buyer records eligible for a new wave;
- suppression count;
- duplicate email groups across vendor/buyer pools;
- malformed stored email addresses;
- current outreach rows grouped by side/campaign/wave/status;
- verified pilot/active provider count;
- SMTP / IMAP / postal / Stripe configuration state;
- number of active products with live payment links;
- public Providers page;
- public sitemap and `/providers/` entry;
- live provider activation capacity requirement;
- constrained public webhook ingress.

It distinguishes:
- provider recruitment staging readiness;
- buyer service-outreach readiness, which should remain unavailable until real provider coverage exists.

The audit does not send or stage messages.

### Controlled research-prospect wave staging added

The old bootstrap seed scripts were too broad to be the preferred real-launch workflow.

Added:
- `portfolio/automation/stage-outreach-wave.sh`

Safety behavior:
- preview mode is the default;
- refuses to run if vendor, buyer, or Growth sending is enabled;
- accepts only a named wave;
- allows bounded market/service/campaign filtering;
- maximum batch is 100;
- selects only vendor `prospect` or buyer `new/prospect` records;
- requires a public email;
- honors `outreach_suppressions`;
- deduplicates by normalized email;
- refuses to duplicate an already-staged recruitment/buyer record;
- `--apply` stages rows only;
- **never sends email**;
- sending switches remain OFF after staging.

CI now creates a synthetic researched vendor and proves:
1. preview stages nothing;
2. explicit `--apply` creates exactly one queued outreach row in the named test wave;
3. `sent_at` remains null.

Legacy bootstrap queue seeds were also hardened:
- vendor seed now queues only unsuppressed `prospect` vendors with public email;
- buyer seed now queues only unsuppressed `new/prospect` buyers with public email;
- both explicitly use the `backlog` wave;
- real launch staging should use `stage-outreach-wave.sh`, not a blind seed rerun.

### Current launch policy

Do **not** send the American Crown invitation yet.

Do **not** enable:
- `OUTREACH_ENABLED`;
- `BUYER_OUTREACH_ENABLED`;
- `GROWTH_OUTREACH_ENABLED`.

Do not start broad researched-prospect outreach merely because records exist.

Correct next production sequence after the latest GitHub CI is green:

1. Pull/deploy the latest master with `deploy-update.sh`.
2. Confirm future migration no longer resurrects terminal research.
3. Drain the currently reopened 56 public-web research rows back to terminal state.
   - Source-native CMS work is not required for this repair drain.
4. Run `launch-readiness.sh .env`.
5. Inspect the **actual contactability numbers** for the 211 vendors and 2,537 buyers.
6. If email/contact readiness is weak, run a dedicated enrichment pass before outreach staging.
7. Only once research is genuinely complete and contactability is acceptable:
   - preview a small named provider recruitment wave;
   - preview a small buyer wave only where verified provider coverage exists;
   - inspect copy/targets;
   - keep sending OFF until Brett explicitly approves.
8. Provider activation still requires provider submission + review/verification before approval.
9. Buyer service outreach should not outrun provider capacity.

The operational goal is a launch-ready autonomous system, not merely a technically healthy runtime.


## 54. CONTROLLED RESEARCH-LEAD LAUNCH PATH — 2026-10-25

This section extends Section 53 after Brett clarified that BMC should **not send even the first provider invitation until the broader launch system and researched-lead path are genuinely ready**.

No vendor, buyer, or Growth Pack outreach was enabled.
No message was sent.
No provider was activated.

### Final verified code checkpoint

Combined launch-control master:
- `467438bb8e4a0f02e63c638803b037bb6f0a7a21`

BMC Portfolio CI:
- run `40275996324`: **SUCCESS**
- full database/API smoke: **SUCCESS**
- launch-readiness audit executed against the disposable CI database in report mode: **SUCCESS**

The prior combined functional run:
- `7b65658509b11bad9e8e3cd3c0b57700e47d4e71`
- run `40275824274`: **SUCCESS**
- Cloudflare Pages deployment for that functional tree: **SUCCESS**

### Research deploy regression is fixed

As documented in Section 53, normal migration had reopened 56 terminal research rows after production had previously reached zero queued.

The fix prevents `seed-research-scale.sql` from changing terminal research rows back to `queued` during future deploys.

CI explicitly proves terminal:
- completed;
- review;
- searched_no_results;

rows remain terminal after the scale seed reruns.

The **already reopened 56 production rows still need to finish one final time**. After that, future normal deploys must preserve the drained state.

For this repair, do not re-enter the separate CMS/source-native 403 work.

`drain-research-backlog.sh` now supports:
`SKIP_SOURCE_NATIVE_DRAIN=true`

so the repair can process only the public-web research queue.

### "Outreach ready" is no longer treated as "prospect pool ready"

The existing admin preflight `outreach_ready` gate mainly proves outbound infrastructure:
- SMTP;
- reply/IMAP monitoring;
- business postal address.

It does not prove the 211 vendor / 2,537 buyer records are all contactable or suitable for outreach.

New:
- `portfolio/automation/launch-readiness.sh`

This read-only production audit reports:
- research queued / assigned / open research tasks;
- vendor and buyer prospect totals;
- email-ready / phone-ready / website-ready counts;
- records with no stored contact/source path;
- records actually eligible for a new wave;
- suppressions;
- duplicate email groups;
- malformed emails;
- existing outreach grouped by side/campaign/wave/status;
- verified pilot/active provider count;
- SMTP/IMAP/postal/Stripe/payment-link readiness;
- public Providers/sitemap/provider-activation pages;
- constrained webhook ingress.

The audit distinguishes:
- provider recruitment staging readiness;
- buyer service-outreach readiness.

Buyer service outreach is expected to remain blocked before verified provider coverage exists.

### Safe researched-prospect wave staging

New:
- `portfolio/automation/stage-outreach-wave.sh`

It creates a deliberate bridge between research and outbound instead of treating every database prospect as immediately sendable.

Safety:
- preview-only by default;
- requires a named wave;
- bounded to 1–100 records;
- may filter by market + service/campaign;
- provider selection requires `prospect`;
- buyer selection requires `new` or `prospect`;
- public email required;
- suppressions honored;
- normalized-email dedupe;
- already-staged entities excluded;
- refuses to operate if any outbound switch is enabled;
- `--apply` only creates queued outreach rows;
- it **never sends email**.

CI proves:
1. preview creates zero outreach rows;
2. explicit `--apply` creates exactly one synthetic queued row;
3. `sent_at` remains null;
4. the staged provider row retains the exact target market + service used to select it.

### Exact staged provider targeting is now persisted

New outreach columns:
- `target_market`
- `target_service_key`

Reason:
A multi-market/multi-service provider may have many profile rows. A wave selected for Prescott + commercial cleaning must not later send copy about a different first-listed service/market.

The provider sender now prefers the staged target values and only falls back to profile values for legacy/First Wave rows.

### Every researched provider now uses the controlled activation/review path

Previously:
- the special `pilot1` First Wave used the vendor-specific secure activation URL;
- generic future researched-provider recruitment used the generic Providers page.

That split is removed.

All provider recruitment copy now uses:
- the vendor-specific `/provider-pilot-activate/?...` link;
- provider preference/capacity submission;
- `pilot_pending_review`;
- explicit BMC verification/approval;
- only then pilot/active routing.

There is no separate looser onboarding path for researched providers.

### Private exact-copy wave preview

New private admin endpoint:
- `GET /api/admin/outreach-wave-preview?side=vendor|buyer&wave=<wave>&limit=<n>`

It requires the BMC admin key and returns:
- exact recipient;
- market;
- service/campaign;
- sequence step;
- exact subject;
- exact message body.

It sends nothing.

CI proves the synthetic researched-provider preview:
- reports sending disabled;
- keeps exact staged market/service;
- contains the vendor-specific activation URL and vendor ID.

This is the required review surface before a real named wave is ever enabled.

### Buyer outreach cannot outrun provider coverage

The buyer sender now requires a real provider match before selecting a buyer message for sending.

Required match:
- provider status `pilot` or `active`;
- non-test provider;
- same market as buyer;
- at least one provider service intersects the buyer's likely service set.

Therefore an enabled buyer switch alone is no longer sufficient to market a service BMC cannot currently fulfill in that market.

Buyer acquisition should follow verified provider coverage, not race ahead of it.

### Legacy bootstrap outreach seeds hardened

The old bootstrap-only vendor/buyer queue seeds now:
- restrict to appropriate prospect states;
- require public email;
- honor suppression;
- use explicit `backlog` wave;
- do not send.

Normal migrations do not rerun those broad bootstrap outreach seeds.

Real launch waves should use `stage-outreach-wave.sh`, not blind bootstrap seeding.

### Existing-prospect enrichment remains conditional on live audit

Current research can capture email/phone visible in public search evidence and conservatively auto-promote direct-domain contact-ready discoveries.

However, BMC does **not yet have a dedicated second-pass contact-enrichment worker for every existing vendor/buyer record that lacks email**.

Do not guess whether that is a launch blocker.

First run the production launch audit and inspect:
- current vendor email-ready count;
- current buyer email-ready count;
- phone/site/source coverage;
- eligible new-wave counts.

If the contactable pool is too shallow for launch, the next engineering step is a dedicated existing-prospect public-contact enrichment pass. If the email-ready pool is already sufficiently deep for controlled launch, enrichment can continue in parallel rather than blocking all provider recruitment.

### Correct next production sequence

Production currently ran the older `1b8606f...` build when the 56-row regression was observed.

After this checkpoint:

1. Safely deploy current master with `deploy-update.sh`.
2. Keep all outbound switches OFF.
3. Repair only the reopened public-web queue:
   `SKIP_SOURCE_NATIVE_DRAIN=true bash ./drain-research-backlog.sh .env 1000 2`
4. Require queued=0, assigned=0, open research tasks=0.
5. Run:
   `./launch-readiness.sh .env report`
6. Review actual contactability and outreach staging counts.
7. If contactability is weak, build/run dedicated existing-prospect enrichment before launch.
8. Do not stage a real wave until the audit is reviewed.
9. When staging eventually begins:
   - preview target selection first;
   - apply only a small named provider wave;
   - preview exact email copy privately;
   - keep sending OFF until Brett explicitly approves.
10. Establish verified provider coverage before buyer service outreach.
11. Buyer sender now enforces that coverage in code as a backstop.

The target is not merely "server healthy." The target is a measurable, controlled, launch-ready research-to-outreach system.


## 55. ASSISTANT-LED MARKET RESEARCH BOOTSTRAP + LINE-BY-LINE AUDIT — 2026-10-26

This section is authoritative over older language that implied the drained legacy research queue meant the overall market research job was substantially complete or that provider launch should be the next priority.

Brett explicitly said the current research experience is not acceptable because obvious Arizona markets still show zero/empty cells even though real businesses and potential buyers plainly exist.

### User directive

Brett's preferred operating model is now:

1. **ChatGPT performs the heavy bootstrap research itself** using connected public-web search/research tools.
2. ChatGPT gathers as much useful public business/buyer/vendor/source data as practical across all configured markets and categories.
3. That data is structured and handed to GitHub/VPS for storage, dedupe, scoring and ongoing automation.
4. The VPS scanner becomes the **continuous delta/update engine**:
   - find net-new businesses;
   - refresh stale records;
   - detect changed contacts;
   - find new public demand;
   - find new procurement opportunities;
   - continue enrichment.
5. The VPS scanner is **not** to be treated as the sole primary researcher while ChatGPT waits for it to crawl thousands of lanes.
6. Before launch, Brett and ChatGPT intend to go **line by line** through the resulting dataset and verify accuracy.

### What counts as useful research

Do not require a pristine official/direct source before retaining a discovery.

Useful discovery may come from:
- ordinary search-engine results;
- direct business websites;
- official government/institutional pages;
- chambers of commerce;
- tourism/business directories;
- Yelp/Yellow Pages/BBB-style directories;
- association/member directories;
- public school/church/medical/facility listings;
- public procurement portals;
- publicly indexed social/community pages;
- other publicly accessible sources that a normal customer might find.

The correct model is:
- **discover first**;
- **grade the source**;
- **verify/promote later**.

A directory result can establish that a candidate is worth investigating without being strong enough to call the candidate verified.

### Coverage semantics must be honest

Never equate:
- scanner has not touched the lane
with:
- no business exists.

The research/coverage UI and reports should distinguish:
- base records already stored;
- newly search-discovered candidate records;
- direct/verified records;
- scan state.

A “0” should only mean there are currently zero records in that specific defined bucket — not “there are no businesses in this city.”

### Backend issue found

The prior deep-inventory worker had several behaviors that made the board look falsely empty:

- 1,239 market/category lanes existed;
- each inventory invocation processed only a bounded subset;
- priority ordering repeatedly favored a small group of cities before rural markets;
- a lane can take multiple pages/variants to complete;
- vendor relevance required result-level market text, which could reject a legitimate regional provider returned by a market-specific search merely because its website did not literally print the small town name.

That made workflow state look like market truth.

### Backend changes committed

Recent commits:
- `bf12d742abd7fe8b70b8bbeabb28427bc8baafa6`
  - spreads inventory selection across markets;
  - retains vendor discoveries from market-specific search context even when direct page market text is absent;
  - stores whether market evidence came from result text vs market-specific query context;
  - direct/verified classification still requires explicit result-level market evidence.
- `bea20a58ee78ee6323146f9ff295da9f3aef73e1`
  - coverage API now reports:
    - base records;
    - current search-discovered candidates;
    - combined discovered records;
    - direct/official candidate counts;
    - scanner state separately.
- `2f516675964b59fbd36996ab014eb69cc7c723d8`
  - production proof output separates base / search-discovered / direct-verified coverage.
- `fd6f208df376830b42e74d30932facf8b141ccae`
  - CI regression tests for the new discovery/coverage semantics.

At the moment this handoff section was written, a CI-gated relay deployment for `fd6f208...` had been requested but **not yet confirmed complete**.
Verify:
- relay deploy result;
- production SHA;
- scheduler state;
- all outreach switches OFF;
before assuming the change is live.

### Recent source audit lesson

Brett also directed a line-by-line source audit.

The first 100 stored source-domain entries showed:
- many real direct business/organization sites;
- many useful but secondary chamber/directory sources;
- stale/bad URLs that need replacement;
- discovery sources that should not be labeled “verified” merely because they resolve;
- a major concentration of buyer records from an ADHS ArcGIS source that requires freshness checking.

Important examples discovered:
- `prescottelkstheater.com` was stale/bad and should be replaced with the current Prescott Elks Theatre source.
- the stored Southern Tire Mart location URL was stale and should be replaced with the current official location page.
- an AppliTrack job/recruiting URL is the wrong evidence type for PUSD facilities/buyer verification.
- Clear My Land Directory showed obvious taxonomy contamination and should be discovery-only at best.
- a self-published Canva STR page requires independent corroboration.
- official/direct, secondary-discovery, and weak/lead-gen sources must be distinguished.

### Line-by-line verification standard

For every final buyer/vendor record, verify as much as publicly available:

- canonical business/organization name;
- correct Arizona market / service territory;
- correct buyer/vendor role;
- correct service/category fit;
- direct website if available;
- source URL and source type;
- public phone;
- public email;
- address/service territory if relevant;
- licensing/credential information where the category requires it;
- duplicate/stale status;
- whether source is:
  - direct/official;
  - established secondary directory/association/chamber;
  - ordinary discovery;
  - weak/untrusted;
- whether the record is:
  - discovery only;
  - corroborated;
  - directly verified;
  - stale/reject.

Do not silently delete history; quarantine/supersede stale evidence where useful.

### Research-bootstrap implementation strategy

The preferred next engineering/research phase is:

1. Use ChatGPT/web search to research market/category batches directly.
2. Produce structured seed data with provenance, e.g. JSON/CSV/SQL records containing:
   - market;
   - side;
   - category/service;
   - business name;
   - source URL/domain;
   - discovered phone/email/site;
   - source tier;
   - verification status;
   - evidence notes;
   - researched timestamp.
3. Commit those seed artifacts to GitHub.
4. Add/verify idempotent import/upsert tooling so the VPS can ingest them safely without duplicating existing records.
5. Never enable outreach merely because a seed import happened.
6. Let the VPS scanner continue afterward for new discoveries and refresh.
7. Build board/reporting so empty/untouched/verified are distinct concepts.
8. Audit records line by line with Brett before launch.

### Safety and launch state

Current policy remains:
- no vendor outreach without explicit Brett approval;
- no buyer outreach without explicit Brett approval;
- no Growth Pack outreach without explicit Brett approval;
- no automatic procurement bidding;
- no private-group scraping/bypass;
- no automatic contact to individual social/community posters;
- no provider auto-approval.

The business is **not launch-ready** merely because infrastructure works or legacy queues are drained.

### Immediate next-thread instruction

The next assistant should **not** restart with “let the scheduler run and see what it finds.”

Instead:
1. read this Section 55 and the new top override in `NEXT_THREAD.md`;
2. verify the pending fair-coverage deploy;
3. keep outreach OFF;
4. begin active assistant-led research seeding;
5. eliminate false-empty market/category cells;
6. then conduct the planned line-by-line verification with Brett.



## 56. STATEWIDE ASSISTANT-LED BOOTSTRAP ENGINE — 2026-10-26

This section continues Section 55 and records the actual implementation now underway.

### User expectation

Brett expects the initial statewide research pool to contain **thousands of plausible businesses/buyers/vendors**, not dozens, because ordinary public search clearly exposes large numbers of organizations in every meaningful Arizona market.

The assistant must continue doing the bootstrap work rather than waiting for the old VPS scanner to crawl 1,239 lanes slowly.

### First hand-researched rural seed

A first manually researched rural batch was committed:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-batch-01.json`
- `portfolio/automation/seed-assistant-research-bootstrap.sql`

It contains approximately 50 discovery/direct-evidence records across difficult small markets such as:
- Ash Fork;
- Mayer;
- Cordes Lakes;
- Williamson Valley;
- Seligman;
- Skull Valley;
- Dewey-Humboldt;
- Golden Valley.

These records are discovery/research rows only. They do not auto-promote providers/buyers and do not send outreach.

### Discovery-table dedupe flaw fixed

The prior unique key effectively allowed only one candidate per:
- side;
- market;
- category;
- source URL.

That meant one chamber/directory/category page listing many businesses could contribute only one candidate.

This was changed so multiple distinct businesses may be supported by the same directory/category source while deduplicating the business/source pair.

Relevant commits include:
- `b897084f3b4299e5cbaca0901affd9b18625f8cb`
- `88b189799002a0e6aa4f8dbead14233c449c0f49`
- `ea6a9eb370c7c455bcf6dff057d97eef313cd375`

### Statewide curated directory bootstrap importer

New:
- `portfolio/automation/assistant-directory-bootstrap.py`
- `portfolio/data/assistant-bootstrap-source-registry.json`

The importer uses public city/category directory pages selected by ChatGPT as discovery feeders.

Current curated market set:
- all 21 configured BMC markets.

Current feed families include:
- restaurants and bars;
- educational services;
- healthcare;
- shopping;
- government;
- housing;
- insurance;
- automotive services;
- construction;
- electrical;
- consumer services;
- environmental services.

The importer:
- fetches only public pages;
- extracts distinct company names;
- captures visible phone/address where available;
- uses the individual company page as the source URL when exposed;
- classifies the company into a BMC buyer/vendor lane;
- inserts only into `market_inventory_candidates`;
- does not promote to base buyer/vendor tables;
- does not stage outreach;
- does not send email;
- does not approve providers.

This is intentionally **discovery bootstrap**, not verification.

A safe allowlisted VPS relay action was added:
- `assistant_bootstrap_import`

It is an internal mutating action and therefore inherits the relay requirement that all outbound switches remain OFF.

### Source quality is now explicit

The candidate table now has explicit fields:
- `source_tier`
- `verification_status`
- `last_verified_at`

Current intended semantics:

Source tier examples:
- `direct`
- `secondary`
- `directory`
- `search`
- `weak`

Verification status examples:
- `discovery`
- `direct_evidence`
- later `manual_verified`
- later `credential_verified`
- `stale`
- `rejected`

The bulk public-directory importer writes:
- `source_tier=directory`
- `verification_status=discovery`

Search-scanner direct pages use:
- `source_tier=direct`
- `verification_status=direct_evidence`

This is specifically to prevent a repeat of the earlier reporting mistake where any source URL was visually treated like equally strong evidence.

### Production proof now reports evidence tiers

`production-proof-readout.sh` now includes candidate counts grouped by:
- source tier;
- verification status.

It also separately reports:
- base records;
- search-discovered rows;
- direct/verified-style evidence;
- lane scan state.

### Public source validation performed during this build

The assistant confirmed public category pages with hundreds/thousands of records exist for markets including:
- Kingman;
- Winslow;
- Camp Verde;
- Chino Valley;
- Prescott Valley;
- Prescott;
- Flagstaff;
- Mayer;
- Ash Fork;
- Skull Valley;
- Golden Valley.

Examples of visible category depths:
- Kingman automotive: hundreds;
- Kingman construction: over a thousand;
- Prescott Valley construction: over a thousand;
- Chino Valley construction: hundreds;
- Camp Verde construction: hundreds;
- Winslow total directory: over a thousand;
- Flagstaff total directory: many thousands.

This proves the old apparent zeroes were not credible market reality.

Some market names do not map cleanly to the same directory slug:
- Cordes Lakes;
- Dewey-Humboldt;
- Williamson Valley.

Those should continue using direct-search/manual/bootstrap sources rather than forcing a bad directory alias.

### Important deployment state

An earlier deploy request targeting:
- `f9e75b35381bb8578af837a2e2db1cc399baec97`

became obsolete because source-tier/schema/importer work continued afterward.

Do not treat that older request as the intended final bootstrap deployment.

Before production import:
1. verify latest master;
2. require BMC Portfolio CI success on that exact SHA;
3. deploy the latest SHA through the VPS relay;
4. keep all outreach switches OFF;
5. run the assistant bootstrap importer in controlled market batches;
6. inspect production row counts and evidence tiers;
7. continue with remaining markets/source families until statewide discovery reaches the expected thousands.

### Audit plan remains mandatory

Thousands of discovery rows are not the same as thousands of verified companies.

After bootstrap:
- dedupe;
- identify stale entries;
- replace stale URLs;
- direct-site verify;
- verify service territory/category;
- verify public contact data;
- credential-check regulated services;
- mark records line by line with Brett.

The VPS scanner should thereafter operate as a delta/update layer, not as a substitute for the bootstrap.



### Section 56 follow-up — final pre-deploy bootstrap corrections

Two implementation issues were caught before the statewide importer was allowed to touch production:

1. The hand-researched SQL seed was briefly inconsistent after adding `source_tier`, `verification_status`, and `last_verified_at`. It was fully regenerated from the canonical JSON artifact rather than patched by string replacement.
   - corrected seed commit: `85277b331c311253138193d0e1894e68834aab15`
2. The bulk directory importer had an unused first-draft parser and its conflict-update path did not refresh the new evidence-tier fields.
   - cleanup/evidence-refresh commit: `979552c1e36d6669ff5de5dd69be4716ae9bcb3a`
   - CI was strengthened afterward to prevent regression.

Do not use any earlier bootstrap deployment request. They target stale SHAs by design and should be rejected by the relay's exact-SHA guard.

The next deploy must target the current master after this handoff update and must pass BMC Portfolio CI before the relay will execute it.


## 56. EXHAUSTIVE MARKET ENUMERATION BOOTSTRAP — 2026-10-26

Brett clarified the research target again: do not stop at “multiple local candidates per market.” The bootstrap objective is to enumerate **all publicly discoverable plausible candidates per configured market/category**, subject to reasonable deduplication and source provenance.

### Current research state

Assistant-led bootstrap batch 01 was created with **50 researched rural-market records** spanning Ash Fork, Mayer, Cordes Lakes, Williamson Valley, Seligman, Skull Valley, Dewey-Humboldt and Golden Valley.

Artifacts:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-batch-01.json`
- `portfolio/automation/seed-assistant-research-bootstrap.sql`

The SQL seed:
- inserts only into `market_inventory_candidates`;
- is idempotent;
- does not promote records into live vendors/buyers;
- does not stage or send outreach;
- preserves source quality / verification state in evidence JSON.

Migration and CI were updated to ingest/test the assistant bootstrap seed.

### Important ingestion defect fixed

The prior inventory uniqueness rule was:
`unique(side,market,category_key,source_url)`.

That was too restrictive for directory/chamber/registry research because one directory page can legitimately contain dozens or hundreds of distinct businesses. Under the old key, the first business from a source page could block every other business from that same source URL.

This was changed to dedupe by:
`(side,market,category_key,source_url,business_name)`.

Related commits:
- `b897084f3b4299e5cbaca0901affd9b18625f8cb` — schema allows multiple businesses per source page;
- `88b189799002a0e6aa4f8dbead14233c449c0f49` — API uses business+source dedupe;
- `ea6a9eb370c7c455bcf6dff057d97eef313cd375` — bootstrap seed aligned to new dedupe key.

### Scalable discovery path confirmed

Public city/category directories expose enough records to make a statewide thousands-record bootstrap realistic.

Examples found during the live research pass:
- Prescott Yellow Pages business listing reports 4,281 businesses;
- Mayer business listing reports 104;
- Ash Fork reports 28;
- Golden Valley exposes hundreds of listings;
- Seligman plumber category reports 61;
- Seligman restaurants reports 17;
- Chino Valley plumbers contains many local entries;
- Dewey-Humboldt category pages expose many service-area providers.

These sources are **discovery feeders**, not automatic verification.

### New research rule

For each configured market:
1. enumerate broad local business directory results;
2. enumerate each BMC buyer category;
3. enumerate each BMC vendor/service category;
4. preserve every plausible unique business/organization candidate;
5. retain phone/address/site where publicly visible;
6. label source provenance and source tier;
7. deduplicate across sources and categories without throwing away multi-source corroboration;
8. direct-site / government / registry research later raises verification confidence;
9. do not cap at a small arbitrary number when the source exposes more.

The objective is a **statewide bootstrap in the thousands**, with large markets naturally containing hundreds or thousands and rural markets containing all discoverable local + serving-area candidates.

### Current limitation / honesty rule

At this checkpoint, the repository contains the initial 50-record assistant bootstrap batch plus the ingestion/schema changes. The thousands-record enumeration is **in progress**, not complete.

Do not claim the full statewide bootstrap is finished until actual committed row counts support that claim.

### Next actions

1. Continue market-by-market enumeration, beginning with public directory/category pages and direct sources.
2. Build batch artifacts large enough to materially move coverage counts.
3. Commit each batch with provenance.
4. Deploy only after CI is green; outreach remains OFF.
5. Use VPS automation afterward for delta/new-record detection and refresh.
6. Continue periodic HANDOFF updates so conversation changes do not lose state.



## 57. CONTINUOUS EXHAUSTIVE DISCOVERY + CLOSURE REFRESH — 2026-10-26

This section supersedes older inventory language that treated research depth targets as terminal completion.

### Current master at this checkpoint

Latest observed master:
- `b28e9b67b0a086626d80c8d3fd42ad1523c54836`
- commit message: **Test paginated exhaustive directory crawl**

CI/deployment note:
- GitHub combined status had not yet reported a completed status for this exact SHA when this handoff section was written.
- Therefore do **not** assume this exact master is green or deployed until a successful BMC Portfolio CI run and production relay proof are confirmed.

### Open-ended inventory is implemented in code

The inventory worker no longer stops because an arbitrary numeric target was met.

Current behavior:
- every market/category lane remains eligible for future refresh;
- a complete search pass transitions the lane to `monitoring`, not terminal complete;
- cursor resets to page 1 / variant 0 for later refresh;
- `scan_cycles` increments each full cycle;
- `last_full_scan_at` records the latest completed cycle;
- old `scan_complete_target_met` / `scan_complete_under_target` states are migrated back to active monitoring;
- depth targets remain useful as reporting goals only and do not stop discovery.

Current search cycle:
- up to 8 query variants;
- up to 4 result pages per variant;
- full cycle then repeats later.

### Candidate lifecycle / closure tracking

`market_inventory_candidates` now has:
- `first_seen_at`
- `last_seen_at`
- `closed_at`
- `closure_reason`
- `source_tier`
- `verification_status`
- `last_verified_at`

The market search worker checks result text for credible closure evidence. When closure evidence is returned:
- candidate status becomes `closed`;
- `closed_at` and `closure_reason` are recorded;
- closed records no longer count as active discovery/direct coverage;
- history is preserved rather than silently deleted.

This is the beginning of the requested ability to remove closed businesses from active coverage while retaining audit history.

### Exhaustive public-directory bootstrap

Current importer:
- `portfolio/automation/assistant-directory-bootstrap.py`

It covers all 21 configured BMC markets and has broadened feed families including:
- restaurants/bars;
- education;
- healthcare;
- shopping;
- government;
- housing;
- insurance;
- automotive;
- construction;
- electrical;
- consumer services;
- environmental services;
- travel/leisure;
- real estate;
- professional services;
- nonprofits;
- food;
- pharmaceuticals;
- industrial machinery;
- manufacturing;
- transportation;
- storage.

It:
- follows public WhereOrg category pages;
- recursively discovers more specific subcategory pages;
- follows pagination pages such as `-02`, `-03`, etc.;
- extracts individual business pages, phone/address where visible;
- classifies rows into BMC buyer/vendor lanes;
- inserts them as discovery evidence only;
- does not promote providers/buyers;
- does not stage outreach;
- does not send anything.

The previous one-page/sample behavior has been replaced with paginated enumeration.

### Bulk refresh commands

New:
- `portfolio/automation/research-source-refresh.sh`

Modes:
- `directory`
- `licensed`
- `all`

Directory refresh currently runs:
- up to 500 candidates per feed;
- up to 1500 discovered pages per market;
- 0.20 second inter-request delay.

It refuses to run unless all three outbound switches are OFF.

### Continuous timers

New:
- `portfolio/automation/install-research-refresh-timers.sh`

Intended production cadence:
- public directory discovery refresh: daily;
- licensed-trade discovery refresh: weekly.

The installer uses systemd timers and requires the VPS service user to have passwordless sudo for installation.

Do not assume the timers are installed until the relay action/result proves it.

### VPS relay support

Current relay allowlist includes:
- `assistant_bootstrap_import`
- `assistant_licensed_bootstrap_import`
- `research_refresh_install`
- `research_refresh_status`

Mutating research actions still require all outbound switches OFF.

The directory bootstrap relay now supports large exhaustive parameters:
- max_per_feed up to 500;
- max_pages_per_market up to 2500.

### Important current limitation

The architecture for exhaustive discovery and refresh is now substantially built, but the actual production database has **not yet been proven to contain the expected statewide thousands from this new exhaustive importer** at this checkpoint.

The next assistant must not confuse:
- code capable of exhaustive crawling
with
- production crawl already completed.

### Immediate next actions

1. Verify BMC Portfolio CI success on the exact latest master.
2. Deploy that exact tested SHA through the relay.
3. Confirm all outreach switches remain OFF.
4. Run exhaustive assistant directory bootstrap across all 21 markets.
5. Run licensed-trade bootstrap.
6. Capture actual production counts by:
   - market;
   - buyer/vendor side;
   - category;
   - source tier;
   - verification status;
   - closed status.
7. Install/verify research refresh timers.
8. Run fresh production proof.
9. Continue assistant-led direct-site/manual research for gaps and weak classifications.
10. Begin the planned line-by-line verification with Brett after the bootstrap population is materially complete.



## 57. STATEWIDE BOOTSTRAP CROSSED 15K + CONTINUOUS RESEARCH DEPLOYED — 2026-10-26

This section supersedes any older handoff wording that describes the inventory as only a few hundred candidates.

### Actual production bootstrap result

The first assistant-driven all-market WhereOrg bulk import completed successfully on production.

Relay request:
- `assistant-bootstrap-all-markets-20261026T2208Z`

Production commit during that import:
- `9d1d2edc47ff307205c1e88e7e266b4a5491465c`

Import result:
- 21 configured markets attempted;
- 252 category feeds attempted;
- 209 succeeded;
- 43 returned 404;
- 11,618 raw company rows read;
- **9,519 classified discovery candidates inserted/updated**.

Per-market classified counts from this first pass:
- Ash Fork 66
- Bullhead City 633
- Camp Verde 493
- Chino Valley 485
- Cordes Lakes 6
- Cottonwood 641
- Dewey-Humboldt 0 from the literal WhereOrg slug
- Flagstaff 785
- Golden Valley 253
- Kingman 712
- Mayer 221
- Phoenix 909
- Prescott 784
- Prescott Valley 664
- Scottsdale 864
- Sedona 462
- Seligman 107
- Skull Valley 31
- Tucson 909
- Williamson Valley 0 from the literal WhereOrg slug
- Winslow 494

No outbound action occurred:
- OUTREACH_ENABLED=false
- BUYER_OUTREACH_ENABLED=false
- GROWTH_OUTREACH_ENABLED=false

### Fresh production proof after import

Proof request:
- `bootstrap-proof-20261026T2208Z`

At that checkpoint:
- **15,185 active v7 inventory candidates**
- direct/direct-evidence: 211
- directory/discovery: 14,859
- discovery/discovery: 97
- secondary/discovery: 18
- 11 candidates with email
- 14,362 candidates with phone
- 829 superseded historical candidates

Examples of market-side search-discovered counts at that checkpoint:
- Kingman buyer 821 / vendor 343
- Phoenix buyer 1,073 / vendor 599
- Prescott buyer 933 / vendor 409
- Prescott Valley buyer 627 / vendor 361
- Flagstaff buyer 965 / vendor 424
- Scottsdale buyer 1,046 / vendor 557
- Tucson buyer 1,138 / vendor 575
- Bullhead City buyer 674 / vendor 479
- Cottonwood buyer 651 / vendor 294

These are discovery records, not automatically verified/prospects approved for outreach.

### Important quality caveat

The first 9,519 import used the older fixed-feed WhereOrg importer. It still materially solved the “nothing is being researched” problem, but it was **not exhaustive** because large WhereOrg categories paginate.

A live inspection proved WhereOrg pagination URLs:
- base page
- `-02`
- `-03`
- etc.

Example: a 508-result category exposes pages 1–5.

The upgraded importer now follows:
- market root;
- discovered subcategories;
- all discovered pagination pages.

Therefore the next exhaustive run should materially exceed the first 9,519 where sources expose additional pages.

### Dewey-Humboldt alias correction

The public directories commonly use **Dewey, AZ** rather than the municipal label Dewey-Humboldt.

Current evidence:
- WhereOrg reports 846 companies under Dewey;
- Enigma reports 259 Dewey entities;
- public business search returns many live Dewey/Humboldt businesses.

The importer market slug was corrected:
- Dewey-Humboldt -> `dewey`

Do not interpret the prior 0 as market scarcity.

### Williamson Valley interpretation

Williamson Valley behaves more like a Prescott-area service territory/community than an independent directory city.

Direct service-area research already supports multiple vendors serving Williamson Valley, including plumbing, HVAC/electrical, landscaping, tree service and related trades.

Buyer discovery should use:
- Williamson Valley addresses;
- Williamson Valley Road / Prescott 86305 entities;
- local community/church/school/property organizations;
- service-territory evidence;
rather than expecting a standalone city directory page.

### Open-ended inventory system deployed

CI-gated deploy:
- deployed commit `6548ddb55a6cf3fc3f7a07b3cce78738e772d011`
- BMC Portfolio CI success run: **40411170657**
- relay deploy status: success
- production runtime doctor: 0 core failures / 0 warnings
- scheduler was intentionally stopped before deploy and remained stopped
- all outreach switches remained OFF

This deployed tree includes:
- candidate first_seen_at / last_seen_at;
- closed_at / closure_reason;
- scan_cycles / last_full_scan_at;
- expanded ordinary-search query variants;
- explicit permanent-closure phrase detection;
- closed candidates excluded from active discovery counts;
- full scan cycles reset into `monitoring` instead of terminal “target met” states;
- first-cycle launch semantics instead of numeric target completion;
- general local business buyer lane;
- initial licensed-trade importer and relay action;
- daily/weekly refresh timer code/actions.

### Open-ended research rule

Numeric inventory targets are now advisory depth goals only.

The system must never stop researching because a count was reached.

After a lane finishes a full ordinary-search cycle:
- increment scan_cycles;
- record last_full_scan_at;
- reset search cursor;
- status becomes monitoring;
- the lane remains eligible for future refresh forever.

### Closed-business rule

Explicit permanent-closure evidence can set a candidate status to `closed`.

Closed candidates:
- remain stored for audit/history;
- are excluded from active coverage;
- carry closure reason/time;
- can be reopened if later rediscovered active.

Do not treat “closed now” / normal business hours as permanent closure.

### Further improvements committed after deployed 6548 tree

Newer master work not yet production-confirmed at the moment this section was written includes:
- exhaustive WhereOrg category-graph crawl;
- pagination following;
- up to a high technical page safety ceiling, not a business target;
- Dewey-Humboldt -> Dewey directory alias;
- deeper relay limits;
- licensed-trade bulk import from Homversa/ROC-derived public data;
- managed research refresh scripts/timers.

Current pagination example proved that the old first-page-only logic could miss hundreds of records in one category.

### Pending at this handoff checkpoint

Relay requests in progress:
- `licensed-bootstrap-all-markets-20261026T2218Z`
- `install-research-refresh-timers-20261026T2218Z`

A deploy request for the first pagination SHA was rejected safely because CI had not yet completed. This was expected guard behavior.

The current master has advanced beyond that SHA. Verify current master + CI and deploy the exact green head before rerunning the exhaustive paginated bootstrap.

### Correct next actions

1. Poll licensed-bootstrap and timer-install relay results.
2. Verify latest master CI.
3. Deploy latest green master.
4. Run the upgraded paginated `assistant_bootstrap_import` across all markets with high page ceiling.
5. Re-run licensed-trade bootstrap on the latest build if needed.
6. Run proof and count:
   - active candidates total;
   - closed candidates;
   - by market;
   - by side;
   - by category;
   - by source tier;
   - duplicate/entity-level cleanup needs.
7. Keep scheduler/outreach safe while validating.
8. Once bulk bootstrap is stable, enable the internal scheduler only with all outbound switches still OFF.
9. Verify daily public-directory timer and weekly licensed-trade timer.
10. Continue adding public source families and direct verification feeds.
11. Never revert to capped “target met = stop” semantics.



## 58. MANUAL-FIRST STATEWIDE CENSUS HANDOFF — 2026-10-26 17:31 ARIZONA

This section is the authoritative continuation point for the next conversation. It supersedes older instructions that put VPS crawling/deployment ahead of the assistant-led initial census.

### Brett's explicit operating rule

The initial business census must be built out by the assistant through research first.

The VPS is **not** the substitute for the initial census.

Correct division of labor:
1. assistant manually/research-source builds the largest practical initial list across all 21 markets and all useful buyer/vendor categories;
2. direct/official/license evidence upgrades the strongest records;
3. keep expanding source families and categories until obvious market gaps are gone;
4. only after that initial census is materially built does the VPS become the maintenance layer for:
   - recurring refresh;
   - new-business detection;
   - closure detection;
   - contact refresh;
   - verification upgrades;
   - delta discovery.

Do not revert to "the crawler can find the rest later" as an excuse to stop the assistant-led build.

Do not treat numeric targets as terminal completion. All markets remain open-ended.

### Current repository head

Latest observed master when this section was written:
- `2cbf2be65c360ec0d41010d117108da35644ae67`
- message: **Seed 9 Williamson Valley facility census records**

The repo contains all of the manual census work described below.

### What has been built manually since the 15K production bootstrap

The original production proof before this manual expansion showed:
- 15,185 active v7 inventory candidates;
- most were directory/discovery evidence from the first large WhereOrg import.

After Brett clarified that the assistant must build the census first rather than relying on the VPS to discover the initial universe, the assistant began explicit market-by-market batches.

From explicit seeded commit counts, the new manual/research-source work accounts for **at least 7,879 seeded evidence rows across all 21 markets**.

IMPORTANT:
- 7,879 is an evidence-row count, **not a distinct-business count**.
- A single company can legitimately appear in multiple service categories.
- A later direct/verified record can coexist with earlier directory evidence for the same business.
- License records can represent the same company under more than one classification.
- The final distinct-company count must be obtained from the business-level rollup/audit view, not by summing raw evidence rows.

### Explicit per-market manual seed accounting

The following counts are from named seed commits and are safe as evidence-row accounting:

- Prescott: 185 buyer + 147 vendor + 20 verified = **352**
- Prescott Valley: 111 buyer + 106 vendor + 14 verified = **231**
- Chino Valley: 89 buyer + 61 vendor + 10 verified = **160**
- Dewey-Humboldt: 122 census + 116 category + 10 verified + 121 business + 38 agriculture/storage = **407**
- Mayer: **132**
- Cordes Lakes: **62**
- Williamson Valley: 19 rural + 9 facility = **28**, plus the earlier direct/corroborated Williamson Valley seed already present in the repo
- Ash Fork: **99**
- Seligman: **115**
- Skull Valley: **58**
- Camp Verde: 155 broad + 16 verified = **171**
- Cottonwood: 112 broad + 15 verified = **127**
- Sedona: 116 broad + 15 verified = **131**
- Flagstaff: 155 buyer + 46 vendor + 14 verified = **215**
- Winslow: 80 broad + 11 verified = **91**
- Kingman: 132 broad + 51 verified + 68 trade + 61 buyer = **312**
- Golden Valley: **84**
- Bullhead City: 139 buyer + 64 trade + 14 verified = **217**
- Phoenix: 115 hospitality/retail + 135 health/professional + 74 industrial/public + 272 licensed vendors + 14 verified = **610**
- Scottsdale: 156 buyer + 28 vendor + 291 licensed vendor + 12 verified = **487**
- Tucson: explicit seeded batches total **3,790** evidence rows; see Tucson detail below.

Total of the explicit counts above: **7,879** evidence rows, before adding the earlier Williamson direct/corroborated seed and before counting other pre-existing assistant bootstrap evidence.

### Tucson is no longer a sample

Tucson received a much deeper licensed-trade enumeration.

Explicit seeded Tucson work:
- 156 buyer census
- 29 vendor census
- 10 verified
- 20 specialized vendor
- 327 electrical licenses
- 312 plumbing licenses
- 358 HVAC licenses
- 85 low-voltage + insulation licenses
- 29 septic + well licenses
- 136 concrete + fence + paving licenses
- 81 pool licenses
- 201 landscaping licenses
- 192 roofing licenses
- 183 masonry + drywall + tile licenses
- 80 flooring licenses
- 99 glass + stucco licenses
- 330 painter + carpentry licenses
- general contractor batches: 310 + 300 + 300 + 252

Explicit Tucson seeded evidence total: **3,790**.

Do not reduce Tucson back to a tiny sample. Continue with buyer-side categories/direct-site verification where useful, but the vendor universe has been materially enumerated.

### Scottsdale state

Seeded Scottsdale evidence currently includes:
- 156 buyer records
- 28 vendor records
- 291 licensed vendor records
- 12 verified/direct records

That is **487 seeded evidence rows** from the explicit seeded batches.

Important orphan/cleanup artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-scottsdale-batch-01.json`
- commit `346579cf3ba2e1e9396fa9e3585dbd2395bf7ed3`
- JSON count: **149**
- purpose: metro-scale hospitality, health, professional, property and service-vendor census.

There is no correspondingly named "Seed 149 Scottsdale census records" commit.
Instead, separate 156-buyer and 28-vendor seed commits exist.

NEXT INSTANCE MUST:
1. compare this 149-record JSON against the seeded Scottsdale records;
2. preserve/add unique records;
3. do not double-insert obvious duplicates;
4. do not simply assume the 149 were loaded.

### Phoenix state

Phoenix explicit manual/curated seeded evidence:
- 115 hospitality/retail
- 135 health/professional
- 74 industrial/public
- 272 licensed vendors
- 14 verified/direct

Total: **610** evidence rows.

Phoenix still merits continued expansion because of its size. Do not mistake 610 evidence rows for an exhaustive Phoenix business census.

### Regional/rural state

The rural and regional markets are no longer empty placeholders.

Examples:
- Kingman: 312 explicit rows
- Dewey-Humboldt: 407 explicit rows
- Prescott: 352
- Prescott Valley: 231
- Bullhead City: 217
- Flagstaff: 215
- Camp Verde: 171
- Chino Valley: 160
- Mayer: 132
- Sedona: 131
- Cottonwood: 127
- Seligman: 115
- Ash Fork: 99
- Winslow: 91
- Golden Valley: 84
- Cordes Lakes: 62
- Skull Valley: 58
- Williamson Valley: 28 new explicit rows plus earlier direct/corroborated research.

The next assistant should still research gaps. "Has a batch" does not mean "complete forever."

### Source/evidence philosophy

Keep the layered evidence model:

Discovery evidence:
- chamber/business directories
- municipal/economic-development directories
- local directories
- broad public listings
- tourism directories
- public business lists

Direct/verified evidence:
- official business site
- government site
- school/district site
- official hospital/provider source
- current license/registry data
- credible direct service-area page
- official hotel/chain property page

Do not promote a directory hit to verified merely because it exists.

Preserve multi-source evidence rather than throwing away corroboration.

### Critical safety rule

All outbound switches must remain OFF during census work:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

Manual census seeding:
- must not send;
- must not stage outreach;
- must not auto-approve providers;
- must not mutate payment credentials.

### Production vs repository distinction

Do not claim the 7,879 manual evidence rows are in production yet.

Last proven production checkpoint in the handoff was the 15,185 active-v7 proof after the first bulk directory bootstrap.

The new manual census rows are definitely committed/seeded in the repository, but the latest master is **not currently green**, so production deployment of this entire expanded seed has not been proven.

This distinction is mandatory in user updates.

### Current CI blocker

Latest checked CI:
- run: **40426359834**
- SHA: `2cbf2be65c360ec0d41010d117108da35644ae67`
- result: **failure**
- failing job: `validate`
- failing step: **Boot database and API smoke test**

Important: this is NOT a broad database/API collapse.

The failing run proved:
- PostgreSQL initialized;
- migrations/seeds executed without a SQL fatal error;
- Ops API built and started;
- health returned 200;
- admin/preflight endpoints returned 200;
- service-search calls returned 200;
- provider funnel / launch-cell calls returned 200;
- public opportunities call returned 200;
- local-demand call returned 200;
- local-demand coverage call returned 200;
- `runtime-doctor.sh .env.ci` reported:
  - **Core failures: 0**
  - warnings only.

The shell step then exited 1.

From the API request sequence, the failure occurs **after the local-demand coverage assertions and before the CI ever calls `/api/admin/market-inventory-coverage`**.

Therefore the likely failing boundary is one of the shell inventory assertions immediately before that endpoint:
- expected vs actual `market_inventory_progress` lane count;
- original assistant bootstrap source count;
- original bootstrap distinct-market count;
- Williamson bootstrap source count;
- distinct inventory-market count.

Do not waste time re-debugging Postgres startup or API health.

Correct next CI action:
1. instrument/echo each of those inventory assertion values;
2. identify the first mismatching test;
3. decide whether the application state is wrong or the old CI expectation is stale after the census expansion;
4. fix the minimum correct thing;
5. require green CI before deployment.

Do NOT weaken a valid safety or integrity assertion merely to get green.

### Continuous maintenance architecture state

The repo also contains the continuous maintenance layer:
- open-ended inventory cycles;
- no "target reached = permanently stop";
- closure audit and closure metadata;
- directory pagination/category traversal;
- licensed-trade importer;
- Docker-managed `research_refresher`;
- database-backed refresh cadence;
- VPS GitOps relay with allowlisted actions.

But Brett's priority remains:
**initial census first, VPS maintenance second.**

Do not get distracted into rebuilding the maintenance architecture unless it blocks safe census deployment.

### Existing production bootstrap context

Earlier production proof:
- initial all-market WhereOrg import inserted/updated 9,519 classified discovery candidates;
- production proof then showed 15,185 active v7 candidates.

The new manual 7,879-row expansion should be thought of as:
- targeted census enrichment;
- better rural/regional coverage;
- much deeper licensed-trade coverage;
- more buyer/facility categories;
- more direct verification.

It is additive to the earlier production discovery universe, but overlap must be deduplicated at entity/business level.

### Business-level dedupe/audit work already exists

During the census build, repo commits added business-level inventory rollup/audit surfaces.

Use them after the seed is green/deployed to answer:
- how many distinct businesses, not evidence rows?
- where do multiple categories point to the same business?
- where do directory + official-site evidence corroborate the same entity?
- which names/phones/addresses are likely duplicates?
- which records are closed?
- which direct evidence should supersede weaker discovery evidence for ranking while preserving provenance?

Do not delete evidence just to make the raw row number smaller.

### Immediate next-conversation checklist

The next assistant should start here, in this order:

1. **Read this section first.**
2. Confirm current master has not advanced beyond `2cbf2be...`.
3. Check the newest CI run; if still failing at the same smoke-test boundary, instrument the inventory assertions and fix that regression.
4. Audit the orphan 149-record Scottsdale JSON against the seeded Scottsdale rows and seed unique records only.
5. Audit for any other JSON census artifacts that were committed but never appended to `seed-assistant-research-bootstrap.sql`.
6. Continue assistant-led manual census expansion, especially:
   - Phoenix buyer/vendor categories still underrepresented for its size;
   - Scottsdale buyer/vendor/direct verification expansion;
   - Tucson buyer-side/institutional/commercial-facility expansion after the huge licensed-vendor build;
   - Williamson Valley facilities/service-territory evidence;
   - any obvious category gaps discovered in rural/regional markets.
7. Keep direct/official verification passes running behind broad census passes.
8. Do **not** declare the initial census "finished" merely because all 21 markets have rows.
9. Once CI is green, deploy the exact green master through the safe relay with all outbound switches OFF.
10. Run production migrations/seeds and capture fresh production proof.
11. Use business-level rollup to report actual distinct-business counts by:
    - market;
    - buyer/vendor side;
    - category;
    - verification tier;
    - active/closed status.
12. Only after the manual initial census is materially exhausted should the VPS refresher become the primary ongoing discovery mechanism.

### What to tell Brett in the next chat

The truthful short version:

- The assistant-led census has expanded across all 21 markets.
- Explicit new manual/curated seed commits account for at least **7,879 evidence rows**, with Tucson alone at about **3,790**.
- These are not all distinct businesses because multi-category/license/direct-evidence overlap is intentional.
- The repository work is intact.
- The newest master is not yet deployable because CI is failing in a narrow inventory smoke-test assertion after the database/API have already proven healthy.
- Fix that assertion regression first, then continue census expansion and deploy/prove actual distinct production counts.
- The VPS remains the future maintenance layer, not the substitute for the assistant-built initial census.


---

# 59. CENSUS RECOVERY + PHOENIX EXHAUSTIVE EXPANSION — 2026-10-26 17:59 ARIZONA

## Brett's governing instruction remains unchanged

**BUILD THE INITIAL BUSINESS DATABASE THROUGH ASSISTANT-LED RESEARCH FIRST. THE VPS IS THE MAINTENANCE LAYER AFTERWARD.**

Do not revert to "the VPS will discover the rest later" as a reason to stop the assistant-led initial census.

Correct sequence remains:

**Assistant-built census -> direct/official/license evidence -> entity dedupe/audit -> green CI -> exact tested deploy -> production proof -> continued assistant gap-filling -> VPS maintenance/delta discovery.**

## Major integrity issue found and repaired

The prior handoff said the large manual census was present in the repository but CI was failing in a narrow inventory assertion.

Investigation found a more important underlying integrity problem:

- \`portfolio/automation/seed-assistant-research-bootstrap.sql\` had been repeatedly overwritten by stale snapshots during the rapid census build.
- The newest aggregate SQL file contained only the four Tucson general-contractor batches (1,162 rows), even though the individual JSON research artifacts were still intact.
- The research itself was **not lost**.
- The committed JSON artifacts under \`portfolio/data/assistant-research-bootstrap-*.json\` were the durable source of truth.

This was repaired by adding:

- \`portfolio/automation/build-assistant-research-seed.py\`
- deterministic artifact-to-SQL census generation;
- strict identity dedupe on \`side + market + category_key + source_url + business_name\`;
- preservation of artifact/source provenance in \`evidence\`;
- direct evidence / registry-derived evidence classification;
- production migration now builds the census seed from the JSON artifacts every deploy instead of trusting the stale giant SQL snapshot.

Important commits:
- \`e70ef8dd371184de178f32e102f13cf0ce910bed\` — initial deterministic census builder
- \`e697fbb1717c92d818c37bde4d92f8055f5a8ff8\` — coverage summaries by market/side
- \`c24409814977e435b11d3173113b6f1a47245a3e\` — migrations seed from committed artifacts
- \`7b5980953080e41b127579ecde7f46f9abd6e9cd\` — CI proves census artifacts and instruments inventory assertions

## CI regression is fixed

Green BMC Portfolio CI:
- run: **40427994871**
- tested SHA: \`7b5980953080e41b127579ecde7f46f9abd6e9cd\`
- conclusion: **success**

That run proved:
- 74 census JSON artifacts;
- 8,249 raw artifact evidence rows;
- 8,018 strict unique generated seed rows;
- all 21 markets represented;
- 2,903 buyer raw rows;
- 5,346 vendor raw rows;
- 1,260 / 1,260 expected inventory lanes;
- 8,018 / 8,018 artifact candidates loaded in smoke-test Postgres;
- 21 / 21 artifact markets;
- 21 / 21 progress markets;
- runtime doctor: **Core failures: 0**.

The old silent CI assertions were replaced with explicit printed values and artifact-derived expectations.

## Scottsdale orphan artifact audit is resolved

The previously suspicious file:
\`portfolio/data/assistant-research-bootstrap-2026-10-26-scottsdale-batch-01.json\`

contains 149 rows:
- 121 buyer
- 28 vendor

Compared with the later Scottsdale files:
- 19 rows were strict identity duplicates;
- 60 rows overlapped at normalized business-entity level;
- **89 rows represented business entities not present in the later Scottsdale batches**.

Because the deterministic seed builder now consumes **all** committed assistant census artifacts and collapses strict duplicates, this artifact is no longer orphaned or at risk of being ignored.

Do not manually re-add it to the old aggregate SQL file.

## Production deployment of repaired census is proven

Exact tested production deployment request:
- \`deploy-census-artifact-repair-20261027T0043Z\`

Production result:
- status: **success**
- exact deployed SHA: \`7b5980953080e41b127579ecde7f46f9abd6e9cd\`
- CI proof: run **40427994871**
- production host: \`vps-5675821a\`
- all outbound switches remained OFF:
  - \`OUTREACH_ENABLED=false\`
  - \`BUYER_OUTREACH_ENABLED=false\`
  - \`GROWTH_OUTREACH_ENABLED=false\`
- migration generated and loaded 8,018 strict artifact seed rows;
- production runtime doctor finished:
  - **Core failures: 0**
  - **warnings: 0**

## Fresh production proof after repaired census

Proof request:
- \`proof-census-artifact-repair-20261027T0046Z\`

Proof timestamp:
- 2026-10-27T00:47:49Z

Production inventory:
- **24,176 active v7 evidence rows**
- 0 closed v7 rows at that proof
- 468 official/direct candidate rows
- evidence tiers included:
  - direct/direct_evidence: 466
  - registry_derived/credential_corroborated: 4,583
  - directory/discovery: 19,012
  - other smaller corroborated/government/discovery tiers
- candidate phone-ready active v7: 17,388
- candidate email-ready active v7: 81
- outreach sent: **0**
- outreach replied: **0**

This supersedes the old 15,185 active-v7 production checkpoint.

Production is healthy, but outbound launch is intentionally still blocked because no verified provider is active and the continuous inventory/local-demand lane scans are not yet complete. That is separate from census database health.

## Production market snapshot before the newest Phoenix expansion

At the 00:47 production proof, Phoenix had:
- buyer evidence rows: **1,403**
- normalized buyer businesses: **1,306**
- vendor evidence rows: **953**
- normalized vendor businesses: **912**

So Phoenix production at that checkpoint was:
- **2,356 active evidence rows**
- **2,218 normalized market/side business entries**

This snapshot does **not** yet include the newest 98-location Phoenix grocery/pharmacy batch or the exhaustive 6,568-row Phoenix licensed-trade export described below.

## Phoenix buyer expansion added after that production proof

Commit:
- \`6e0edbbd4167ad354536fe0c38a9869c113c3671\`

Artifact:
- \`portfolio/data/assistant-research-bootstrap-2026-10-26-phoenix-grocery-pharmacy-06.json\`

Adds **98 direct/official Phoenix buyer facilities**:
- 45 pharmacies
- 53 grocery stores

Sources are official chain/location pages for:
- CVS
- Walgreens
- Fry's Food Stores
- Safeway
- Sprouts Farmers Market

The prior explicit Phoenix artifact set had zero rows in the dedicated grocery and pharmacy categories, so this filled a real category gap rather than padding an already-dense category.

CI for that commit:
- run **40428633775**
- conclusion: **success**

## Phoenix licensed-vendor census is now exhaustive across the published trade pages

The old Phoenix explicit vendor sample was only about 280 rows.

A new assistant-controlled exhaustive exporter was built:
- \`portfolio/automation/export-homversa-census-artifacts.py\`
- workflow: \`.github/workflows/assistant-census-artifact-export.yml\`

The exporter:
- discovers every published Phoenix licensed trade page;
- reads the published source count;
- parses ranked + full A-to-Z license listings;
- preserves company name, ROC license number, trade, verification date and source page;
- **refuses to commit a trade if parsed count != published count**.

Several source-layout edge cases were found during development.
The completeness gate stopped bad parses at 373/374 and 375/374 plumbing instead of accepting them.
The parser was corrected rather than weakening the gate.

Successful exhaustive export:
- workflow run: **40429651742**
- result: **success**
- artifact commit: \`fb5090a1d8aa2b70457ad6ea57301c6dd5b4f488\`
- 22 new Phoenix licensed-trade JSON files
- **6,568 raw licensed evidence rows**
- every trade matched its published source count exactly

Trade counts:
- plumbers: 374
- roofers: 240
- electricians: 522
- HVAC: 639
- insulation contractors: 52
- low-voltage contractors: 183
- septic contractors: 13
- well-drilling contractors: 6
- general contractors: 1,954
- concrete contractors: 146
- painters: 384
- drywall contractors: 203
- flooring contractors: 286
- masonry contractors: 65
- tile contractors: 184
- glass contractors: 111
- carpentry contractors: 403
- stucco contractors: 142
- pool contractors: 242
- landscaping: 341
- fence contractors: 48
- paving contractors: 30

These are evidence rows, not necessarily 6,568 distinct companies.
A company can hold multiple classifications and can appear in multiple service categories.
Use the business rollup after deployment for distinct-company reporting.

## Current artifact census scale before this handoff commit

Before the Phoenix additions:
- 74 artifact files
- 8,249 raw artifact rows
- 8,018 strict unique seed rows

Added since:
- 98 Phoenix grocery/pharmacy direct rows
- 6,568 Phoenix licensed-trade rows across 22 files

Therefore the repository now has at least:
- **97 assistant census JSON artifacts**
- **14,915 raw artifact evidence rows before strict dedupe**

Do **not** assume 14,915 strict unique seed rows.
The old Phoenix vendor sample intentionally overlaps the new exhaustive licensed pages.
The deterministic builder will compute the exact strict unique count in the next normal CI run.

## Important CI behavior after the artifact exporter

The \`fb5090a1...\` artifact commit was pushed by GitHub Actions using its workflow token.

GitHub intentionally does not cascade-trigger another workflow from that token, so the BMC Portfolio CI did not automatically run on \`fb5090a1...\`.

A normal human/assistant GitHub commit after that artifact commit is required to trigger BMC Portfolio CI over the complete 97-artifact tree.

This handoff update is intentionally serving that purpose.

Before any next production deploy:
1. wait for the new BMC Portfolio CI run on the post-handoff master;
2. inspect the artifact census summary;
3. confirm all 21 markets;
4. confirm the exact strict unique seed count equals smoke-test loaded artifact candidates;
5. require green CI;
6. deploy the **exact green master** through the safe VPS relay;
7. keep all outbound switches OFF;
8. take a fresh production proof;
9. report Phoenix and statewide evidence rows vs normalized businesses.

## Current master immediately before this handoff update

\`fb5090a1d8aa2b70457ad6ea57301c6dd5b4f488\`

Message:
**Seed full Phoenix licensed trade census**

## What NOT to do next

Do not:
- rebuild the crawler/refresher;
- go back to the stale giant SQL file as census source of truth;
- delete overlapping evidence merely to make row counts smaller;
- declare 6,568 Phoenix trade rows to be 6,568 distinct companies;
- deploy a non-green or non-exact SHA;
- turn on outreach;
- restart Phoenix vendor discovery from tiny hand-picked samples.

## Next work, in order

1. Let the normal BMC CI triggered by this handoff commit validate the complete 97-artifact census.
2. Read the new builder summary and record:
   - raw artifact rows;
   - strict unique seed rows;
   - buyer/vendor rows;
   - per-market raw and strict-unique counts.
3. If green, deploy exact master and run production proof.
4. Get the new Phoenix business-level rollup after the 98 buyer + 6,568 licensed trade expansion.
5. Continue **assistant-led** census gap filling, especially:
   - Phoenix buyer facilities beyond grocery/pharmacy;
   - Phoenix direct-site verification/contact enrichment;
   - Scottsdale continued buyer/direct evidence expansion;
   - Tucson buyer-side facilities/institutions/healthcare/hospitality/commercial properties;
   - Williamson Valley direct facilities/service-territory evidence;
   - obvious weak rural categories.
6. Preserve the separation:
   - assistant = initial universe builder;
   - VPS = continuous refresh/new-business/closure maintenance after initial build.

The most important continuity fact is now:

**The census research is safe in auditable JSON artifacts, the deterministic builder prevents stale-SQL data loss, repaired production is healthy at 24,176 active v7 evidence rows, and Phoenix has just received a new 98-row direct buyer batch plus an exhaustive 6,568-row licensed-trade artifact expansion awaiting the next green exact-master deploy.**


---

# 60. GO-LIVE / VPS-LIFTING CHECKPOINT — 2026-10-26 18:05 ARIZONA

This section is the newest continuation checkpoint and should be read after section 59.

## Brett's concern / priority

Brett explicitly said he has limited confidence in the VPS as the builder of the initial database and wants the assistant doing the heavy lifting to create a strong base first.

That remains the correct operating rule.

He also wants this business to become the low-involvement, high-margin operating model inspired by **Chris Koerner**, specifically:
- Chris Koerner
- "I Let AI Make and Save Me Money for 6 Weeks (Here's What Worked)"

Do not lose that strategic reference.

The intended lesson is not "passive income with no validation."
It is to compress repetitive labor with agents/automation:
- research;
- vendor discovery;
- buyer/prospect discovery;
- quote gathering;
- follow-up;
- routing;
- reminders;
- comparison/organization;
while preserving human approval for consequential commercial actions.

## Exact current assistant artifact census

BMC Portfolio CI run:
- **40429808037**
- SHA: \`f05ff6fcf2546de24edda14d58f367c61bb38092\`
- result: **SUCCESS**

Artifact builder summary:
- **97 assistant census JSON artifacts**
- **14,915 raw evidence rows**
- **481 strict duplicate rows collapsed**
- **14,434 strict unique generated seed rows**
- all **21 markets**
- raw buyer rows: **3,001**
- raw vendor rows: **11,914**
- strict unique buyer rows: **2,977**
- strict unique vendor rows: **11,457**

Phoenix artifact census:
- raw rows: **7,276**
- strict unique rows: **7,026**

Tucson artifact census:
- raw rows: **3,990**
- strict unique rows: **3,790**

CI smoke database proof:
- expected artifact candidates: 14,434
- actual artifact candidates: 14,434
- expected markets: 21
- actual markets: 21
- expected inventory lanes: 1,260
- actual inventory lanes: 1,260
- runtime doctor core failures: 0

## Latest production deploy is proven

Deploy request:
- \`deploy-phoenix-full-census-20261027T0101Z\`

Result:
- **SUCCESS**
- exact deployed SHA: \`f05ff6fcf2546de24edda14d58f367c61bb38092\`
- CI proof: run **40429808037**
- generated census rows loaded: **14,434**
- production runtime doctor:
  - core failures: **0**
  - warnings: **0**

Outbound remained OFF:
- \`OUTREACH_ENABLED=false\`
- \`BUYER_OUTREACH_ENABLED=false\`
- \`GROWTH_OUTREACH_ENABLED=false\`

## Latest production business census proof

Proof request:
- \`proof-phoenix-full-census-20261027T0102Z\`

Result:
- **SUCCESS**
- proof timestamp: 2026-10-27T01:02:49Z
- production SHA: \`f05ff6fcf2546de24edda14d58f367c61bb38092\`

Current active v7 production evidence:
- **30,518 active evidence rows**
- **0 closed v7 rows**
- **566 official/direct rows**
- **11,077 registry-derived / credential-corroborated rows**
- **18,762 directory/discovery rows**
- active phone-ready candidate rows: **17,485**
- active email-ready candidate rows: **81**

This supersedes:
- old 15,185 production checkpoint;
- intermediate 24,176 checkpoint.

### Phoenix production after exhaustive expansion

Phoenix buyer:
- evidence rows: **1,501**
- normalized businesses: **1,402**
- direct rows: **104**

Phoenix vendor:
- evidence rows: **7,197**
- normalized businesses: **6,537**
- direct rows: **8**

Combined Phoenix market/side production:
- evidence rows: **8,698**
- normalized business entries by side: **7,939**

Important:
- buyer/vendor normalization is within market+side;
- do not claim 7,939 globally unique legal entities without a cross-side/entity audit.

The new 98 direct grocery/pharmacy facilities are now live:
- grocery category production rows rose to 165 / 143 normalized businesses statewide;
- pharmacy category production rows rose to 97 / 80 normalized businesses statewide.

## How much lifting the VPS was doing BEFORE this checkpoint

At the proof immediately before re-enabling the internal scheduler:
- deep inventory lanes: 1,260
- untouched: 1,240
- in progress: 20
- completed full scan cycles: 0
- local-demand lanes: 315
- touched: 30
- untouched: 285

Therefore Brett's lack of confidence in the VPS as the *initial census builder* was justified.

The VPS was reliably doing:
- PostgreSQL / production state;
- Ops API;
- Cloudflare ingress;
- SearXNG/private search;
- n8n hosting;
- safe exact-SHA deploys;
- migrations;
- runtime doctor/proof;
- bulk research refresher;
- GitOps relay;
but it had not yet done enough lane coverage to be trusted as the initial business universe.

## Scheduler is NOW running safely

After the 30,518-row production proof, the internal maintenance scheduler safety was rechecked.

\`scheduler.sh\` runs:
- expired-offer handling;
- internal agent cycle;
- legacy research processing;
- market inventory cycles;
- followups;
- reply processing;
- public procurement checks;
- local-demand checks;
- closure audits;
- source-native research;
- outreach endpoints.

Crucial safety property:
the outreach endpoints return zero sends while their global switches are OFF.
CI explicitly asserts these guards.

Scheduler start request:
- \`start-maintenance-scheduler-20261027T0103Z\`

Result:
- **SUCCESS**
- all three outbound switches were confirmed false by the relay safety gate.

Scheduler status request:
- \`zz-scheduler-status-20261027T0103Z\`

Result:
- **SUCCESS**
- \`bmc-scheduler-1\` is UP.

This is the intended transition:
- assistant continues building/enriching the initial universe;
- VPS is now allowed to maintain, rescan, detect closures/new deltas, process internal cycles, and work the maintenance queues;
- VPS still must not be used as an excuse to stop assistant-led census expansion.

## Current launch/readiness state

Production technical readiness is strong:
- outreach infrastructure: READY
- payment infrastructure: READY
- intelligent search: READY
- live site/intake infrastructure exists
- SMTP configured
- IMAP reply/opt-out monitoring configured
- business postal address configured
- Stripe webhook configured
- 4 active products with payment links
- provider activation page live
- public webhook ingress constrained/reachable

However:
- verified pilot/active providers: **0**
- buyer service outreach must remain OFF
- bulk outbound remains OFF
- public local-demand and deep inventory maintenance scans have not yet completed first full cycles.

The software's runtime intake gate says:
- activate at least one real verified pilot provider.

Brett's safer commercial standard should be stronger than the bare minimum:
- recruit/verify **3–5 real providers** in the first Prescott/Prescott Valley launch cell so a decline/unavailable provider does not break the customer promise.

Existing controlled provider pilot cohort:
- **12 provider records** in \`pilot1\`

Existing controlled buyer pilot cohort:
- **7 buyer records** in \`pilot1\`

All outreach remains unsent:
- outreach total: 121
- sent: 0
- replied: 0
- queued unsent: 121

Recommended first provider candidate remains:
- \`v_prescott_americancrown\` — American Crown Commercial Cleaning
- public email: donna@americancrowncc.com
- broad Yavapai service territory
- commercial cleaning / windows / pressure washing / hood-exhaust / venue cleaning evidence

Fallback:
- \`v_prescott_windowwranglers\` — Window Wranglers

Other First Wave candidates are already seeded.

Do not contact them automatically without Brett approving the external outreach action.

## Go-live interpretation

Do NOT wait for every Arizona business to be discovered before testing the business.

Distinguish three states:

### 1. Technical live
This is effectively achieved:
- site;
- intake;
- API;
- payments;
- email/reply infrastructure;
- provider portal/activation;
- routing engine;
- production database;
- safe deploy/backup foundations.

### 2. Controlled commercial soft launch
This is the next meaningful milestone.

Before buyer service outreach:
1. get 3–5 real provider activations in the first launch cell;
2. manually approve credentials/service/territory/capacity as applicable;
3. prove one real service request can:
   - enter;
   - classify;
   - route;
   - be accepted/passed;
   - reroute if needed;
   - release contacts correctly;
   - produce a trackable outcome;
4. keep acquisition wave small;
5. then use the 7-buyer pilot cohort.

The software's formal minimum is one provider; the operational recommendation is 3–5 for redundancy.

### 3. Scaled low-involvement business
This only becomes credible after real conversion/economic data exist.

The intended automation ladder remains:
- $0–$1K revenue: AI assists, human reviews consequential output;
- $1K–$5K: n8n operates routine workflow/follow-up/delivery;
- $5K–$15K: exception-based operations;
- $15K+: portfolio operator model.

Do not promise Brett passive profit before the pilot proves:
- provider acceptance;
- buyer response;
- close rate;
- willingness to pay;
- lead/territory/research-product economics.

But the architecture now supports testing that model without another major rebuild.

## Revenue model continuity

The approximate **$8,333/month** figure is the monthly run rate for a six-figure annual business, not one magic bulk-lead package.

Original revenue engines remain:
- $299 Competitor Intelligence
- $499 Local Growth Pack
- $699 Market Expansion Pack
- $749 Premium Growth Pack
- accepted qualified lead fees (examples modeled around $75–$100)
- possible territory arrangements (example modeling around $1,000/month)
- $49–$149-ish concierge/continuity concepts after value is proven
- quote/procurement sourcing fees
- recurring prospect refresh ($149–$249 concept after proof)
- permitted referral/marketing economics

Original first-$5K examples remain documented in \`BUSINESS_MODEL.md\`.

Because Brett has already invested heavily across ventures, avoid recommending new paid software/ads/large spend before the first controlled provider/buyer/revenue proof. Use the existing stack and database first.

## Immediate next internal work

Continue without waiting for VPS discovery to build the base:

1. Keep assistant-led census expansion going, now prioritizing buyer/institutional/direct evidence rather than more Phoenix licensed-vendor enumeration.
2. Tucson buyer side is an obvious target.
   - City of Tucson publishes a current 10/01/2026 quarterly cumulative active business-license CSV (~4 MB) with DBA, NAICS, address, city/state/ZIP and phone.
   - Arizona Department of Health Services public facility search currently exposes thousands of Tucson licensed facilities.
   - These are promising first-party buyer census sources.
3. Continue direct verification/contact enrichment for high-value provider candidates.
4. Let the now-running VPS scheduler work maintenance cycles in parallel.
5. Measure whether inventory/local-demand touched-lane counts begin increasing.
6. Do not enable bulk outbound.
7. The next external/commercial action requiring Brett approval is controlled provider recruitment / invitation.

## Handoff discipline

Brett specifically asked that \`portfolio/automation/HANDOFF.md\` be updated near the end of substantial work responses so a new conversation can resume if the thread fills up.

Continue doing that.

## Current production vs repository distinction

Production is exactly proven at:
- \`f05ff6fcf2546de24edda14d58f367c61bb38092\`

This section itself will create a newer documentation-only master commit after the production proof.

Do not imply production has that later docs-only SHA unless it is deployed.
The census/data/code content being described above **is** already production-proven at \`f05ff6fc...\`.


---

# 61. ASSISTANT-LED CENSUS EXPANSION HANDOFF — 2026-10-26 19:20 ARIZONA

This is the newest authoritative continuation section. Read it after sections 59–60.

## Brett's standing instruction

Do **not** hand the initial business-universe build off to the VPS.

The assistant is still responsible for doing the heavy research/building work needed to create a strong initial census across:
- all 21 markets;
- buyer/business/facility categories;
- provider/vendor/service categories;
- rural and metro markets;
- official/direct evidence where available;
- open-ended coverage rather than stopping when an arbitrary target is met.

The VPS is the maintenance layer:
- rescan;
- find newly appearing businesses;
- closure detection;
- refresh;
- local-demand monitoring;
- public-opportunity monitoring;
- queue processing.

It must not be used as an excuse to stop assistant-led census expansion.

All external outreach remains OFF unless Brett explicitly approves it.

## Current repository census: exact green checkpoint

Current master:
- `a425e3d1723acaff90fd8d85e1faf287587f7d69`
- commit message: **Add direct rural service-territory provider census**

Green BMC Portfolio CI:
- run **40436685691**
- result: **SUCCESS**
- exact SHA: `a425e3d1723acaff90fd8d85e1faf287587f7d69`

Deterministic artifact builder summary on that exact SHA:
- **286 assistant census JSON artifacts**
- **52,167 raw evidence rows**
- **823 strict duplicate rows collapsed**
- **51,344 strict unique seed rows**
- **21/21 markets**
- raw buyer rows: **35,616**
- raw vendor rows: **16,551**
- strict unique buyer rows: **35,592**
- strict unique vendor rows: **15,752**

CI smoke proof:
- expected artifact candidates: **51,344**
- actual artifact candidates: **51,344**
- expected artifact markets: **21**
- actual artifact markets: **21**
- inventory lanes: **1,260 / 1,260**
- progress markets: **21**
- core runtime failures: **0**

CI runtime-doctor warnings are expected in the disposable CI stack because external services/secrets are intentionally absent there. Do not confuse those CI-only warnings with production health.

## Exact current per-market artifact counts

Raw / strict-unique artifact rows:

- Ash Fork: **114 / 113**
- Bullhead City: **480 / 480**
- Camp Verde: **288 / 287**
- Chino Valley: **278 / 277**
- Cordes Lakes: **77 / 77**
- Cottonwood: **383 / 383**
- Dewey-Humboldt: **428 / 427**
- Flagstaff: **893 / 893**
- Golden Valley: **122 / 122**
- Kingman: **753 / 753**
- Mayer: **166 / 165**
- Phoenix: **9,808 / 9,558**
- Prescott: **1,023 / 926**
- Prescott Valley: **818 / 818**
- Scottsdale: **3,242 / 2,974**
- Sedona: **262 / 262**
- Seligman: **125 / 124**
- Skull Valley: **73 / 71**
- Tucson: **32,667 / 32,467**
- Williamson Valley: **42 / 42**
- Winslow: **125 / 125**

These are evidence/seed rows under the strict artifact identity key, not globally deduplicated legal entities.

## Critical production distinction

The **51,344-row repository census is NOT yet deployed to production**.

Latest production proof remains the older exact deployment:
- production SHA: `f05ff6fcf2546de24edda14d58f367c61bb38092`
- active production v7 evidence rows: **30,518**
- all three outbound switches OFF.

Do not report 51,344 as live production data until the exact green census SHA is deployed and a new production proof is taken.

Brett's priority is still census-building, so it is acceptable to keep researching before the next deployment checkpoint.

## Major work completed after section 60

### 1. Tucson buyer universe was expanded from a shallow sample to official first-party registries

New exporter:
- `portfolio/automation/export-tucson-buyer-census.py`
- workflow: `.github/workflows/assistant-tucson-buyer-census.yml`

Sources:
- City of Tucson current active business-license GIS layer;
- Arizona Department of Health Services licensed-facility ArcGIS layer.

Successful Tucson export produced:
- **27,079** City of Tucson current business-license records after Tucson filtering;
- **1,598** Tucson ADHS licensed facilities;
- **28,677 new official-government evidence rows** in that pass.

City category examples from the successful export:
- auto/fleet: 1,372
- churches/nonprofits: 42
- entertainment venues: 608
- general business: 9,446
- grocery: 143
- hotels/motels: 146
- insurance/professional: 2,133
- medical centers: 1,217
- pharmacy: 79
- property management: 3,494
- public facilities: 20
- restaurants: 1,835
- retail: 3,900
- schools/education: 382
- therapy/behavioral: 303
- warehouses/industrial: 1,959

ADHS Tucson categories:
- medical centers/care facilities: 715
- schools/childcare: 417
- therapy/behavioral: 448
- general business: 18

The current Tucson artifact total is now:
- **32,667 raw**
- **32,467 strict unique**

### 2. Government registry evidence was separated from direct business-site evidence

This semantic correction is important.

Current builder behavior:
- `official=true` -> `source_tier=direct`, `verification_status=direct_evidence`, `official_site=true`
- `official_registry=true` -> `source_tier=government_registry`, `verification_status=government_record`, `official_site=false`
- ROC/credential evidence without direct site -> `registry_derived / credential_corroborated`
- ordinary discovery -> `directory / discovery`

Government datasets such as:
- Tucson City business licenses;
- ADHS licensed facilities;
- Scottsdale City weekly license reports;
- future ADE/AZROC government exports

must **not** be mislabeled as direct company websites.

Relevant semantic commit:
- `d22a0a3be69517187dddbf0af5baa623b6bb0909`

The affected exporters/artifacts were regenerated after this fix.

### 3. ADHS official facility census expanded across the rest of the footprint

Exporter:
- `portfolio/automation/export-adhs-market-census.py`
- workflow: `.github/workflows/assistant-adhs-market-census.yml`

Successful ADHS additions outside Tucson:
- **3,839 official government facility rows**

Major market counts:
- Phoenix: 2,532
- Scottsdale: 571
- Flagstaff: 174
- Prescott: 131
- Prescott Valley: 112
- Kingman: 84
- Bullhead City: 79
- Cottonwood: 75
- Winslow: 19
- Sedona: 18
- Chino Valley: 14
- Dewey-Humboldt: 12
- Camp Verde: 11
- Golden Valley: 4
- Ash Fork: 1
- Mayer: 1
- Skull Valley: 1

No ADHS facility rows were found for some tiny markets; do not treat that as complete business coverage.

### 4. Scottsdale vendor census is now much deeper

Exhaustive completeness-checked Homversa/ROC-backed trade export:
- **1,964 raw trade evidence rows**
- **19 trade pages**
- every committed trade matched the published count exactly.

Major Scottsdale trade counts:
- general contractors: 1,035
- electricians: 138
- pool contractors: 102
- HVAC: 94
- landscaping: 91
- plumbers: 90
- low voltage: 86
- painters: 66
- carpentry: 63
- roofers: 45
- flooring: 34
- tile: 32
- glass: 27
- concrete: 15
- stucco: 14
- drywall: 11
- masonry: 9
- fence: 8
- insulation: 4

### 5. Scottsdale recent new-business license layer is now captured

Exporter:
- `portfolio/automation/export-scottsdale-new-business-licenses.py`
- workflow: `.github/workflows/assistant-scottsdale-new-business-licenses.yml`

The City/library source is a **rolling recent archive**, not a full 2026 archive.

Currently retained reports parsed:
- 2026-08-30
- 2026-09-06
- 2026-09-13
- 2026-09-20
- 2026-09-27
- 2026-10-04
- 2026-10-11
- 2026-10-18

Result:
- **99 unique recent City-issued license rows**

Do not describe this as a full-year Scottsdale license census.

### 6. Remaining-market licensed-trade sweep substantially expanded the rural/secondary markets

The exhaustive trade exporter was run across the non-Phoenix/non-Scottsdale/non-Tucson markets.

First pass successfully completed full market exports for:
- Ash Fork
- Camp Verde
- Dewey-Humboldt
- Flagstaff
- Golden Valley
- Mayer
- Prescott
- Prescott Valley
- Sedona
- Seligman
- Winslow

Markets blocked by one or more source-count inconsistencies were **not** partially copied during that first pass.

A second recovery workflow was then built:
- `.github/workflows/assistant-gap-market-trade-recovery.yml`

It uses `--continue-on-trade-error` so an individually complete trade can be committed while a mismatched trade remains excluded.

Recovered complete trade artifacts:
- Bullhead City: **15**
- Chino Valley: **14**
- Cottonwood: **14**
- Kingman: **17**

Known source/count mismatches intentionally left uncommitted include examples such as:
- Bullhead City masonry: source claims 7, parser sees 8 unique company/license pairs;
- Chino Valley general contractors: source claims 77, parser sees 78;
- Cottonwood painters: source claims 14, parser sees 15;
- Kingman tile: source claims 4, parser sees 5.

Do not weaken the completeness gate simply to include those rows.
Resolve the source discrepancy or use a better source.

After gap recovery, artifact census reached:
- 285 artifacts
- 52,140 raw rows
- 51,317 strict unique rows

### 7. Direct rural service-territory evidence was added for the three weakest service markets

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-direct-service-territory-13.json`

Adds:
- **27 direct company-site vendor/service-territory evidence rows**

Markets:
- Cordes Lakes
- Skull Valley
- Williamson Valley

Examples of direct providers/service areas include:
- R.E.D. Plumbing
- Nichols Plumbing, Electrical & HVAC
- Assurance Electrical Services
- PumpWorks
- S&M Electric
- Pur Solar and Electrical
- R Bar J Contracting
- Liberty Plumbing
- Goettl's High Desert Mechanical
- Mountain Air
- Thompson's Steamway
- Prescott Spray Foam
- Cordes Lakes Hardware

This is true `official=true` direct business-site evidence and therefore correctly counts as direct evidence.

This final addition moved the census from:
- **51,317** strict unique
to
- **51,344** strict unique.

## Failed/rejected source work that must not be mistaken for completed census

### Arizona Department of Education school spreadsheet

Exporter/workflow exist:
- `portfolio/automation/export-ade-school-census.py`
- `.github/workflows/assistant-ade-school-census.yml`

The official ADE FY2027 spreadsheet URL returns:
- **HTTP 403 Forbidden** from GitHub Actions.

Latest retry still failed.

No ADE school artifact is currently committed from this exporter.

Do not claim statewide ADE school coverage from it.

A future thread can:
- find a public alternate ADE endpoint/API;
- use an official district/school directory source;
- or manually/directly enumerate school sites from official district sources.

### Arizona ROC direct active-contractor exporter

Exporter/workflow were added:
- `portfolio/automation/export-azroc-active-census.py`
- corresponding workflow

The official ROC source currently returns:
- **HTTP 403 Forbidden** from GitHub Actions.

No artifact from this direct AZROC exporter landed.

The existing Homversa rows retain ROC numbers and are still registry-derived secondary evidence, not first-party ROC API evidence.

### Phoenix liquor-license location layer

Exporter/workflow exist:
- `portfolio/automation/export-phoenix-liquor-buyers.py`
- corresponding workflow

The Phoenix ArcGIS layer accepts some metadata/count calls but rejects the full feature query with:
- ArcGIS **400 Failed to execute query**

No Phoenix liquor artifact has landed.

Do not count it.

### Scottsdale STR false lead was rejected

A map layer that initially looked like a Scottsdale short-term-rental source was discovered to actually describe **Lyons, Colorado** data last edited years earlier.

It was rejected and never added to the census.

This is a useful quality-control precedent:
- reject geographically wrong datasets even when search/result naming looks promising.

### Arizona Corporation Commission bulk database

The ACC does not provide a free convenient bulk active-entity export for this use.
Paid extraction options were identified, including substantial fees.

Do not spend Brett's money on that database without explicit approval.
Continue using free official/local/direct sources first.

## Workflow race protection

Multiple assistant census workflows can push artifact commits close together.

A real non-fast-forward race occurred during this thread:
- an export built valid artifacts;
- another commit reached master first;
- the artifact push was rejected.

The active artifact workflows were updated to use:
- commit;
- `git pull --rebase origin master`;
- push.

Continue using race-safe pushes for future assistant-controlled exporters.

Do not count workflow-generated artifacts until they are confirmed on current master.

## What the next conversation should do

The next thread should **continue research immediately**. Do not restart the architecture discussion.

Recommended next order:

1. Treat `a425e3d...` / CI run 40436685691 as the clean repository baseline.
2. Keep the assistant as the initial-universe builder.
3. Prioritize the remaining thin markets:
   - Williamson Valley: 42 strict rows
   - Skull Valley: 71
   - Cordes Lakes: 77
   - Ash Fork: 113
   - Golden Valley: 122
   - Seligman: 124
   - Winslow: 125
   - Mayer: 165
4. Continue direct service-territory/provider research for those rural markets, especially categories with little or no direct evidence.
5. Continue buyer/facility census work outside Tucson:
   - municipal business-license datasets;
   - county/municipal facility lists;
   - schools/districts;
   - churches/nonprofits;
   - hotels/lodging;
   - restaurants;
   - grocery/pharmacy;
   - hospitals/clinics/dental/behavioral;
   - senior living/group homes/childcare;
   - property management/apartments/HOAs;
   - retail;
   - industrial/warehouse/manufacturing;
   - insurance/professional offices;
   - government/public facilities;
   - entertainment/theaters;
   - automotive/fleet.
6. For Phoenix, buyer-side breadth still deserves work despite the 2,532 ADHS facilities and prior grocery/pharmacy batch.
7. Do not spend much time repeatedly retrying ADE/AZROC/Phoenix-liquor blocked endpoints unless a materially different access path is found.
8. Keep all evidence provenance intact and preserve source distinctions:
   - direct site;
   - government registry;
   - ROC-backed secondary registry;
   - directory/discovery.
9. Do not delete overlapping evidence just to reduce counts.
10. Do not call raw/strict rows globally unique businesses without a business/entity rollup.
11. Keep all outbound switches OFF.
12. Do not contact providers or buyers without Brett's approval.
13. Continue updating this HANDOFF.md near the end of substantial work.

## Current production/runtime continuity

Latest proven production remains:
- exact SHA `f05ff6fcf2546de24edda14d58f367c61bb38092`
- **30,518 active v7 production evidence rows**
- outbound OFF
- scheduler previously restarted safely for internal maintenance
- research refresher running at the last production proof
- runtime doctor at that production proof: 0 failures / 0 warnings

The larger 51,344-row census is repository/CI-proven but not production-proven yet.

When a deployment checkpoint is chosen:
1. require a green exact master SHA;
2. deploy through the safe VPS relay;
3. keep all outbound false;
4. take a fresh production proof;
5. report evidence rows and normalized business counts separately.

## Final continuity sentence

**The assistant-led census has grown from 14,434 strict artifact rows at the prior handoff to 51,344 strict unique artifact rows across 286 auditable JSON artifacts and all 21 markets. Tucson buyer coverage is now massive via City + ADHS government registries, Scottsdale and many secondary markets gained deep licensed-trade coverage, gap-market trades were recovered without weakening completeness gates, and the three weakest rural markets received new direct company service-territory evidence. Production is still the older 30,518-row f05ff6 proof, all outreach remains OFF, and the next thread should keep digging into businesses rather than handing the initial census build to the VPS.**


---

# 62. RURAL DIRECT/OFFICIAL + MOHAVE COUNTY BUYER EXPANSION — 2026-10-26 20:10 ARIZONA

This section continues Section 61 and records the next assistant-led census pass. The standing rule remains unchanged:

**The assistant is still building the initial business universe. The VPS is the maintenance/rescan/delta layer, not the substitute for this initial census.**

All outbound remains OFF. No provider/buyer contact was performed.

## Exact green repository checkpoint

Latest census/data commit:
- `9543faff796f871aec46eccea5b2dfa28bebef28`
- message: **Add direct Highway Hotdog census evidence**

Green BMC Portfolio CI:
- run **40442435635**
- result: **SUCCESS**
- exact SHA: `9543faff796f871aec46eccea5b2dfa28bebef28`

Deterministic artifact census on that exact SHA:
- **290 assistant census JSON artifacts**
- **52,238 raw evidence rows**
- **823 strict duplicate rows collapsed**
- **51,415 strict unique artifact seed rows**
- **35,650 strict unique buyer rows**
- **15,765 strict unique vendor rows**
- **21 / 21 markets**
- **1,260 / 1,260 inventory lanes**
- smoke DB expected artifact candidates: **51,415**
- smoke DB actual artifact candidates: **51,415**
- runtime doctor core failures: **0**

CI reported 10 warnings in its disposable stack because external production services/secrets are intentionally absent there. This does not represent production runtime health.

Compared with Section 61:
- raw evidence: **52,167 -> 52,238** (**+71**)
- strict artifact seed rows: **51,344 -> 51,415** (**+71**)
- artifacts: **286 -> 290** (**+4**)

The strict duplicate-collapse count remained 823, meaning this pass added 71 new strict artifact identities rather than padding the strict count with duplicate identities.

## Updated strict artifact rows by market

Current strict-unique artifact rows:

- Ash Fork: **118** (+5)
- Bullhead City: **480**
- Camp Verde: **287**
- Chino Valley: **277**
- Cordes Lakes: **79** (+2)
- Cottonwood: **383**
- Dewey-Humboldt: **427**
- Flagstaff: **893**
- Golden Valley: **149** (+27)
- Kingman: **753**
- Mayer: **182** (+17)
- Phoenix: **9,558**
- Prescott: **926**
- Prescott Valley: **818**
- Scottsdale: **2,974**
- Sedona: **262**
- Seligman: **136** (+12)
- Skull Valley: **72** (+1)
- Tucson: **32,467**
- Williamson Valley: **43** (+1)
- Winslow: **131** (+6)

These remain evidence/seed identities, **not globally deduplicated legal businesses**.

## New artifact: rural direct/official batch 14

Commit:
- `c7782394e859ef3e70ec517683a7be56ae2486b0`

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-direct-official-batch-14.json`

Adds **30 direct-company or official-government evidence rows** across the thinnest markets.

Buyer/facility upgrades include examples such as:
- Ash Fork Joint Unified School District #31;
- Ash Fork Public Library;
- Ash Fork Volunteer Fire District;
- Canyon's Edge Route 66 Motel;
- Seligman Volunteer Fire District;
- Cordes Lakes Public Library;
- Mayer Domestic Water Improvement District;
- Mayer Volunteer Fire District;
- Mayer Community Church;
- Mission Church;
- Creekside Lodge and Cabins;
- Williamson Valley Fire District;
- Golden Valley Fire District;
- E.A.G.L.E. Academy;
- Black Mountain Elementary / Golden Valley Middle School;
- Winslow Christian School;
- First Baptist Church Winslow;
- The Winslow hotel.

Direct vendor/service-territory upgrades include:
- AZ Super Plumber -> Skull Valley;
- Manor Plumbing -> Cordes Lakes and Mayer;
- Nichols Plumbing, Electrical & HVAC -> Mayer plumbing/electrical/HVAC;
- R.E.D. Plumbing -> Mayer;
- S&M Electric -> Mayer;
- ACE Cooling, Heating, Plumbing and Electrical -> Mayer plumbing/electrical/HVAC;
- Miller's Water Works -> Winslow.

Existing direct evidence was checked before adding records. Known already-direct entities such as Skull Valley School, Skull Valley Bible Church, Williamson Valley Community Organization, Williamson Valley Ranch Road Association, Winslow Unified School District and La Posada were not needlessly re-added as new direct identities.

## New artifact: Seligman direct-site upgrade batch 15

Initial commit:
- `d1e5085b8f11df6b9811c057d35dac1d220e5bf7`

Final update:
- `9543faff796f871aec46eccea5b2dfa28bebef28`

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-seligman-direct-upgrade-15.json`

Current count: **10 direct-site records**.

Direct evidence added/upgraded for:
- Roadkill Cafe / O.K. Saloon;
- Historic Route 66 Motel;
- Historic Route 66 General Store;
- Historic Route 66 General Store & Hardware Store;
- Route 66 Auto & Towing;
- The Aztec Motel & Creative Space;
- The Postcard Motel;
- Canyon Lodge Motel;
- Seligman / Route 66 KOA Journey;
- Highway Hotdog.

Highway Hotdog is especially useful as a current 2026 validation:
- its own live website confirms the Seligman restaurant;
- Yavapai County's January 2026 Board record approved its Series 12 restaurant liquor-license application.

The broad Seligman Chamber data already existed in earlier artifacts, so this pass deliberately focused on first-party/direct upgrades instead of duplicating the same Chamber discovery evidence.

## New artifact: direct rural chain facilities batch 16

Commit:
- `7ac8eda5d793f77c7f68c3c7f86c9d47ecffc6be`

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-chain-direct-16.json`

Adds **8 direct first-party chain-location buyer records**:
- Family Dollar - Ash Fork;
- Family Dollar - Golden Valley;
- two Family Dollar locations in Mayer;
- Family Dollar - Seligman;
- Family Dollar - Winslow;
- Love's Travel Stop #722 - Mayer;
- Love's Travel Stop #971 - Winslow.

These use the chains' own location directories and therefore remain `direct / direct_evidence`, not generic directory discovery.

## New artifact: Golden Valley Mohave County food-facility census batch 17

Commit:
- `cc997739226d8086147dc8b3788c8baeecc69cd3`

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-golden-valley-mohave-food-inspections-17.json`

Adds **23 official Mohave County government-registry buyer/facility records** from 2026 Department of Public Health food-safety inspection reports.

The pass retained one useful/latest 2026 government evidence row per establishment rather than treating every monthly reinspection as a new business.

Facilities include:
- American Legion Post 22;
- Black Mountain Elementary;
- Castle Rock Ranch;
- Family Dollar #24767;
- Grasshopper Junction Deli;
- Gus's Fresh Jerky;
- Hwy 68 IL Cafe;
- Maverik #376;
- Off Road Diner;
- Outpost Inc.;
- Sonic - Golden Valley;
- Subway #50193;
- El Rancho - Golden Valley;
- Great American Pizza;
- VFW Post #2555;
- The Mother Road Coffee Bus;
- The Johnson's American and Salvadorean Cuisine;
- Tropical Snow Shack;
- The Best Ass Coffee;
- Golden Oyster-GV;
- Cactus Cone Co;
- Love's Travel Stop food/RV facility;
- Veradan Oasis LLC.

Provenance semantics are preserved:
- these rows are **government_registry / government_record**;
- they are not mislabeled as direct company websites.

This pass materially improved Golden Valley from **122 to 149 strict artifact rows**.

## County/state source leads and blockers found during this pass

### Yavapai County food/health inspection facilities

Yavapai County's official Environmental Health material confirms it regulates/inspects broad buyer classes such as:
- eating/drinking establishments;
- retail markets/groceries;
- schools;
- childcare;
- assisted living;
- hospital food operations;
- hotels/motels;
- mobile food;
- camps;
- pools;
- other food/facility categories.

However, the current public facility-results portal routes through HealthSpace and returned **403** through this research path.

Do not claim an extracted Yavapai County facility census from that portal unless a different accessible official endpoint is found.

### Navajo County / Winslow facility inspections

Navajo County's official Environmental Health page confirms oversight of:
- food establishments;
- retail food;
- bars/lounges;
- school food/sanitation;
- hotels/motels;
- trailer parks;
- pools/spas;
- camps;
- temporary/mobile food;
- related regulated facilities.

Its linked public inspection portal also returned **403** through this research path.

Keep it as a source lead. Do not fabricate or call it an extracted Winslow facility census.

### Arizona Department of Liquor Licenses and Control

Arizona DLLC's official public license lookup and state documentation expose a potentially high-leverage statewide buyer source.

The state's license-master specification includes fields such as:
- license/status;
- business name;
- business address;
- city/state/ZIP;
- business phone;
- owner/licensee;
- issued/expiration/status dates;
- county;
- license type.

The older documented bulk `master.csv` path now returns 404, while the current public license search remains available.

This is a promising next source family for statewide restaurant/bar/hotel/grocery/liquor-facility enumeration, but **no current bulk DLLC artifact has been harvested yet**. Validate a current free official extraction path before counting anything.

## Production distinction remains mandatory

The **51,415-row repository census is NOT deployed to production**.

Latest proven production remains:
- `f05ff6fcf2546de24edda14d58f367c61bb38092`
- **30,518 active v7 production evidence rows**

All outbound remains OFF:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

Do not say 51,415 rows are live until an exact green census SHA is deliberately deployed and a new production proof is taken.

## Next work

Continue assistant-led census research rather than waiting for the VPS.

Priority order:
1. continue thin-market buyer/facility enumeration using direct/official sources;
2. pursue a current free Arizona DLLC extraction route because it could add a large statewide first-party buyer layer;
3. continue direct-site upgrades for weak rural discovery rows;
4. look for county/municipal permit, inspection, school, lodging, food, public-facility and business-license datasets that can be filtered by the 21 BMC markets;
5. keep Phoenix buyer-side expansion moving because its size still justifies much deeper census work;
6. preserve source tiers exactly;
7. do not weaken completeness/quality gates to inflate counts;
8. do not contact providers/buyers or enable outbound;
9. continue updating this HANDOFF near the end of substantial work.

## Continuity sentence

**The clean repository census is now 51,415 strict artifact seed rows across 290 auditable JSON artifacts. This pass added 71 new strict evidence identities, concentrating on direct/official evidence in the thinnest rural markets and a 23-facility Mohave County government census for Golden Valley. Production is still the older 30,518-row f05ff6 deployment, all outbound remains OFF, and the assistant must keep building the initial universe while the VPS remains the maintenance layer.**


---

# 63. CMS BLOCKER ROUTED AROUND + FEDERAL HEALTH/EDUCATION EXPANSION — 2026-10-26 20:50 ARIZONA

This is the newest authoritative continuation section after Sections 61–62.

## Brett's standing operating rule remains unchanged

**The assistant is still building the initial business universe. Do not hand initial census construction to the VPS.**

The VPS remains the maintenance layer for:
- recurring rescans;
- new-business discovery;
- closure detection;
- refresh;
- local-demand monitoring;
- opportunity monitoring;
- internal queue processing.

All external outreach remains OFF unless Brett explicitly approves it.

## Exact repository census before this documentation commit

Current artifact/data head immediately before this Section 63 documentation update:
- `656b569892e33e995b81cab22be1ebb8963759a7`
- message: **Seed official NCES education facility census**

Deterministic builder summary on that tree:
- **309 assistant census JSON artifacts**
- **57,744 raw evidence rows**
- **1,185 strict duplicate rows collapsed**
- **56,559 strict unique artifact seed rows**
- **40,794 strict unique buyer rows**
- **15,765 strict unique vendor rows**
- **21 / 21 markets**

Latest strict-unique artifact rows by market:
- Ash Fork: **124**
- Bullhead City: **574**
- Camp Verde: **310**
- Chino Valley: **298**
- Cordes Lakes: **80**
- Cottonwood: **458**
- Dewey-Humboldt: **433**
- Flagstaff: **1,054**
- Golden Valley: **158**
- Kingman: **853**
- Mayer: **193**
- Phoenix: **11,791**
- Prescott: **1,116**
- Prescott Valley: **908**
- Scottsdale: **3,660**
- Sedona: **297**
- Seligman: **141**
- Skull Valley: **75**
- Tucson: **33,828**
- Williamson Valley: **43**
- Winslow: **165**

These are evidence/seed identities under the deterministic artifact key, **not globally deduplicated legal businesses**.

Compared with the Section 62 checkpoint:
- strict rows: **51,415 -> 56,559** (**+5,144**)
- raw rows: **52,238 -> 57,744** (**+5,506**)
- artifacts: **290 -> 309** (**+19**)

The raw/strict difference increased because the new official datasets can corroborate businesses/facilities already represented elsewhere and because some official source rows represent multiple program/provider identities. Preserve that provenance; do not delete it merely to shrink counts.

## CMS issue from the prior day: status is now clear

The original problem was real:
- the VPS/CMS source-native crawler received HTTP 403 responses from CMS;
- repeated VPS retries were not a reliable path;
- the old crawler should still be considered **host-blocked for CMS** unless separately proven otherwise.

However, **CMS is no longer a blocker for the assistant-built initial census**.

The assistant built GitHub Actions exporters that access the same official CMS public sources outside the VPS path, validate the source counts, filter to Arizona/BMC markets, create auditable government-registry JSON artifacts, validate the deterministic census builder, and only then commit results.

Correct interpretation:

**The VPS CMS crawler itself was not fixed; the assistant successfully routed around the VPS 403 and harvested the official CMS data through a separate controlled path.**

Do not regress to waiting for the VPS to fetch CMS before building the census.

## CMS Care Compare / provider-facility census

New exporter:
- `portfolio/automation/export-cms-market-census.py`

Workflow:
- `.github/workflows/assistant-cms-market-census.yml`

The exporter resolves each current official bulk CSV from the stable CMS dataset metadata IDs rather than hard-coding changing distribution filenames.

Current official source families and BMC-market rows:
- hospitals: **48**
- nursing homes: **71**
- home health agencies: **98**
- hospice providers: **149**
- dialysis centers: **53**
- inpatient rehabilitation facilities: **14**
- long-term-care hospitals: **4**

Combined:
- **437 official CMS buyer/facility rows** in BMC markets.

Relevant stable dataset IDs:
- hospitals: `xubh-q36u`
- nursing homes: `4pq5-n9py`
- home health: `6jpm-sxkc`
- hospice: `yc9t-dgbk`
- dialysis: `23ew-n7w9`
- inpatient rehab: `7t8x-u3ir`
- long-term-care hospitals: `azum-44iv`

Successful expanded CMS workflow:
- run **40444626310**

Workflow artifact commit:
- `a7aa1ac68c60135249dedcee7d3d033056779520`
- message: **Seed official CMS buyer facility census**

All of these records use:
- `official=false`
- `official_registry=true`

Therefore the builder correctly classifies them as:
- `government_registry / government_record`

They are not mislabeled as direct business websites.

## Additional CMS provider-enrollment clinic census

New exporter:
- `portfolio/automation/export-cms-enrollment-clinic-census.py`

Workflow:
- `.github/workflows/assistant-cms-enrollment-clinic-census.yml`

The exporter resolves the latest versioned CMS catalog entries instead of hard-coding quarterly file URLs.

Successful workflow:
- run **40445270587**

Combined BMC-market rows:
- Federally Qualified Health Center enrollments: **82**
- opioid-treatment program providers: **30**
- rural health clinic enrollments: **3**
- home-infusion therapy providers: **2**

Combined:
- **117 official CMS enrollment/clinic rows**

The source totals proved that the exporter was filtering a much broader official Arizona universe:
- FQHC: 190 Arizona source rows / 11,166 national source rows
- opioid treatment: 46 Arizona / 1,578 national
- rural health clinic: 57 Arizona / 5,626 national
- home infusion: 10 Arizona / 1,724 national

These are additive first-party government evidence for outpatient, clinic and behavioral-health buyers.

## CMS clinical-laboratory census

New exporter:
- `portfolio/automation/export-cms-clinical-lab-census.py`

Workflow:
- `.github/workflows/assistant-cms-clinical-lab-census.yml`

Important implementation detail:
- the official CMS clinical-lab source contains roughly 676,000 national rows;
- the exporter does **not** brute-force the national file;
- it uses the CMS Data API filter `STATE_CD=AZ` before paging;
- then it filters Arizona rows to the configured BMC markets;
- it excludes explicitly terminated program rows where the termination code clearly indicates termination;
- sanity gates prevent a tiny/implausible result from landing.

Successful workflow:
- run **40445751650**

Official CMS source result:
- **16,090 Arizona clinical-lab rows**
- **3,338 BMC-market clinical-lab records** after exporter filtering/dedupe

The deterministic cross-artifact builder collapsed additional strict overlaps with existing census evidence, which is why the strict census increased by fewer than 3,338 rows.

Workflow artifact commit:
- short commit shown in Actions: `87a4113`
- message: **Seed official CMS clinical lab census**

The current CMS public source documents:
- Provider of Services File - Clinical Laboratories;
- latest available version used in this run: Q1 2026;
- provider/facility demographics, address, provider number, CLIA information and testing characteristics.

## Direct rural chain/facility additions during the same pass

### Dollar General

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-dollar-general-direct-19.json`

Commit:
- `6b2e036702c2459d203d824b7c3b87f956b223cb`

Adds current direct first-party locations in:
- Cordes Lakes;
- Golden Valley (two locations represented in the first-party directory);
- Winslow;
- Chino Valley;
- Camp Verde (two locations).

Green CI:
- run **40444724107**

### Skull Valley USPS

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-skull-valley-usps-direct-20.json`

Commit:
- `05a87d47afb5806d503defcba86356048f5e8682`

Adds the direct USPS Skull Valley Post Office facility:
- 3085 S Iron Springs Rd
- public USPS phone preserved.

Green CI:
- run **40444764342**

### Pilot / Flying J

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-pilot-flyingj-direct-22.json`

Commit:
- `63c90c28a57d3304cc52be0ef325de3ded7044f4`

Adds direct first-party travel-stop facilities:
- ONE9 Travel Center #484 — Ash Fork
- ONE9 Dealer #1362 — Winslow
- Flying J Travel Center #612 — Winslow

Green CI:
- run **40445039109**

These are valuable buyer facilities because they are large, maintenance-heavy commercial properties, not merely low-value directory names.

## ADE school blocker routed around with federal NCES data

The Arizona Department of Education spreadsheet remains blocked by HTTP 403 from GitHub Actions.

Instead of repeatedly retrying the same blocked ADE URL, the assistant found an official federal source:
- National Center for Education Statistics (NCES)
- U.S. Department of Education
- Common Core of Data / EDGE public-school location layer
- official ArcGIS FeatureServer hosted on `services1.arcgis.com`

The initial NCES endpoints exposed their own quirks:
- the `nces.ed.gov` ArcGIS endpoint failed GitHub Python TLS certificate verification;
- an advertised ArcGIS Hub bulk CSV URL returned HTTP 400;
- the official ArcGIS FeatureServer worked after correcting the current schema field mapping to `STATE`, `CITY`, `NAME`, `NCESSCH`, `STREET`, and `ZIP`.

Do not disable TLS verification or weaken source checks; the official ArcGIS-hosted FeatureServer solved the issue cleanly.

## NCES public-school census

Exporter:
- `portfolio/automation/export-nces-school-census.py`

Workflow:
- `.github/workflows/assistant-nces-school-census.yml`

Successful workflow:
- run **40445522347**

Official source:
- **2,633 Arizona current public-school locations**
- **1,047 BMC-market public-school facility rows**

BMC-market public-school rows include:
- Ash Fork 4
- Bullhead City 14
- Camp Verde 8
- Chino Valley 7
- Cottonwood 14
- Dewey-Humboldt 2
- Flagstaff 40
- Golden Valley 1
- Kingman 20
- Mayer 4
- Phoenix 476
- Prescott 20
- Prescott Valley 19
- Scottsdale 64
- Sedona 6
- Seligman 3
- Skull Valley 1
- Tucson 334
- Winslow 10

No school in this federal layer mapped literally to Cordes Lakes or Williamson Valley by city field; do not treat that as evidence those communities lack school-related buyer facilities.

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-nces-public-schools-21.json`

Workflow artifact commit:
- `e11dd14be136c90707d25a0a1781be0557565be4`
- message: **Seed official NCES public school census**

## Additional NCES education-facility census

The assistant then expanded beyond individual public schools.

Exporter:
- `portfolio/automation/export-nces-institution-census.py`

Workflow:
- `.github/workflows/assistant-nces-institution-census.yml`

Successful workflow:
- run **40445853517**

Official BMC-market rows:
- school district administrative offices: **347**
- private schools: **147**
- postsecondary / college / university / technical-vocational institutions: **62**

Combined:
- **556 additional official education-facility rows**

Arizona source universes:
- district offices: **775 Arizona source rows**
- private schools: **307 Arizona source rows**
- postsecondary: **131 Arizona source rows**

Workflow artifact commit:
- `656b569892e33e995b81cab22be1ebb8963759a7`
- message: **Seed official NCES education facility census**

This broadens the education buyer universe from school buildings alone to:
- district administrative offices;
- private schools;
- colleges/universities;
- technical and vocational institutions.

## Production distinction remains mandatory

**None of this 56,559-row repository census is production-proven yet.**

Latest proven production remains:
- `f05ff6fcf2546de24edda14d58f367c61bb38092`
- **30,518 active v7 production evidence rows**

All outbound remains OFF:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

Do not report 56,559 as live production data until an exact green census SHA is deliberately deployed and a new production proof is taken.

## What the next work should do

Continue assistant-led census construction.

High-value next source families include:
1. additional official CMS/provider datasets where they represent distinct facilities rather than duplicate measures;
2. municipal/county business-license and inspection datasets;
3. official chain/store/hotel/travel-stop location directories;
4. official school/district/postsecondary sources where geography still has gaps;
5. churches/nonprofits and public/community facilities in the smallest markets;
6. direct service-territory verification for rural vendor categories;
7. Phoenix buyer-side breadth, which remains worthy of continued work despite large health/education additions.

Keep Williamson Valley, Skull Valley and Cordes Lakes under special scrutiny because their literal-city official datasets remain naturally sparse and often require service-territory/community-address research.

## Immediate validation requirement after this documentation commit

This Section 63 documentation commit is a normal assistant GitHub commit and should trigger BMC Portfolio CI over the complete artifact tree.

Before treating **56,559** as the next clean repository baseline:
1. require BMC Portfolio CI success on the exact post-handoff master;
2. confirm deterministic builder expected artifact candidates = smoke DB actual artifact candidates;
3. confirm 21/21 markets;
4. confirm 1,260/1,260 inventory lanes;
5. confirm runtime core failures remain 0.

Do not deploy merely because this checkpoint is green; Brett's current instruction is to continue fleshing out the initial list.

## Continuity sentence

**The CMS problem from yesterday is now solved for census-building: the VPS crawler itself remains the blocked component, but assistant-controlled GitHub exporters successfully harvested official CMS hospitals, nursing homes, home health, hospice, dialysis, rehab, LTCH, FQHC, RHC, home-infusion, opioid-treatment and clinical-lab data. Federal NCES sources also replaced the blocked ADE school path and added public schools, district offices, private schools and postsecondary institutions. The repo artifact census now stands at 56,559 strict rows across 309 auditable JSON artifacts before this documentation commit; production remains the older 30,518-row f05ff6 deployment and outbound remains OFF.**


---

# 64. HUD MULTIFAMILY BUYER EXPANSION + POST-CMS CLEAN CHECKPOINT — 2026-10-26 21:00 ARIZONA

This section continues Section 63 and records the next official-source buyer expansion.

## Standing instruction remains unchanged

The assistant continues building the initial BMC business universe. The VPS remains the maintenance/rescan/delta layer and must not be used as a substitute for the assistant-built initial census.

All external outreach remains OFF.

## Exact repository state before this documentation commit

Current artifact/data head:
- `c07951f383ef95bd811f192e081764bd286f8ea3`
- message: **Seed official HUD multifamily buyer census**

Deterministic artifact builder summary on that tree:
- **310 assistant census JSON artifacts**
- **57,853 raw evidence rows**
- **1,185 strict duplicate rows collapsed**
- **56,668 strict unique artifact seed rows**
- **40,903 strict unique buyer rows**
- **15,765 strict unique vendor rows**
- **21 / 21 markets**

Strict artifact rows by market:
- Ash Fork: **124**
- Bullhead City: **575**
- Camp Verde: **311**
- Chino Valley: **298**
- Cordes Lakes: **80**
- Cottonwood: **464**
- Dewey-Humboldt: **433**
- Flagstaff: **1,060**
- Golden Valley: **158**
- Kingman: **853**
- Mayer: **193**
- Phoenix: **11,840**
- Prescott: **1,121**
- Prescott Valley: **910**
- Scottsdale: **3,670**
- Sedona: **299**
- Seligman: **141**
- Skull Valley: **75**
- Tucson: **33,854**
- Williamson Valley: **43**
- Winslow: **166**

These are evidence/seed identities, not globally deduplicated legal businesses.

## Previous combined clean CI checkpoint

Section 63's full application checkpoint is proven green:

- BMC Portfolio CI run **40445983245**
- exact SHA: `595a51ff75146cd366464d71ce962b14a7fd08bb`
- result: **SUCCESS**
- expected artifact candidates: **56,559**
- actual artifact candidates: **56,559**
- artifact markets: **21 / 21**
- inventory lanes: **1,260 / 1,260**
- runtime core failures: **0**

The HUD artifact described below was committed afterward by a workflow token, so it did not itself cascade-trigger another normal BMC Portfolio CI run. This Section 64 documentation commit is intentionally a normal assistant commit that should trigger the complete 56,668-row tree through BMC Portfolio CI.

## Official HUD insured multifamily buyer census

Exporter:
- `portfolio/automation/export-hud-multifamily-census.py`

Workflow:
- `.github/workflows/assistant-hud-multifamily-census.yml`

Successful workflow:
- **40446125201**

Workflow-generated artifact commit:
- `c07951f383ef95bd811f192e081764bd286f8ea3`
- message: **Seed official HUD multifamily buyer census**

Official source:
- U.S. Department of Housing and Urban Development
- current HUD Insured Multifamily Properties open-data FeatureServer
- Arizona filter applied at the official source: `STD_ST='AZ'`

Source/result counts:
- **199 Arizona HUD insured multifamily source rows**
- **109 BMC-market property rows**

The artifact preserves where HUD publishes them:
- HUD property ID;
- property name;
- standardized address/city/ZIP;
- on-site phone;
- total unit count;
- assisted unit count;
- property category;
- management agent organization;
- management contact name;
- management contact phone;
- management contact email;
- primary FHA number;
- financing type.

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-hud-insured-multifamily-26.json`

Classification:
- side: buyer
- category: property management / multifamily & apartment properties
- `official=false`
- `official_registry=true`
- therefore `government_registry / government_record`

This is a strategically useful buyer layer because multifamily/apartment properties can plausibly buy recurring or turnover:
- commercial/residential cleaning;
- HVAC;
- plumbing;
- electrical;
- pest control;
- landscaping;
- flooring;
- painting;
- junk/turn services;
- general building maintenance.

## CMS status remains solved for assistant census-building

Do not regress to calling CMS a blocker.

The VPS-native CMS crawler remains the host-blocked component, but the assistant-controlled official-data path successfully harvested:
- hospitals;
- nursing homes;
- home health;
- hospice;
- dialysis;
- inpatient rehab;
- long-term-care hospitals;
- FQHCs;
- rural health clinics;
- home infusion;
- opioid-treatment programs;
- clinical laboratories.

The clinical-lab source alone contributed:
- **16,090 Arizona source rows**
- **3,338 BMC-market official lab records** before cross-artifact strict dedupe.

CMS should now be treated as an established assistant-controlled official census source, not an unresolved dependency on the VPS.

## NCES/ADE status remains solved for assistant census-building

The ADE spreadsheet is still blocked by 403, but federal NCES official sources successfully replaced that path.

Current official NCES additions include:
- **1,047** BMC-market public schools;
- **347** school district administrative offices;
- **147** private schools;
- **62** postsecondary/vocational institutions.

Do not spend the next thread repeatedly retrying the blocked ADE spreadsheet unless a materially different official endpoint is found.

## Production distinction remains mandatory

The **56,668-row repository census is NOT production-proven**.

Latest proven production remains:
- `f05ff6fcf2546de24edda14d58f367c61bb38092`
- **30,518 active v7 production evidence rows**

All outbound remains OFF:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

Do not report 56,668 as live production data until an exact green census SHA is deliberately deployed and a new production proof is taken.

## Immediate next work

Continue assistant-led census expansion after this checkpoint.

High-value next source directions:
1. additional HUD property/facility layers where they add distinct buyer facilities rather than redundant attributes;
2. county/municipal business-license, health-inspection and lodging/facility datasets;
3. official chain/location directories for large commercial facilities;
4. churches/nonprofits and public/community facilities in the smallest markets;
5. direct rural service-territory verification for missing vendor categories;
6. Phoenix buyer-side breadth despite its already-large health/education/property universe;
7. Williamson Valley, Skull Valley and Cordes Lakes require special direct/service-territory research because literal-city government datasets remain sparse.

## Required post-documentation validation

This Section 64 normal commit must trigger BMC Portfolio CI over the full 310-artifact tree.

Require:
- BMC Portfolio CI success on the exact post-Section-64 master;
- expected artifact candidates = **56,668**;
- actual artifact candidates = **56,668**;
- artifact markets = **21**;
- inventory lanes = **1,260 / 1,260**;
- runtime core failures = **0**.

Do not deploy merely because that checkpoint is green; Brett's current direction is to keep fleshing out the initial universe.

## Continuity sentence

**The assistant-built repo census has now reached 56,668 strict artifact seed rows across 310 auditable JSON artifacts. CMS is no longer a census blocker: the VPS itself remains blocked from CMS, but assistant-controlled official exporters successfully harvested health/provider data including 3,338 BMC-market clinical-lab records. NCES replaced the blocked ADE school path with 1,603 official education-facility rows across public schools, district offices, private schools and postsecondary institutions. HUD has now added 109 official multifamily/apartment properties with management/contact fields where available. Production remains the older 30,518-row f05ff6 deployment and all outbound remains OFF.**


---

# 65. IRS EXEMPT-ORGANIZATION BUYER CENSUS — 2026-10-26 21:10 ARIZONA

This section continues Sections 63–64.

## Standing rule

The assistant continues building the initial BMC business universe. The VPS remains the maintenance/rescan/delta layer. Do not hand initial census construction back to the VPS.

All external outreach remains OFF.

## Exact artifact/data head before this documentation commit

Current master:
- `d482d5214a2da9251c90750105df4866a57024be`
- message: **Seed official IRS exempt organization buyer census**

Deterministic census summary on that tree:
- **311 assistant census JSON artifacts**
- **73,080 raw evidence rows**
- **1,636 strict duplicate rows collapsed**
- **71,444 strict unique artifact seed rows**
- **55,679 strict unique buyer rows**
- **15,765 strict unique vendor rows**
- **21 / 21 markets**

Strict artifact rows by market:
- Ash Fork: **138**
- Bullhead City: **712**
- Camp Verde: **379**
- Chino Valley: **400**
- Cordes Lakes: **84**
- Cottonwood: **628**
- Dewey-Humboldt: **487**
- Flagstaff: **1,664**
- Golden Valley: **193**
- Kingman: **1,092**
- Mayer: **225**
- Phoenix: **18,198**
- Prescott: **1,666**
- Prescott Valley: **930**
- Scottsdale: **5,856**
- Sedona: **561**
- Seligman: **155**
- Skull Valley: **79**
- Tucson: **37,732**
- Williamson Valley: **43**
- Winslow: **222**

These are evidence/seed identities, not globally deduplicated legal businesses.

Compared with Section 64's green HUD checkpoint:
- strict rows: **56,668 -> 71,444** (**+14,776**)
- raw rows: **57,853 -> 73,080** (**+15,227**)
- artifacts: **310 -> 311**
- strict buyer rows: **40,903 -> 55,679** (**+14,776**)
- strict vendor rows unchanged: **15,765**

The difference between 15,227 new IRS artifact rows and 14,776 new strict identities reflects cross-artifact corroboration/overlap. Preserve it.

## Official IRS EO Business Master File census

Exporter:
- `portfolio/automation/export-irs-eo-bmf-census.py`

Workflow:
- `.github/workflows/assistant-irs-eo-bmf-census.yml`

Successful workflow:
- **40446360385**

Workflow artifact commit:
- `d482d5214a2da9251c90750105df4866a57024be`
- message: **Seed official IRS exempt organization buyer census**

Official source:
- Internal Revenue Service Exempt Organizations Business Master File Extract
- Arizona state CSV: `https://www.irs.gov/pub/irs-soi/eo_az.csv`
- current IRS posting used in this pass: **2026-10-13**

IRS describes the EO BMF as:
- cumulative;
- based on IRS Business Master File data;
- containing the most recent information IRS has for organizations that received recognition of tax-exempt status;
- organized by filing/headquarters state.

Important limitation preserved in every artifact note:
- the filing/headquarters address does **not** by itself prove an organization operates outside that address;
- churches and other organizations not required to apply for recognition can be absent from the BMF.

Source result:
- **31,700 Arizona EO BMF rows**
- **15,227 BMC-market rows**
- **15 status-25 terminating-private-foundation rows excluded**

BMC-market category classification based on IRS NTEE/foundation/filing data:
- churches/nonprofits/general exempt organizations: **12,110**
- schools/education nonprofits: **1,704**
- health/medical nonprofits: **855**
- therapy/mental-health/crisis nonprofits: **291**
- housing/shelter nonprofits: **267**

BMC-market rows by filing-address market:
- Ash Fork: **14**
- Bullhead City: **138**
- Camp Verde: **68**
- Chino Valley: **102**
- Cordes Lakes: **4**
- Cottonwood: **165**
- Dewey-Humboldt: **54**
- Flagstaff: **611**
- Golden Valley: **35**
- Kingman: **241**
- Mayer: **32**
- Phoenix: **6,565**
- Prescott: **557**
- Prescott Valley: **20**
- Scottsdale: **2,228**
- Sedona: **269**
- Seligman: **14**
- Skull Valley: **4**
- Tucson: **4,050**
- Winslow: **56**

No EO BMF filing-address record in this pass mapped literally to Williamson Valley; continue direct/community-address research there.

## IRS evidence preserved per record

Where present, the artifact preserves:
- EIN;
- primary organization name;
- filing address;
- IRS subsection code;
- exempt-organization status code;
- foundation code;
- NTEE code/classification;
- deductibility code;
- ruling date;
- latest tax period;
- asset amount;
- income amount;
- Form 990 revenue amount;
- in-care-of name;
- secondary/sort name.

Status semantics used:
- 01 = unconditional exemption;
- 02 = conditional exemption;
- 12 = section 4947(a)(2) trust;
- 25 = organization terminating private-foundation status.

Status 25 was excluded rather than treated as a current buyer identity.

The artifact uses:
- `official=false`
- `official_registry=true`
- therefore `government_registry / government_record`

No IRS record was promoted to direct-site evidence merely because the organization is federally registered.

## Previous green checkpoint

The post-HUD normal application checkpoint is independently proven:
- BMC Portfolio CI run **40446264501**
- exact SHA: `fae09701e16f26c718a0a894a15ccb45b9526091`
- result: **SUCCESS**
- expected artifact candidates: **56,668**
- actual artifact candidates: **56,668**
- artifact markets: **21 / 21**
- inventory lanes: **1,260 / 1,260**
- runtime core failures: **0**

The IRS artifact was committed afterward by workflow token, so this Section 65 normal documentation commit is intentionally used to trigger BMC Portfolio CI across the complete 71,444-row tree.

## Production distinction remains mandatory

The **71,444-row repository census is NOT production-proven**.

Latest proven production remains:
- `f05ff6fcf2546de24edda14d58f367c61bb38092`
- **30,518 active v7 production evidence rows**

All outbound remains OFF:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

Do not report 71,444 as live production data until an exact green census SHA is deliberately deployed and a fresh production proof is taken.

## Next work

Continue assistant-led research.

The IRS pass materially strengthens churches/nonprofits/community organizations, but it does not eliminate the need for:
- direct church/community-site verification;
- organizations omitted because they never applied for IRS recognition;
- Williamson Valley community/facility research;
- additional property/apartment layers;
- county/municipal food/lodging/business license datasets;
- direct rural service-territory provider evidence;
- buyer-side commercial facilities such as hotels, grocery, pharmacy, automotive/fleet, warehouses, manufacturing, insurance/professional offices and entertainment.

Do not mistake a large federal registry count for a complete commercial universe.

## Required post-documentation validation

This Section 65 normal commit must trigger full BMC Portfolio CI over the 311-artifact tree.

Require:
- BMC Portfolio CI success on the exact post-Section-65 master;
- expected artifact candidates = **71,444**;
- actual artifact candidates = **71,444**;
- artifact markets = **21**;
- inventory lanes = **1,260 / 1,260**;
- runtime core failures = **0**.

Do not deploy merely because this checkpoint is green. Brett's current instruction is to keep fleshing out the list.

## Continuity sentence

**The assistant-built repository census has reached 71,444 strict artifact seed rows across 311 auditable JSON artifacts. The IRS Arizona EO Business Master File added 15,227 official nonprofit/exempt-organization evidence rows, of which 14,776 were new strict identities after cross-artifact dedupe. CMS is no longer a census blocker, NCES replaced the blocked ADE source, HUD added multifamily buyers, production remains the older 30,518-row f05ff6 deployment, and all outbound remains OFF.**


---

# 66. FDIC FINANCIAL-BRANCH BUYER CENSUS — 2026-10-26 21:20 ARIZONA

This section continues Sections 63–65.

## Standing rule

The assistant continues building the initial BMC business universe. The VPS remains the maintenance/rescan/delta layer. All external outreach remains OFF.

## Exact artifact/data head before this documentation commit

Current master:
- `55acd0737418f118879b7ace63f15166054085aa`
- message: **Seed official FDIC bank branch buyer census**

Deterministic census summary on that tree:
- **312 assistant census JSON artifacts**
- **73,566 raw evidence rows**
- **1,637 strict duplicate rows collapsed**
- **71,929 strict unique artifact seed rows**
- **56,164 strict unique buyer rows**
- **15,765 strict unique vendor rows**
- **21 / 21 markets**

Strict artifact rows by market:
- Ash Fork: **138**
- Bullhead City: **721**
- Camp Verde: **381**
- Chino Valley: **402**
- Cordes Lakes: **84**
- Cottonwood: **633**
- Dewey-Humboldt: **488**
- Flagstaff: **1,678**
- Golden Valley: **193**
- Kingman: **1,102**
- Mayer: **226**
- Phoenix: **18,396**
- Prescott: **1,681**
- Prescott Valley: **939**
- Scottsdale: **5,957**
- Sedona: **569**
- Seligman: **155**
- Skull Valley: **79**
- Tucson: **37,840**
- Williamson Valley: **43**
- Winslow: **224**

These are evidence/seed identities, not globally deduplicated legal businesses.

## Previous clean IRS checkpoint

Section 65's complete application checkpoint is proven green:
- BMC Portfolio CI run **40446476492**
- exact SHA: `7df3ff5928d5d98a31f2f779a057de7ff594dfdd`
- result: **SUCCESS**
- expected artifact candidates: **71,444**
- actual artifact candidates: **71,444**
- artifact markets: **21 / 21**
- inventory lanes: **1,260 / 1,260**
- runtime core failures: **0**

The FDIC artifact was committed afterward by workflow token, so this Section 66 normal commit is intentionally used to trigger BMC Portfolio CI over the complete 71,929-row tree.

## Official FDIC bank branch/location census

Exporter:
- `portfolio/automation/export-fdic-branch-census.py`

Workflow:
- `.github/workflows/assistant-fdic-branch-census.yml`

Successful workflow:
- **40446560057**

Workflow artifact commit:
- `55acd0737418f118879b7ace63f15166054085aa`
- message: **Seed official FDIC bank branch buyer census**

Official source:
- Federal Deposit Insurance Corporation BankFind Suite
- `/banks/locations` public API
- Arizona filter applied at FDIC source: `STALP:AZ`

Source/result counts:
- **977 current Arizona FDIC location rows returned**
- **486 BMC-market bank branch/office records**

BMC-market FDIC branch counts:
- Bullhead City: **9**
- Camp Verde: **2**
- Chino Valley: **2**
- Cottonwood: **5**
- Dewey-Humboldt: **1**
- Flagstaff: **14**
- Kingman: **10**
- Mayer: **1**
- Phoenix: **198**
- Prescott: **15**
- Prescott Valley: **9**
- Scottsdale: **101**
- Sedona: **8**
- Tucson: **109**
- Winslow: **2**

No FDIC branch from this source mapped literally to the other configured markets. That is a source-specific zero, not evidence that those markets contain no other financial/service businesses.

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-fdic-bank-branches-28.json`

Classification:
- side: buyer
- category: `insurance_professional`
- label: **Banks & Financial Offices**
- `official=false`
- `official_registry=true`
- therefore `government_registry / government_record`

Where FDIC provides them, records preserve:
- bank/institution name;
- office/branch name;
- street address/city/ZIP;
- FDIC certificate number;
- office number;
- establishment date;
- bank class;
- regulator;
- institution website.

The source is branch/location level, so this adds physical facilities rather than merely bank headquarters or brand names.

## NCUA note

NCUA was investigated as the obvious companion source for credit-union branches.

Current public NCUA quarterly data remains useful for credit-union institutions, but the historical public **Credit Union Branch Information** table is retired. NCUA FOIA logs also show branch-location dataset requests that ended for fee-related reasons.

Do not invent exhaustive branch coverage from headquarters-only NCUA data. Continue looking for a genuinely free current branch-level source before adding a credit-union branch census.

## Production distinction remains mandatory

The **71,929-row repository census is NOT production-proven**.

Latest proven production remains:
- `f05ff6fcf2546de24edda14d58f367c61bb38092`
- **30,518 active v7 production evidence rows**

All outbound remains OFF:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

Do not report 71,929 as live production data until an exact green census SHA is deliberately deployed and a fresh production proof is taken.

## Immediate next work

Continue assistant-led census expansion after this checkpoint.

High-value remaining directions include:
- free current credit-union office/branch sources if found;
- additional HUD/property layers that represent distinct facilities;
- county/municipal business-license and inspection datasets;
- hotel/lodging and chain-location sources;
- automotive/fleet, warehouses/manufacturing, grocery/pharmacy and professional-office buyers;
- direct rural vendor service-territory verification;
- Williamson Valley, Skull Valley and Cordes Lakes direct/community research.

Do not confuse a large federal-registry footprint with a complete commercial universe.

## Required post-documentation validation

This Section 66 normal commit must trigger full BMC Portfolio CI over the 312-artifact tree.

Require:
- BMC Portfolio CI success on the exact post-Section-66 master;
- expected artifact candidates = **71,929**;
- actual artifact candidates = **71,929**;
- artifact markets = **21**;
- inventory lanes = **1,260 / 1,260**;
- runtime core failures = **0**.

Do not deploy merely because that checkpoint is green. Brett's current direction remains to continue fleshing out the initial list.

## Continuity sentence

**The assistant-built repo census now stands at 71,929 strict artifact seed rows across 312 auditable JSON artifacts. The CMS blockage was routed around successfully, NCES replaced the blocked ADE school source, HUD added multifamily properties, IRS added 15,227 exempt-organization buyer records, and FDIC added 486 current bank branch/office facilities. Production remains the older 30,518-row f05ff6 deployment and all outbound remains OFF.**


### Commercial recurring-facility agreement opportunity — added by Brett during Section 67 work

Brett explicitly identified another core BMC opportunity that must remain in continuity:

**BMC should not think only in terms of one-time repair leads. It should also identify businesses/facilities that may benefit from recurring service agreements that they have never formally sourced.**

Examples:
- gas stations / convenience stores;
- parking lots and parking-heavy commercial properties;
- strip malls / retail centers;
- restaurants;
- hotels;
- apartment / multifamily properties;
- medical/dental/therapy offices;
- schools/churches;
- banks;
- grocery/pharmacy;
- warehouses / fleet yards;
- municipal/public facilities.

High-value recurring exterior/facility service opportunities include:
- parking-lot power washing;
- sidewalk / storefront pressure washing;
- fuel-island and pump-pad cleaning;
- dumpster-pad degreasing;
- restaurant grease/oil cleanup;
- gum removal;
- curb / loading-zone cleaning;
- parking-lot sweeping;
- parking-lot striping / restriping;
- exterior building washing;
- window cleaning;
- trash / junk / bulk-item removal;
- seasonal grounds / snow / defensible-space service where appropriate;
- recurring janitorial / common-area cleaning.

Strategic principle:

A buyer may already “know a guy,” but that does not mean it has:
- a written recurring scope;
- competitive pricing;
- backup coverage;
- scheduled preventive service;
- a qualified second vendor;
- an auditable service agreement.

BMC can create value by identifying the unmet/under-formalized need and brokering a qualified recurring commercial opportunity.

Potential BMC commercial model to preserve for later design:
1. Research facility and likely service need.
2. Qualify whether there is an actual recurring service gap / contract opportunity.
3. Present a clear scoped opportunity to suitable local providers.
4. Provider pays for the qualified opportunity / accepted lead under the normal model, or BMC later uses a legally reviewed success/referral/contract-origination fee where permitted.
5. Buyer gets a real business agreement rather than a random one-off contractor list.
6. BMC tracks performance so renewal / replacement opportunities become recurring network value.

Important: do not make unsupported claims that a facility needs a service merely because it has a parking lot or fuel pumps. Treat these as prospecting hypotheses until buyer need is qualified.

Research implication:

Commercial-buyer census expansion should explicitly pursue **parking-heavy and exterior-maintenance-heavy facilities**, not just generic businesses. Gas stations and convenience/fuel locations are now a priority buyer class because they can create power-washing, fuel-island, dumpster-pad, sweeping, striping, window and exterior-cleaning demand.

This opportunity should also inform future vendor discovery: power-washing, commercial exterior cleaning, parking-lot sweeping, striping, and facility-maintenance vendors may be able to grow through BMC contract opportunities they would not normally prospect themselves.


---

# 67. WIC COMMERCIAL BUYERS + RURAL GAP FILL + PROVIDER TRUST REQUIREMENT — 2026-10-26 21:05 ARIZONA

This section continues Sections 63–66 and supersedes the partial Section 67 notes above where there is any ambiguity.

## Standing operating rule

The assistant is still building the initial BMC business universe. The VPS remains the maintenance/delta layer after that initial universe exists.

All external outreach remains OFF unless Brett explicitly approves it.

## Exact clean data checkpoint before this handoff section

The latest full application smoke test covering the WIC + rural-direct artifacts is:

- data/artifact SHA: `405ad994602e2968eabcb67f03f74afe053a7691`
- message: **Fill rural direct service territory gaps**
- BMC Portfolio CI run: **40447696046**
- result: **SUCCESS**
- assistant artifacts: **314**
- raw evidence rows: **73,779**
- strict duplicate rows collapsed: **1,637**
- strict unique artifact seed rows: **72,142**
- strict buyer rows: **56,370**
- strict vendor rows: **15,772**
- markets: **21 / 21**
- inventory lanes: **1,260 / 1,260**
- smoke DB expected/actual: **72,142 / 72,142**
- runtime core failures: **0**

Strict artifact rows by market at this checkpoint:
- Ash Fork: **138**
- Bullhead City: **724**
- Camp Verde: **382**
- Chino Valley: **403**
- Cordes Lakes: **86**
- Cottonwood: **637**
- Dewey-Humboldt: **488**
- Flagstaff: **1,685**
- Golden Valley: **193**
- Kingman: **1,107**
- Mayer: **226**
- Phoenix: **18,490**
- Prescott: **1,687**
- Prescott Valley: **942**
- Scottsdale: **5,971**
- Sedona: **571**
- Seligman: **155**
- Skull Valley: **81**
- Tucson: **37,904**
- Williamson Valley: **46**
- Winslow: **226**

These remain evidence/seed identities, not globally deduplicated legal businesses.

## Arizona WIC grocery / food-retail buyer layer

Exporter:
- `portfolio/automation/export-az-wic-vendor-census.py`

Workflow:
- `.github/workflows/assistant-az-wic-vendor-census.yml`

Successful workflow:
- **40447607595**

Workflow artifact commit:
- `01df21d7b3febf25fefc6ee43302b9a97d2af3fd`
- message: **Seed official Arizona WIC grocery buyer census**

Official source:
- Arizona Department of Health Services WIC authorized-vendor list PDF

Parsed source:
- 538 table rows
- 523 Arizona WIC-authorized vendor rows
- **206 BMC-market grocery/food-retail facilities**

BMC-market WIC rows:
- Bullhead City 3
- Camp Verde 1
- Chino Valley 1
- Cottonwood 4
- Flagstaff 7
- Kingman 5
- Phoenix 94
- Prescott 6
- Prescott Valley 3
- Scottsdale 14
- Sedona 2
- Tucson 64
- Winslow 2

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-az-wic-authorized-vendors-30.json`

Use as:
- buyer
- grocery / food retail
- `official_registry=true`
- government-registry evidence

WIC authorization is evidence that the store is an authorized WIC retailer, not an ADHS endorsement of the store or of any contractor relationship.

## Rural direct service-territory gap fill

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-direct-service-gaps-29.json`

Commit:
- `405ad994602e2968eabcb67f03f74afe053a7691`

Seven direct first-party service-territory rows were added:

Williamson Valley:
- Morgan Tree Service — tree service / brush clearing
- Desert First Cleaning — residential / turnover / small-office cleaning
- Haul It Or Toss It — junk hauling / dumpsters / cleanouts

Skull Valley:
- HOAX Pest Control — pest / rodent control
- Haul It Or Toss It — junk hauling / dumpster service

Cordes Lakes:
- Truly Nolen Prescott Valley branch — pest / termite / rodent / commercial pest control
- Haul It Or Toss It — junk hauling / dumpster service

These are company-owned pages that explicitly name the market or explicit service/trip area. Preserve them as `direct / direct_evidence`.

## Commercial recurring-service agreement strategy

Brett explicitly wants BMC to pursue commercial opportunities that go beyond one-time repair leads.

Priority buyer/property types include:
- gas stations and convenience stores;
- parking-heavy facilities;
- strip malls / shopping centers;
- restaurants;
- hotels;
- multifamily;
- medical/dental/therapy offices;
- schools/churches;
- banks;
- grocery/pharmacy;
- warehouses/fleet yards;
- municipal/public facilities.

Potential recurring services include:
- parking-lot and sidewalk power washing;
- fuel-island / pump-pad cleaning;
- dumpster-pad degreasing;
- oil / grease / gum removal;
- lot sweeping;
- striping / restriping;
- exterior building washing;
- window cleaning;
- recurring janitorial/common-area cleaning;
- junk/bulk removal;
- grounds / seasonal property work.

BMC's opportunity is not merely “find a contractor.” It can identify a facility that has no formal recurring scope, competitive quote, backup vendor or scheduled service and broker a qualified commercial service opportunity.

Do not assume a facility has an unmet need merely because it has a parking lot or fuel pumps. Treat the service need as a prospecting hypothesis until qualified.

This strategy should affect both sides of the census:
- buyer research should identify parking/exterior-maintenance-heavy properties;
- vendor research should explicitly include power-washing, exterior commercial cleaning, parking-lot sweeping, striping and facility-maintenance companies.

## Arizona liquor-license source

Arizona DLLC remains a high-value unresolved buyer source because it could expose:
- restaurants;
- bars;
- hotels;
- grocery/convenience stores;
- clubs/event venues.

The public license search exists, but the old bulk/current extraction paths remain inconsistent and some legacy search endpoints return 403. Do not claim statewide DLLC coverage until a clean extraction route is proven.

## Provider-quality / BMC trust system — REQUIRED FUTURE DESIGN

Brett explicitly raised the risk that a contractor could buy leads/packages, perform poor work, and damage BMC's reputation.

At the same time, BMC must not exclude small local contractors merely because they have fewer online reviews.

This must remain a future pre-scale requirement.

### Principle: quality and confidence are separate

Do not use raw Google review count as the quality score.

A small provider with limited history can be genuinely excellent.

Use:
- **quality/trust** = what the evidence says about performance and safety;
- **confidence** = how much reliable evidence exists.

A low-evidence provider should be “new / lower confidence,” not automatically “low quality.”

### Hard factual eligibility gates

Before ordinary BMC customer work is sent, verify as applicable:
- real business identity / contact;
- active Arizona trade/professional license where legally required;
- license suspension/revocation/discipline status;
- insurance/bond evidence where required or represented;
- category/service-area fit;
- severe authoritative fraud/safety findings if present.

Payment to BMC must never bypass these requirements.

### External reputation evidence

Potential future inputs:
- Google Business reviews;
- Facebook ratings/recommendations;
- BBB complaint/rating information;
- Yelp/category-specific sources;
- Trustpilot where meaningful;
- Nextdoor recommendations where lawfully/technically available;
- Arizona ROC / regulator discipline;
- business age / registration evidence.

Do not violate platform terms or build the system around prohibited scraping. Prefer lawful APIs, licensed access and public evidence.

No one review platform should control provider eligibility.

### BMC's own verified performance should ultimately be strongest

Once jobs flow through BMC, track:
- lead response time;
- accept/decline behavior;
- show/no-show;
- cancellations;
- completion rate;
- customer post-job feedback;
- callbacks/rework;
- refund/dispute rate;
- documented property damage/safety complaints;
- repeat-customer rate;
- quote-to-invoice consistency;
- communication reliability.

This internal verified performance should eventually outweigh public review volume.

### Fair path for small/new contractors

Do not require a large review count.

Possible provider lifecycle:
1. **BMC Verified / New** — credentials checked, limited BMC history.
2. **BMC Proven** — enough completed BMC jobs with healthy outcomes.
3. **BMC Preferred** — sustained strong BMC performance plus clean current credential/reputation evidence.

New providers can receive a limited first wave of jobs/leads to earn confidence rather than being blocked.

### Suggested future trust model

Do not expose one opaque star number alone.

Keep distinct fields:
- credential status;
- quality/trust score;
- evidence-confidence score;
- BMC job-performance score;
- review-source snapshots / timestamps.

Use a Bayesian/Wilson-style confidence adjustment later so:
- 5.0 from 2 reviews does not automatically outrank 4.9 from 500;
- a contractor with 6 good reviews is not penalized simply for being small.

### Commercial separation rule

**Buying a BMC package, territory or leads must never improve trust/quality ranking.**

Revenue and provider quality must remain separate systems.

### Complaint / appeal workflow

Future system should support:
- serious-complaint temporary hold;
- evidence collection;
- provider response;
- credential re-check;
- customer follow-up;
- reinstatement/removal;
- correction/appeal for inaccurate external data.

Prefer factual public badges such as:
- “license verified [date]”
- “BMC jobs completed”
- “BMC performance history available”

Avoid unsupported public labels like “bad contractor.”

## Production distinction

The **72,142-row repository census is not production**.

Latest proven production remains:
- `f05ff6fcf2546de24edda14d58f367c61bb38092`
- 30,518 active v7 production evidence rows

Outbound remains OFF:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

## Immediate next work

Continue assistant-led census construction.

Priority next directions:
1. gas stations / convenience stores and other parking/exterior-heavy buyers;
2. parking lots / strip malls / shopping centers / fleet yards;
3. power-washing, lot-sweeping, striping and commercial exterior-cleaning vendors;
4. hotels/lodging;
5. automotive/fleet;
6. warehouses/manufacturing;
7. grocery/pharmacy and professional offices;
8. continued direct/service-territory vendor research in Williamson Valley, Skull Valley and Cordes Lakes;
9. keep looking for a clean Arizona DLLC extraction path.

Do not stop at arbitrary targets; census lanes remain open-ended.

## Continuity sentence

**The current clean assistant-built repo baseline is 72,142 strict artifact seed rows across 314 auditable JSON artifacts, proven by BMC Portfolio CI run 40447696046 with 72,142/72,142 smoke rows, 21/21 markets, 1,260/1,260 lanes and 0 runtime core failures. The newest work added 206 official Arizona WIC grocery/food-retail buyers and seven direct rural service-territory vendor records. Future design must add a provider trust/quality layer that protects BMC without unfairly excluding small contractors, and the commercial strategy now explicitly includes brokering recurring facility-service agreements such as parking-lot/fuel-island power washing, sweeping, striping and related exterior maintenance. Production remains the older 30,518-row f05ff6 deployment and all outbound remains OFF.**


---

# 68. GAS-STATION / PARKING-LOT COMMERCIAL BUYERS + EXTERIOR-SERVICE MATCHING — 2026-10-26 21:20 ARIZONA

This section continues Section 67 and is the newest handoff checkpoint.

## Brett's newest commercial strategy instruction

Brett explicitly wants BMC to treat parking-heavy and exterior-maintenance-heavy facilities as recurring commercial-opportunity targets, not merely generic business names.

Examples:
- gas stations / convenience stores;
- fuel islands / pump pads;
- dealership lots;
- fleet yards;
- equipment yards;
- strip malls / shopping centers;
- grocery/pharmacy lots;
- restaurants;
- hotels;
- schools/churches;
- medical offices;
- apartment/multifamily properties;
- banks/professional offices;
- public facilities.

Core insight:

**Many facilities already “know a guy,” but BMC can create value by brokering a formal recurring service agreement with a documented scope, pricing cadence, backup coverage and accountable provider relationship.**

Potential recurring agreement scopes:
- parking-lot sweeping;
- parking-lot pressure washing;
- sidewalk / storefront pressure washing;
- fuel-island / pump-pad washing;
- dumpster-pad degreasing;
- oil / grease / gum removal;
- parking-lot striping / restriping;
- exterior building washing;
- commercial window cleaning;
- fleet/equipment washing;
- recurring janitorial/common-area cleaning;
- seasonal property cleanup.

This should become a major B2B lead-product strategy, especially for power-washing, sweeping, striping, commercial-cleaning and facility-maintenance providers.

Do not claim a business needs a service merely because its property type suggests it. Treat these as **service-opportunity hypotheses that require qualification**.

## Exact latest fully green census checkpoint

Latest fully proven application checkpoint before the opportunity-tag-only regeneration:

- data/artifact SHA: `7954d72a6135b338c661e5e74c891c98491408f7`
- BMC Portfolio CI run: **40448250129**
- result: **SUCCESS**
- assistant artifacts: **316**
- raw evidence rows: **76,619**
- strict duplicate rows collapsed: **1,665**
- strict unique artifact seed rows: **74,954**
- strict buyer rows: **59,173**
- strict vendor rows: **15,781**
- markets: **21 / 21**
- inventory lanes: **1,260 / 1,260**
- runtime core failures: **0**

Strict market counts at that checkpoint:
- Ash Fork: **148**
- Bullhead City: **770**
- Camp Verde: **398**
- Chino Valley: **413**
- Cordes Lakes: **87**
- Cottonwood: **660**
- Dewey-Humboldt: **494**
- Flagstaff: **1,821**
- Golden Valley: **199**
- Kingman: **1,201**
- Mayer: **238**
- Phoenix: **19,935**
- Prescott: **1,766**
- Prescott Valley: **966**
- Scottsdale: **6,153**
- Sedona: **588**
- Seligman: **161**
- Skull Valley: **83**
- Tucson: **38,561**
- Williamson Valley: **50**
- Winslow: **262**

These remain evidence/seed identities, not globally deduplicated legal businesses.

Compared with Section 67:
- strict rows: **72,142 -> 74,954** (**+2,812**)
- raw rows: **73,779 -> 76,619** (**+2,840**)
- strict buyers: **56,370 -> 59,173** (**+2,803**)
- strict vendors: **15,772 -> 15,781** (**+9**)

The +2,840 raw rows are exactly:
- **2,831 ADEQ active UST commercial facilities**
- **9 direct rural commercial exterior-service vendor records**

Cross-artifact overlap caused the strict increase to be slightly smaller.

## ADEQ active UST commercial-facility buyer census

Exporter:
- `portfolio/automation/export-adeq-ust-facility-census.py`

Workflow:
- `.github/workflows/assistant-adeq-ust-facility-census.yml`

Official source:
- Arizona Department of Environmental Quality active Underground Storage Tank facility layer
- source is regenerated daily
- active Arizona source facilities: **5,773**
- BMC-market records: **2,831**

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-adeq-active-ust-facilities-31.json`

Key BMC-market facility categories:
- retail / fuel facilities: **1,184**
- general commercial facilities: **790**
- automotive / fleet: **488**
- warehouse / industrial: **136**
- public facilities: **77**
- schools / education: **57**
- grocery / convenience: **43**
- medical: **40**
- property management: **7**
- hotels / lodging: **5**
- churches / nonprofits: **4**

Especially important ADEQ place types:
- **1,087 GAS FILLING STATION - COMMERCIAL**
- **97 GASOLINE FILLING STATION - FLEET**
- **43 GROCERY STORE/CONVENIENCE STORE**
- **218 AUTO/VEHICLE REPAIR FACILITY**
- **152 EQUIPMENT YARD**
- **264 COMMERCIAL PROPERTY**
- **19 BULK FUEL STORAGE**
- plus airports, hangars, industrial plants, warehouses, golf courses, business parks, medical facilities, public facilities and other pavement/exterior-heavy sites.

BMC-market ADEQ facility counts:
- Ash Fork 10
- Bullhead City 46
- Camp Verde 16
- Chino Valley 10
- Cottonwood 23
- Dewey-Humboldt 6
- Flagstaff 136
- Golden Valley 6
- Kingman 94
- Mayer 9
- Phoenix 1,465
- Prescott 79
- Prescott Valley 24
- Scottsdale 183
- Sedona 17
- Seligman 6
- Skull Valley 1
- Tucson 664
- Winslow 36

No literal-city ADEQ UST record mapped to Cordes Lakes or Williamson Valley in this source. Continue direct/service-territory research there.

## Commercial-service opportunity tags added

Commit:
- `e4069f59c0389d92b69f212bea92f3f95e5facbd`
- message: **Tag ADEQ commercial service opportunities**

Regeneration workflow:
- **40448613514**
- result: **SUCCESS**

Workflow-generated artifact head after the tag regeneration:
- `c8ca721ff18842ac604922322b0b8c3764890915`
- message: **Seed ADEQ active UST commercial buyer census**

The ADEQ exporter now adds:
- `commercial_service_hypotheses`
- `opportunity_qualification_required=true`

Examples:

Gas stations / retail fuel:
- fuel-island / pump-pad pressure washing;
- sidewalk/storefront pressure washing;
- dumpster-pad degreasing;
- parking-lot sweeping;
- parking-lot striping/restriping;
- commercial window cleaning.

Fleet / equipment / automotive:
- fleet/equipment washing;
- oil/grease stain cleanup;
- yard/lot sweeping;
- striping;
- exterior washing.

Retail/grocery:
- storefront/sidewalk washing;
- dumpster-pad cleaning;
- sweeping;
- striping;
- window cleaning.

Hotels, multifamily, medical, industrial, public and school facilities receive property-appropriate recurring-service hypotheses as well.

These tags are **prospecting hypotheses, not proof of need**.

This is strategically important because BMC can eventually sell a provider something materially better than a generic list:
- “Arizona gas stations likely worth qualifying for recurring fuel-island/lot cleaning”
- “fleet/equipment yards for washing + sweeping”
- “retail properties for exterior cleaning + striping”
rather than simply a CSV of business names.

## Rural commercial exterior-service vendor expansion

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-commercial-exterior-vendors-32.json`

Commit:
- `0cf21f581cb4145316271e30331e0538abb962be`

Nine direct first-party vendor/service-territory records:

Williamson Valley:
- A&B Gutters & Glass — commercial pressure washing
- Prescott Pressure Washing — exterior/storefront + fleet washing
- Platinum Edge Services — commercial/fleet pressure washing + window cleaning
- Prescott Asphalt Paving — paving / sealcoat / crack repair / striping

Mayer:
- Prescott Pressure Washing
- Platinum Edge Services
- Prescott Asphalt Paving

Cordes Lakes:
- Platinum Edge Services — commercial/fleet exterior service

Skull Valley:
- Prescott Asphalt Paving — lot paving / striping / maintenance

Notable provider-quality evidence already exposed by direct sites:
- Platinum Edge advertises **$2M general liability** and says it can provide COI, W-9 and vendor-onboarding documentation.

Do not promote that as BMC-verified insurance until independently verified at onboarding; preserve it as provider-claimed direct-site evidence.

## ADOT valid-dealer commercial buyer source — currently blocked

ADOT's official Dealer Licensing page exposes a **Valid Dealer Report**, updated every Tuesday and Thursday.

Current public report discovered by the assistant:
- `https://apps.azdot.gov/files/26/valid-dealer-report/Report-2026-10-22-00-14-59.xls`

This would be a useful automotive/dealership buyer layer because dealerships have:
- large paved lots;
- storefront glass;
- vehicle inventory;
- service bays;
- fleet/detailing needs;
- recurring striping/sweeping/exterior-cleaning opportunity.

However:
- ADOT landing page returns HTTP 403 to GitHub Actions;
- the direct XLS currently also returns HTTP 403 to GitHub Actions;
- assistant container download did not provide a usable alternate extraction path.

Workflow failures:
- **40448400556**
- **40448586845**

Do not weaken source-validation checks and do not fabricate the dealer artifact.

Keep ADOT as a high-value unresolved source; continue with other productive sources until a clean extraction path is found.

## Provider trust requirement remains active

Section 67 contains the full future trust-system requirement.

Key rule remains:

**A provider's payment to BMC must never improve its trust/quality ranking.**

Quality and confidence remain separate:
- quality = credentials/safety/performance evidence;
- confidence = quantity/reliability of evidence.

Small contractors must have a fair path into BMC through credential verification and limited/probationary BMC work history rather than being excluded for low review counts.

## Production distinction

The 74,954-row repository census is **not production**.

Latest proven production remains:
- `f05ff6fcf2546de24edda14d58f367c61bb38092`
- **30,518 active v7 production evidence rows**

Outbound remains OFF:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

## Immediate next work

Continue assistant-led census building.

Priority:
1. more parking-heavy commercial buyers;
2. shopping centers / strip malls;
3. dealerships / automotive service / fleet yards;
4. warehouses / manufacturing / distribution;
5. hotels/lodging;
6. grocery/pharmacy;
7. direct commercial power-washing / sweeping / striping / window-cleaning vendors;
8. recurring janitorial/facility-maintenance vendors;
9. continued rural service-territory coverage for Cordes Lakes, Skull Valley and Williamson Valley;
10. keep DLLC and ADOT as unresolved high-value official sources without letting them block productive work.

Also preserve opportunity tags/hypotheses where they make future lead packages more actionable.

## Continuity sentence

**The newest fully green repository checkpoint is 74,954 strict artifact seed rows across 316 auditable JSON artifacts, proven by BMC Portfolio CI run 40448250129 with 21/21 markets, 1,260/1,260 lanes and 0 runtime core failures. The newest commercial expansion added 2,831 official ADEQ active UST facilities—including 1,087 commercial gas stations, 97 fleet fueling sites, 218 auto-repair sites and 152 equipment yards—and nine direct rural commercial exterior-service vendor records. ADEQ records now carry qualified-service hypotheses for power washing, fuel-island cleaning, sweeping, striping, window cleaning and related recurring facility services. The provider trust requirement from Section 67 remains mandatory. Production remains the older 30,518-row f05ff6 deployment and all outbound remains OFF.**

---

## Section 69 — Property managers, recovery housing, garages, casinos, retail centers + provider-flow finding

Updated: 2026-10-26 late evening Arizona time

This section continues Section 68. Assistant-led census expansion remains the immediate work. Do not mistake the research census for production, and do not turn outbound on.

### New fully green census checkpoint

BMC Portfolio CI run:
- **40450028535**
- result: **SUCCESS**
- commit proven: `a52d464f5db41acfb8525bba5f311906a2ee9771`

Strict assistant census at this proven point:
- **321 artifacts**
- **76,699 raw artifact rows**
- **1,673 exact strict duplicates collapsed**
- **75,026 strict unique seed rows**
- **59,217 buyer rows**
- **15,809 vendor rows**
- **21/21 markets**
- **1,260/1,260 deep inventory lanes**
- **0 runtime core failures**

This supersedes the Section 68 74,954-row / 316-artifact checkpoint.

Two later research commits are newer than this fully proven checkpoint and have CI in progress as this handoff section is written:
- `fac86350868a719b0e410aa39fce405d3973f3e2` — direct property-management expansion
- `4fdd0b4ffddfdd19e9f914a19f36d34c7bd60d0b` — shopping-center management buyers

When continuing, check their CI first and use the newest green strict count rather than estimating.

### Rural commercial-maintenance provider expansion

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-statewide-commercial-maintenance-vendors-33.json`

Commit:
- `cbf128c5308242ea721c5aa6759ff2ab5b3c5a4d`
- CI **40449349553 SUCCESS**

Added **28 provider-market records** across:
- Williamson Valley
- Mayer
- Cordes Lakes
- Skull Valley

Providers include:
- J & B Striping LLC
- Maurer Sealing & Striping
- Dirty's Power Washing and Cleaning Services, LLC
- PowerWash Pro
- WCD Enterprises LLC
- Bio-Janitorial Service Inc
- The DM Caldwell Corporation

Evidence standard:
- direct company statewide Arizona service claims; or
- active Arizona State Procurement Office statewide/all-region or rural janitorial contract evidence.

Important:
- state contract evidence proves capability/coverage evidence, not private-market availability;
- statewide service claims still require mobilization/minimum-job qualification before routing;
- no provider is promoted or trust-ranked merely because it appears here.

### Mayer-area commercial facility gap fill

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-mayer-commercial-facility-gap-fill-34.json`

Commit:
- `7c06941823e23f8af1e0a2e4e32a16db07a776b4`
- CI **40449382276 SUCCESS**

Three direct-site buyer facilities:
- Bumble Bee Ranch Adventures
- Arcosanti
- Mayer RV Storage

Each carries property-appropriate recurring-maintenance hypotheses such as:
- exterior cleaning;
- sweeping;
- striping;
- windows;
- event/facility cleanup;
- entry/gate/grounds maintenance.

All opportunity tags remain **needs qualification**.

### Property-management buyer lane

Owner explicitly requested:
- Rent Right-style property managers;
- BloomTree-style management companies;
- property firms found through Zillow/Apartments.com and similar portals;
- out-of-area managers who may need local workers;
- apartment / multifamily / portfolio managers.

Strategic interpretation:
**A property manager is an aggregated buyer account.**
One relationship can represent many recurring maintenance decisions across homes, apartments, HOAs, commercial properties or mixed portfolios.

Do not pitch these companies as if BMC is trying to replace all of their preferred vendors.
The stronger offer hypothesis is:
- overflow vendor coverage;
- emergency/local gap coverage;
- turnover/make-ready help;
- local contractor sourcing in markets where they lack depth;
- a single BMC intake/coordination layer when their normal vendor is unavailable;
- recurring exterior/common-area work for larger properties.

Relevant artifacts/commits:

`portfolio/data/assistant-research-bootstrap-2026-10-26-property-management-vendor-coordination-buyers-35.json`
- commit `b76122c8567ee9d7e87a6d801722ea54aff8be16`
- CI **40449672142 SUCCESS**
- **17 buyer-market records**
- examples: 480 Realty & Property Management, Far West Realty & Property Management, Rosenbaum Realty Group, Hello Home, CR Property Services, Arizona Commercial Real Estate, Abodia Properties.

`portfolio/data/assistant-research-bootstrap-2026-10-26-property-management-portfolio-buyers-35.json`
- commit `c5bcfd972bef6267bacce7f568420f1421b7ca5d`
- CI **40449955949 SUCCESS**
- **14 buyer-market evidence records**
- adds/strengthens Fortress Property Management, CR Property Services, Rosenbaum, 480 Realty and multi-market coverage.

`portfolio/data/assistant-research-bootstrap-2026-10-26-property-management-direct-expansion-37.json`
- commit `fac86350868a719b0e410aa39fce405d3973f3e2`
- **11 buyer-market records**
- CI was still in progress when this section was written.
- includes Property Pros Realty, Hello Home, Sedona Verde Valley Property Management, AZ Realty & Rentals and Bear Creek Real Estate & Property Management.
- AZ Realty & Rentals is especially important because its direct site explicitly lists Phoenix, Scottsdale, Tucson, Sedona, Prescott and Flagstaff.

Discovery rule:
- Zillow, Apartments.com, Realtor.com, rental portals and similar sources are useful **discovery sources**.
- They must not auto-promote a management company into a trusted/current BMC buyer record by themselves.
- Prefer direct management-company site, current management portal, current portfolio page, professional registry or other direct/authoritative confirmation.

Future data-quality improvement:
- strict artifact deduplication currently collapses exact key duplicates, but the same company can remain as multiple evidence rows if source URLs differ.
- preserve useful multi-source evidence but eventually add a business/entity rollup so BMC can distinguish **evidence rows** from **unique companies/accounts**.

### Recovery / sober-living / residential-treatment buyer lane

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-recovery-garage-casino-buyers-36.json`

Commit:
- `a52d464f5db41acfb8525bba5f311906a2ee9771`
- CI **40450028535 SUCCESS**

Recovery/sober-living additions include:
- Royal Life Centers at Chapter 5 — Prescott
- Miracle Recovery — Prescott Valley
- Regency Recovery & Wellness Center — Prescott
- Prescott Recovery Center — Prescott
- Sustony Sober Living LLC — Prescott Valley

Clarification:
- **Chapter 5 is a local Royal Life Centers residential treatment facility**, not a housing program category.
- Treat rehab, sober-living and transitional/supportive housing as separate facility-buyer lanes.

Opportunity hypotheses:
- janitorial / housekeeping;
- floors / carpet;
- laundry/linen where applicable;
- plumbing/HVAC/electrical;
- landscaping;
- pest control;
- windows / pressure washing;
- junk / bulk-item / turnover cleanup.

Do not assume these facilities need a new vendor merely because they operate residential programs.

### Structured parking / garage lane

Same artifact/commit as above.

Added official/current structured-parking targets:
- Tucson Centro Garage
- Tucson Pennington Street Garage
- Tucson City-State Garage
- Tucson Library Garage
- Tucson Depot Plaza Garage
- Scottsdale Civic Center Parking Garage

Opportunity hypotheses:
- sweeping;
- litter removal;
- oil/grease cleanup;
- pressure washing;
- stairwell/elevator-lobby cleaning;
- striping / curb / ADA / directional markings;
- lighting/electrical;
- graffiti removal;
- drain/wash-down maintenance.

Municipal procurement rules apply. These are buyer targets for qualification, not normal cold-commercial accounts.

### Casino / gaming facility lane

Same artifact/commit as above.

New non-duplicate casino/gaming facility records include:
- Bucky's Casino — Prescott
- Yavapai Casino — Prescott
- Twin Arrows Casino — Flagstaff
- Casino Arizona — Scottsdale
- Casino Del Sol — Tucson
- Casino of the Sun — Tucson
- Desert Diamond Casino - Tucson — Tucson

Cliff Castle and Talking Stick already existed elsewhere in the census and were not duplicated here.

Source basis:
- current Arizona Department of Gaming facility information and direct/current facility evidence.

Opportunity hypotheses:
- large-lot sweeping / striping;
- sidewalks / entrances / loading areas;
- windows;
- dumpster/grease areas;
- janitorial / floor care;
- landscaping;
- signage/lighting;
- HVAC/plumbing/electrical;
- pest/waste services.

Respect tribal sovereignty, procurement, insurance, credential and vendor-registration requirements.

### Shopping-center / retail property-management lane

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-shopping-center-management-buyers-38.json`

Commit:
- `4fdd0b4ffddfdd19e9f914a19f36d34c7bd60d0b`
- **11 current/direct retail-property records**
- CI was still in progress when this section was written.

New centers:
- The Promenade Scottsdale
- Depot Marketplace — Prescott
- Glassford Hill Marketplace North — Prescott Valley
- Grand Canyon Crossing — Phoenix
- Sheridan Square — Phoenix
- Huntington Square — Phoenix
- Mesa Vista Marketplace — Phoenix
- Sun City Promenade — Phoenix
- Cortaro Crossings — Tucson
- Plaza 22 — Tucson
- Cañada Crossroads — Tucson

This is a high-value buyer lane because centralized property management can control:
- parking;
- common areas;
- storefront/sidewalk standards;
- landscaping;
- lighting/signs;
- janitorial;
- recurring exterior maintenance.

A single center/management-company relationship may create repeated work across many tenants and service categories.

### Provider fake-join workflow test — important UX defect

Owner personally submitted a fake provider application through the public BMC provider form.

Observed behavior:
1. the initial provider application was accepted;
2. an email was received;
3. the email CTA sent the applicant to the Provider Pilot Terms page;
4. that page's primary CTAs send the person back to `/providers/#apply`;
5. the applicant is effectively asked to start the join process again.

This is a **bad loop** and must be fixed before serious provider recruitment.

Current code confirms:
- public provider form posts `form_type=vendor_partner` to `https://hooks.bmcservicenetwork.com/api/intake`;
- backend `handle_vendor_application()` creates an applicant vendor record, market record, review exception and `application_received` event;
- a separate `/provider-pilot-activate/` flow and `handle_vendor_pilot_activation()` already exist;
- however, the ordinary applicant receipt email currently links to `/provider-pilot/` terms rather than a continuation/activation URL;
- `/provider-pilot/` then links back to the original application;
- the activation form itself repeats multiple fields already captured by the initial application.

Desired future behavior after the census/research push:
- application is submitted **once**;
- BMC persists the applicant record;
- email CTA continues that exact record using a secure/tokenized link;
- continuation page is prefilled from stored application data;
- ask only for missing/changed activation details (capacity, precise services, credentials, insurance, territory/minimums as needed);
- show a clear status/next step;
- never send the applicant back to a blank duplicate application.

### Receipt-delivery audit fix already committed

Commit:
- `0b230ffe3b98f43ef43c128142d525ada19508da`
- message: **Audit provider application receipt delivery**
- CI **40450063138 SUCCESS**

Before this fix:
- `handle_vendor_application()` called `send_mail()` but discarded the return value;
- a provider application could be stored successfully while receipt delivery silently failed.

After this fix:
- successful receipt delivery logs `application_receipt_sent`;
- failed receipt delivery creates a high-severity `vendor_application_receipt_delivery_failure` exception;
- failure also logs `application_receipt_delivery_failed`.

This does **not** fix the duplicate/looping activation UX. It only makes receipt delivery auditable.

### Mandatory post-research website/workflow audit

Owner explicitly requested that once the major research census is complete, BMC perform an in-depth review of **all website lead capture and engagement workflows**.

Do not limit that review to provider signup.

Audit end-to-end:
- customer service request forms;
- facility-maintenance request;
- provider application;
- provider pilot/activation;
- provider login/dashboard;
- provider accept/pass;
- provider job updates;
- customer matched-provider notifications;
- Growth Pack purchase/intake;
- buyer/facility outreach landing paths;
- Stripe checkout/webhook/order linkage;
- email receipts and follow-ups;
- exception handling;
- duplicate submissions/idempotency;
- mobile UX;
- every CTA after an email;
- every success/failure state;
- every place where the user is asked to re-enter information already stored.

Goal:
**No dead ends, no loops, no duplicate forms, no unclear “what happens next,” and no silent email failures.**

### Immediate research continuation

Continue census building before the full workflow audit.

High-value lanes now:
1. more property-management and apartment/multifamily portfolio operators;
2. HOA/community-management companies;
3. supportive/transitional/sober-living housing and residential facilities;
4. more shopping-center/strip-mall ownership and management portfolios;
5. parking structures and large paved commercial facilities;
6. casinos/gaming/resort properties;
7. warehouses/distribution/manufacturing/fleet yards;
8. hotels/resorts;
9. commercial power washing / sweeping / striping / window / janitorial providers;
10. thin rural service-territory coverage;
11. keep ADOT dealer data and DLLC as unresolved high-value sources without blocking productive work.

Preserve the Section 67 provider-trust requirement:
**paying BMC can never buy a better quality/trust rank.**

### Production distinction remains mandatory

Research census is still **not production**.

Latest proven production remains:
- `f05ff6fcf2546de24edda14d58f367c61bb38092`
- **30,518 active v7 production evidence rows**

Outbound remains OFF:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

### Continuity sentence

**The newest fully proven checkpoint at the time Section 69 was written is 75,026 strict research seed rows across 321 artifacts, green in BMC Portfolio CI 40450028535 with 21/21 markets, 1,260/1,260 lanes and zero runtime core failures. The newest expansion adds aggregated property-manager buyers, recovery/sober-living facilities, structured parking garages, casinos, rural statewide commercial-maintenance vendors and centrally managed shopping centers. Two later census commits (fac8635 and 4fdd0b4) were still in CI and should be checked first in the next continuation. The owner's fake provider signup proved the initial application/email path works but exposed a severe UX loop: the receipt email goes to pilot terms, whose CTA sends the applicant back to the original application. After the census push, perform a full end-to-end website/lead workflow audit. Production remains the older 30,518-row f05ff6 deployment and all outbound remains OFF.**



## Section 70 — HOA/multifamily portfolios, supportive housing, Prescott/Phoenix garages + live provider-funnel defect

Updated: 2026-10-26 late evening Arizona time

This section supersedes the Section 69 census checkpoint. The manual assistant-led commercial-buyer expansion in this thread is complete enough to shift the **next major work block** toward an end-to-end public website/lead workflow audit. Research itself remains open-ended and should continue to be maintained/expanded later; do not interpret this as “the census can never grow again.”

### New fully green research checkpoint

Newest BMC Portfolio CI:
- **40450885806**
- result: **SUCCESS**
- proven commit: `ec0f66c93618d3c06458877514a8c603380d939c`

Strict assistant census:
- **327 artifacts**
- **76,771 raw artifact rows**
- **1,673 exact strict duplicates collapsed**
- **75,098 strict unique seed rows**
- **59,289 buyer rows**
- **15,809 vendor rows**
- **21/21 markets**
- **1,260/1,260 deep inventory lanes**
- **0 runtime core failures**

This supersedes:
- Section 69: 75,026 strict rows / 321 artifacts
- shopping-center checkpoint: 75,048 / 323
- HOA/multifamily checkpoint: 75,074 / 324
- Northern AZ supportive-housing checkpoint: 75,086 / 325
- Prescott/Phoenix parking-garage checkpoint: 75,092 / 326

### HOA / community-association / multifamily portfolio buyers

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-hoa-multifamily-portfolio-buyers-39.json`

Commit:
- `30fcbd7177ead129f5a1d4e19d5d659fb5ae7a32`
- BMC Portfolio CI **40450609828 SUCCESS**
- **26 buyer-market records**

Important aggregated buyer accounts now include:
- HOAMCO — Prescott, Scottsdale, Flagstaff, Sedona, Bullhead City, Tucson
- FirstService Residential Arizona — Phoenix, Scottsdale, Tucson
- Associa Arizona — Scottsdale, Tucson
- Tri-City Property Management Services — Prescott, Phoenix, Flagstaff/Coconino service territory
- Cadden Community Management — Tucson, Phoenix
- Trestle Management Group — greater Phoenix
- P.B. Bell — Phoenix, Scottsdale, Prescott Valley, Cottonwood, Sedona
- Chamberlin + Associates — Phoenix, Tucson
- Mark-Taylor — Phoenix, Scottsdale

Why these are strategically important:
- these are **aggregated buyers**, not single buildings;
- one relationship can represent many HOAs, apartment communities or properties;
- several directly describe formal vendor-management workflows.

Especially strong buying-signal evidence:
- Tri-City says it is **always looking for new vendors**, requires vendor onboarding, and says it finds bids for client projects;
- Trestle describes a preferred-vendor program that evaluates vendors, solicits bids, awards contracts and monitors work;
- Cadden uses portfolio-wide vendor compliance and says approved vendors can gain exposure across the management firm’s portfolio;
- FirstService says it assists with vendor RFPs/job specifications and coordinates staff, subcontractors and vendors;
- Associa exposes a “partner with us” path for service providers;
- P.B. Bell says its renovations/maintenance operation includes vendor coordination.

BMC offer hypothesis:
**Do not ask managers to replace every preferred vendor. Sell supplemental local depth.**
Best positioning:
- overflow coverage;
- emergency gaps;
- specialty-trade sourcing;
- turnover/make-ready;
- remote/out-of-area local contractor sourcing;
- competitive bid sourcing when requested;
- recurring exterior/common-area services.

### Northern Arizona supportive / transitional / affordable housing operator expansion

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-supportive-transitional-housing-buyers-40.json`

Commit:
- `b41c39310c600b20d48897720c34b44f669f68fd`
- BMC Portfolio CI **40450719064 SUCCESS**
- checkpoint after commit: **75,086 strict rows / 325 artifacts**
- **12 facility/operator records**

Added/strengthened:
- Prescott Area Shelter Services (PASS)
- Agape House of Prescott — Prescott + Prescott Valley
- Coalition for Compassion and Justice (CCJ)
- Stepping Stones Agencies
- NAZCARE Hope House
- NAZCARE New Hope House
- Yavapai Territorial Gospel Rescue Mission
- Housing Solutions of Northern Arizona — Flagstaff
- Housing Solutions / Oak Wash Homes — Cottonwood
- Flagstaff Shelter Services
- Verde Valley Sanctuary

Important privacy rule added:
**Never collect, store, publish or expose confidential shelter addresses.**
Use public organization-level contacts and public facilities only.

These organizations are buyer candidates because they operate buildings/housing portfolios that can require:
- janitorial;
- floors/carpet/laundry-area maintenance;
- HVAC/plumbing/electrical/fire safety;
- landscaping/exterior work;
- pest/waste;
- windows/pressure washing;
- turnover/make-ready;
- parking/lighting.

Do not infer need from resident vulnerability and do not market based on protected/sensitive resident circumstances.

### Prescott + Phoenix structured parking completion

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-prescott-phoenix-parking-garages-41.json`

Commit:
- `abe39e13a2bbee4e12b9b320b219c2c1b1afa136`
- BMC Portfolio CI **40450760418 SUCCESS**
- checkpoint after commit: **75,092 strict rows / 326 artifacts**
- **6 new garage records**

Added:
- Garage on Granite — Prescott
- Phoenix Convention Center West Garage
- Phoenix Convention Center North Garage
- Phoenix Convention Center East Garage
- Phoenix Convention Center Heritage Garage
- Phoenix Convention Center Regency Garage

Official Phoenix material says the Convention Center operates/manages about 4,500 downtown parking spaces across its garage system.

Opportunity hypotheses:
- sweeping;
- oil/grease cleanup;
- wash-down / pressure washing;
- stairwell/elevator-lobby cleaning;
- striping / curb / ADA / directional markings;
- lighting/electrical;
- graffiti removal;
- drains;
- signage/wayfinding.

Municipal procurement/incumbent-contract rules apply.

### Phoenix + Tucson supportive-housing operator completion

Artifact:
- `portfolio/data/assistant-research-bootstrap-2026-10-26-phoenix-tucson-supportive-housing-buyers-42.json`

Commit:
- `ec0f66c93618d3c06458877514a8c603380d939c`
- BMC Portfolio CI **40450885806 SUCCESS**
- this is the **75,098 / 327** checkpoint
- **6 operator-level buyer records**

Added:
- Native American Connections — Phoenix
- UMOM New Day Centers / Helping Hands Housing Services — Phoenix
- Central Arizona Shelter Services (CASS) — Phoenix
- The Primavera Foundation — Tucson
- Old Pueblo Community Services — Tucson
- Gospel Rescue Mission — Tucson

Notable scale/current-source facts:
- Native American Connections says it has developed, owns and manages about **1,000 units** of affordable/supportive/youth housing;
- UMOM says its housing subsidiary has built **1,000+ units** in the Valley; UMOM also states the affordable properties are managed by **Biltmore Properties**, so purchasing authority must be qualified between owner/operator/manager;
- CASS operates multiple Phoenix shelter facilities;
- Primavera and OPCS operate multiple Tucson housing/supportive-housing programs.

### Real-world provider signup test — initial intake worked, but the funnel is broken

The owner personally submitted a fake BMC provider application through the public site and received the provider application email.

That proves at least one real public path successfully traversed:
- public `/providers/#apply` form;
- `form_type=vendor_partner`;
- `https://hooks.bmcservicenetwork.com/api/intake`;
- backend `handle_vendor_application()`;
- database applicant creation;
- transactional SMTP receipt delivery.

This is stronger evidence than code inspection alone.

However the actual UX after receipt is poor:

Current path:
1. provider submits `/providers/#apply`;
2. backend creates an `app_<slug>_<uuid8>` vendor with status `applicant`;
3. receipt email button says **“Review the provider pilot terms”**;
4. email button links to **`/provider-pilot/`**;
5. `/provider-pilot/` primary CTA links back to **`/providers/#apply`**;
6. provider is effectively asked to fill out the application again.

The owner experienced this exact loop in the live site.

### Existing intended activation path already exists

There is already a separate:
- `/provider-pilot-activate/`

It submits:
- `form_type=vendor_pilot_activation`
- hidden `vendor_id`
- territory
- markets/services
- capacity
- minimum job
- credentials/insurance
- pilot terms

Backend already has:
- `handle_vendor_pilot_activation()`

That handler:
- requires `vendor_id`;
- requires pilot terms acknowledgement;
- loads the existing vendor;
- updates provider operating details;
- creates a review exception;
- logs `pilot_activation_submitted`;
- leaves final activation under review.

So the system already has most of the intended second-step flow; it is just not connected correctly from the receipt/approval path.

### Do NOT “fix” the loop by merely putting vendor_id in a public URL

Important security/workflow issue discovered during tracing:

The current activation form trusts a hidden `vendor_id`.
`handle_vendor_pilot_activation()` does **not** currently validate a one-time activation token.

Therefore the future fix should use a:
- one-time signed activation token; or
- short-lived provider onboarding token tied to vendor_id/email/application state.

Do **not** simply change the receipt link to:
`/provider-pilot-activate/?vendor_id=...`
and call the workflow finished.

The activation endpoint should verify the onboarding token before allowing record changes.

### Duplicate-application risk is real

Current `handle_vendor_application()` always creates a new ID:
- `app_<business-slug>_<random uuid8>`

The `vendors` table has:
- primary key on `vendor_id`
- **no unique constraint on normalized email/business/domain**

Therefore repeated submissions of the same application can create duplicate applicant records.

Because the current receipt loop sends applicants back to the application, this is not theoretical.

Future workflow audit must add application idempotency/deduplication, likely using some combination of:
- normalized business name;
- email;
- phone/domain;
- submission id/idempotency key;
- recent-application window;
- explicit “continue existing application” behavior.

Do not use a simplistic global unique-email constraint because one business may legitimately have multiple contacts and one contact may represent multiple businesses.

### Provider receipt delivery audit patch is green

Commit:
- `0b230ffe3b98f43ef43c128142d525ada19508da`
- message: **Audit provider application receipt delivery**
- BMC Portfolio CI **40450063138 SUCCESS**

Before this patch:
- `handle_vendor_application()` called `send_mail()` and ignored the boolean result.

Now:
- successful receipt delivery logs `application_receipt_sent`;
- failed delivery creates a high-severity `vendor_application_receipt_delivery_failure` exception;
- failure logs `application_receipt_delivery_failed`.

This does not fix the UX loop; it makes receipt delivery observable.

### Required next major work block: full public workflow / lead-capture audit

The owner explicitly requested that after the manual research push, BMC review **all website workflows in depth** for capturing website leads and engagement.

Do this before turning outreach on.

Audit must be real end-to-end behavior, not only static HTML/code checks.

At minimum test:

1. Provider acquisition
- provider landing page;
- application;
- receipt;
- terms;
- secure activation;
- review/approval;
- provider login;
- dashboard;
- availability/settings;
- request offer;
- accept/pass;
- job update;
- outcome tracking.

2. Customer service-request acquisition
- every major service landing page;
- generic/universal request;
- service-search / AI-assisted classification;
- confirmation state;
- email receipt;
- provider-match state;
- exception/no-provider state;
- customer/provider contact release.

3. Facility-management buyer flow
- multi-service facility request;
- child-request splitting;
- each requested service routing;
- buyer receipt;
- no-provider handling;
- recurring facility-account follow-up.

4. Growth Pack / paid product flow
- offer page;
- checkout;
- Stripe webhook;
- payment status;
- intake linking;
- fulfillment queue;
- receipt/delivery;
- duplicate payment/idempotency handling.

5. Email and CTA continuity
For every transactional email:
- every button must lead to the correct **next** step;
- no CTA may restart a completed step;
- state/context must survive the click;
- expired/used links need understandable recovery;
- no dead pages/loops.

6. Form idempotency / deduplication
- double-click;
- refresh/resubmit;
- browser back;
- duplicate webhook;
- same email/business repeat signup;
- same customer request repeat.

7. Analytics/engagement capture
After functional correctness:
- source page;
- service/city landing page;
- referral/UTM-like attribution where appropriate;
- conversion step;
- abandoned-step visibility where privacy-appropriate;
- do not add invasive tracking merely for vanity metrics.

8. Mobile and plain-language UX
- verify all major funnels on narrow/mobile layouts;
- keep public copy at the owner’s preferred plain 6th–8th grade reading level;
- remove internal/meta language.

Current static form validation only confirms field contracts.
It does **not** prove the sequence makes sense to a human.
The owner’s live fake signup demonstrated why synthetic + human-flow testing is necessary.

### Sales implication from this expansion

There is a credible first-sale path in the new census.

Strongest near-term buyer hypothesis:
**property managers / HOA managers needing supplemental vendor coverage.**

Why:
- several explicitly seek/onboard vendors;
- they already solicit bids and coordinate maintenance;
- they can represent many properties;
- BMC can begin as overflow/local-gap coverage rather than demanding exclusivity.

Strongest provider-side packaged-data hypothesis:
- gas stations / fuel sites;
- fleet/equipment yards;
- shopping centers;
- parking garages;
- property-management portfolios;
- multifamily communities;
- hotels/resorts;
- recurring exterior-cleaning/sweeping/striping opportunities.

BMC can eventually sell a pressure-washing / sweeping / striping / commercial-cleaning provider something closer to:
“qualified recurring-commercial targets by property type and territory”
rather than a generic business list.

Do not begin outbound until the website/workflow audit and launch gates are actually ready.

### Provider trust requirement remains mandatory

Keep Section 67 rule:

**Paying BMC can never improve a provider’s quality/trust ranking.**

Quality and evidence-confidence remain separate.
Small contractors must not be excluded merely for having fewer public reviews.

### Production distinction remains mandatory

Research census is **not production**.

Latest proven production remains:
- `f05ff6fcf2546de24edda14d58f367c61bb38092`
- **30,518 active v7 production evidence rows**

Outbound remains OFF:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

### Immediate continuation instruction

The assistant-led census has now covered the owner’s newest requested buyer lanes:
- property managers / multi-property managers;
- HOA/community managers;
- multifamily portfolio managers;
- rehab/recovery/supportive/transitional housing operators;
- parking garages;
- casinos;
- shopping centers/strip malls;
- commercial cleaning/exterior opportunities;
- rural commercial provider gaps.

Research should remain open-ended and future source additions are still welcome, but the **next major work block should now be the end-to-end public website + lead workflow audit**, starting with the provider application/activation loop discovered by the owner.

Do not turn outbound on as part of that audit.

### Continuity sentence

**Newest fully green research checkpoint: 75,098 strict unique seed rows across 327 auditable artifacts, with 59,289 buyer rows and 15,809 vendor rows, proven by BMC Portfolio CI 40450885806 at commit ec0f66c93618d3c06458877514a8c603380d939c; all 21 markets and all 1,260 deep inventory lanes remain covered with zero runtime core failures. The newest manual expansion added HOA/community and multifamily portfolio buyers, supportive/transitional/affordable housing operators, Prescott/Phoenix structured parking, and additional Phoenix/Tucson housing operators. The owner’s live fake-provider signup proved public intake + database + SMTP can work but exposed a severe loop: the receipt email sends the applicant to pilot terms whose CTA sends them back to the original application. The intended activation page already exists but currently trusts a bare vendor_id, and repeat applications can create duplicate applicant records. Next major work is a full end-to-end public website/lead workflow audit before any outreach is enabled. Production remains the older 30,518-row f05ff6 deployment and all outbound remains OFF.**


---

## 71. GROWTH INTELLIGENCE PHASE 1 + PRESERVATION SNAPSHOT — 2026-10-26

Owner asked for the new Growth Intelligence direction to be fully planned in Git without deleting days of Service Network work/research.

### Preservation completed

Created branch:
- `archive/service-network-pre-growth-pivot-2026-10-26`

Pinned to proven pre-pivot checkpoint:
- `a6b8e46d01e02ec55a876861cc22529eb3ea6677`

This preserves:
- 75K+ census/research assets;
- all service pages/market pages;
- provider/facility workflows;
- Stripe/payment work;
- matching/routing;
- research automation;
- CI/runtime controls.

Nothing was deleted or dismantled.

### New authoritative Phase 1 plan

Added:
- `portfolio/automation/GROWTH_INTELLIGENCE_MASTER_PLAN.md`

Decision:
- Growth Intelligence becomes Phase 1 proof target;
- Service Network becomes preserved Phase 2 priority;
- BMC tests multiple eligible niches in parallel rather than betting only on pressure washing or another single niche.

Core money model:
- free 5 qualified commercial prospects;
- $499 100-prospect Growth Pack;
- sequential premium upgrade;
- smaller downsell only after a no;
- recurring fresh-prospect continuity after fulfillment;
- live Service Network opportunities/territories later.

### Qualification rule

Growth Packs are **qualified commercial prospects**, not implied active buyers.

Hard gates include:
- active/current;
- geography;
- ICP/property fit;
- service-use evidence;
- public business contactability;
- freshness;
- dedupe;
- truthful intent wording.

Initial score:
- service/ICP fit 25;
- geography 15;
- applicable-use evidence 20;
- contactability 15;
- active verification 10;
- account/recurring value 10;
- freshness/novelty 5.

A = 80-100; B = 65-79; below 65 is not delivered. Hard gates override score.

### Autonomous niche tournament

Yes, the VPS should test many eligible service niches.

Pattern:
1. offline inventory/sample audit;
2. 25-outreach exploration cells;
3. one material challenger variation for weak cells;
4. advance promising cells toward 100 valid targeted outreaches;
5. durable kill/change rule at 100 with no meaningful interest;
6. allocate later volume roughly 70% winners / 20% challengers / 10% exploration;
7. keep exact niche + market attribution;
8. retest paused cells after material data/offer/season change.

Do not launch every niche blindly before sender/sample/qualification gates work.

### Next engineering task

Build **qualification + experiment engine** before another broad public-site redesign:
- deterministic scoring;
- evidence fields;
- reserve inventory calculation;
- sample generator;
- niche-market experiment state;
- pause/promote/retest logic;
- synthetic journey;
- outcome feedback.

Outbound remains OFF until the Growth-specific launch gates in the master plan are satisfied.


---

## 72. NOVEMBER 30 REVENUE DEADLINE — 2026-10-26

Owner disclosed a material financial constraint: BMC needs to show real cash payoff by **November 30, 2026**.

This is now a project-level priority.

November is a **revenue-validation sprint**, not a broad build month.

Authoritative rules were added to:
- `portfolio/automation/GROWTH_INTELLIGENCE_MASTER_PLAN.md`

Key implications:
- no major new feature work unless it directly improves acquisition, checkout, fulfillment, deliverability/compliance, or measurement;
- Growth qualification/sample/experiment engine is the immediate engineering priority;
- test multiple niches in parallel using bounded cells;
- move capacity toward niches that produce real paid orders;
- pause losers early rather than burning the month;
- first paid orders receive human QA, then repeated QA rules become automation;
- scoreboard is real Stripe revenue and fulfilled orders, not research/database size or theoretical lead value;
- preferred November target is roughly $2K-$5K gross collected, but this is a target, not a guarantee;
- if hundreds of valid targeted contacts across properly executed niche tests produce no meaningful paid demand, stop treating the current Growth offer as validated and redeploy preserved assets.

No Service Network assets were deleted. Archive branch remains:
`archive/service-network-pre-growth-pivot-2026-10-26`


---

## 73. FIRST REVENUE LANE LIVE — PRESSURE WASHING GROWTH INTELLIGENCE — 2026-10-27

This section is the authoritative next-thread checkpoint for the Growth Intelligence launch.

### Preserve all prior Service Network work

Do **not** delete, replace, or rebuild the Service Network assets merely because Growth Intelligence is the active revenue lane.

Frozen pre-pivot recovery branch:
- `archive/service-network-pre-growth-pivot-2026-10-26`

Frozen checkpoint:
- `a6b8e46d01e02ec55a876861cc22529eb3ea6677`

The census, provider/facility flows, service matching, pages, research system, Stripe work, and other Service Network assets remain Phase 2 infrastructure.

### Financial deadline

Owner needs real non-test cash proof by **November 30, 2026**.

Until then:
- acquisition, conversion, paid fulfillment, deliverability, measurement, and customer feedback outrank feature expansion;
- do not add material spend unless it directly supports those goals;
- do not restart broad marketplace development while the Growth revenue test is active.

### First live niche

Active niche:
- `pressure_washing`
- public niche page: `/growth-packs/pressure-washing/`
- experiment/outreach wave: `growth-pressure-1`

Current offer path:
1. targeted service business receives BMC Growth email;
2. landing page asks for a free five-prospect Commercial Opportunity Snapshot;
3. BMC returns five real qualified commercial prospects;
4. the $499 100-prospect offer is only shown when the exact market has at least 125 passing prospects;
5. Stripe checkout uses locked email + sample client reference;
6. webhook attaches payment to the saved sample/ICP automatically;
7. customer does **not** fill out the same project details again;
8. VPS builds and QA-checks the 100-prospect CSV;
9. fulfillment email sends only after deterministic QA passes;
10. outcome feedback and later nurture/continuity can improve the model.

### First outbound launch — completed

The first real Growth launch action completed successfully.

Relay result:
- `growth-launch-pressure-20261027T1242Z`

Initial result:
- Growth lane enabled;
- first live wave sent: **7**
- daily cap: **10**
- wave: `growth-pressure-1`
- Service Network provider outreach: OFF
- Service Network buyer outreach: OFF
- post-enable Growth health: PASS
- critical Growth exceptions: 0

The seven first-touch records were subsequently preserved through a controlled pause/deploy/re-enable cycle.

### Current production backend

Production VPS backend commit:
- `5e7e226501594348168865eeb86376b72e7d724e`

CI proof:
- BMC Portfolio CI run `40505623633` — SUCCESS
- BMC Service Network Pages run `40505623650` — SUCCESS

Hardening included:
- critical Growth exceptions now fail closed;
- `/api/process-growth-outreach` sends zero while a critical Growth exception is open;
- `/api/process-growth-health` reports critical Growth exceptions;
- runtime doctor understands intentional Growth-only launch mode instead of falsely requiring Growth to remain OFF.

Controlled re-enable result:
- relay: `growth-reenable-hardened-20261027T1248Z`
- re-enable: SUCCESS
- duplicate first-touch sends: **0**
- staged active: 7
- total sent: 7
- Growth health: PASS
- critical Growth exceptions: 0

### Last confirmed Growth funnel state

Last confirmed immediately after hardened re-enable:
- `growth_enabled=true`
- wave: `growth-pressure-1`
- daily limit: 10
- sample reserve: 125
- staged active: 7
- sent: 7
- replies: 0
- samples requested: 0
- samples delivered: 0
- converted samples: 0
- paid orders: 0
- revenue: $0
- open Growth exceptions: 0

This was an immediate post-launch snapshot. The next thread must read live state before assuming these counters are unchanged.

### Last live runtime proof

Relay:
- `runtime-growth-live-20261027T1252Z`

Result:
- exit code 0
- core failures: 0
- warnings: 0
- Growth-only launch health gate: PASS
- provider outreach: OFF
- buyer outreach: OFF
- Growth outreach: ON
- Docker/Compose: PASS
- scheduler: PASS
- Cloudflare Tunnel 2026.10.3: PASS
- Ops API: PASS
- Postgres: PASS
- SMTP/IMAP launch config: PASS from Growth audit
- Stripe payment mapping: PASS from Growth audit
- Ollama/qwen3:1.7b: PASS
- SearXNG/private research search: PASS

The generic preflight may still show `live_intake_ready: BLOCKED` because no verified Service Network field provider is active. That is a **Phase 2 marketplace gate**, not a blocker for the live Growth Intelligence revenue lane.

### Website / SEO / conversion state

Verified from the VPS Growth launch audit:
- live pressure-washing Growth landing page reachable;
- free-five form present;
- live Growth hub uses free-five-first conversion path;
- sitemap contains the pressure-washing Growth niche;
- public webhook ingress reachable and constrained;
- live $499 Stripe Payment Link mapped;
- SMTP configured;
- IMAP reply/opt-out polling configured;
- business postal address configured;
- no open critical Growth exceptions.

Public Growth page:
- index/follow;
- canonical URL;
- meta description;
- clear free-five CTA;
- no claim that a researched prospect is actively shopping;
- published qualification standard;
- 125-record reserve rule;
- qualification replacement guarantee;
- $499 offer shown after proof, not as the first cold ask.

Public legal pages were also cleaned after launch:
- removed internal phrases such as “Operational launch draft”;
- Terms now explain Growth Intelligence research, the qualification guarantee, source/contact expectations, and no revenue guarantee;
- Privacy now explains Growth research, public business data, outreach suppression, and payment/order handling.

Static/legal polish commits after the VPS backend deploy:
- `0be996d60481cea8095ea25136e3fe0b0004f187` — Terms
- `637b39c401014486609aeb4ac1f4848d7ce78ccf` — Privacy
- `e6aa71a1a48a15f57c49bfd36480e285909a23da` — public-copy regression guard

Validation for `e6aa71a...`:
- BMC Portfolio CI `40506405755` — SUCCESS
- BMC Service Network Pages `40506405663` — SUCCESS

The VPS does not need a backend redeploy solely for these static/legal changes. Production backend remains intentionally pinned to the tested `5e7e226...` code until another backend change is approved and tested.

### Stripe checkout reconciliation

The free-five checkout URL uses:
- `locked_prefilled_email`
- `client_reference_id=growth_<sample uuid>`

Stripe documents both Payment Link URL parameters for this purpose.

Webhook behavior:
- maps paid Growth product;
- reads `client_reference_id`;
- resolves the saved Growth sample;
- falls back to recent same-email sample if necessary;
- sets `growth_sample_id` on the paid order;
- marks sample converted;
- stops nurture;
- creates `fulfill_growth_pack` task;
- carries original service/market/ICP/minimum job/exclusions into fulfillment.

There is no required second Growth intake after payment.

### Growth fulfillment QA

The production workflow is designed to refuse a bad 100-pack.

Before sending:
- exactly 100 prospects;
- all scores >=65;
- exact customer market;
- unique business names;
- source/contact route present;
- prior BMC deliveries to the same customer excluded;
- five free prospects included in the 100.

If inventory cannot produce 100 honest qualified rows:
- paid task becomes exception;
- critical Growth exception is created;
- pack is not sent;
- Growth outbound fails closed while critical Growth exceptions remain.

CI executes the complete synthetic path:
free five -> reserve gate -> nurture -> simulated paid order -> 100 unique qualified rows -> fulfilled order.

### Monitoring / “20-minute alarm” rule

The owner asked active threads to check status/errors every ~20 minutes.

There are two layers:

**VPS internal layer**
- scheduler loop: every 5 minutes;
- Growth health + nurture + fulfillment + Growth outreach: every 3 loops = **every 15 minutes**;
- this is intentionally more frequent than the requested 20-minute safety cadence.

**ChatGPT external layer**
- automation ID: `6adfa09139708191a3b81e13e9fbabba`
- title: `BMC Revenue Watch`
- cadence: hourly condition watch (ChatGPT automations do not support sub-hour frequency);
- verifies relay/scheduler/API/tunnel/Growth health/SMTP-IMAP/Stripe/funnel/exceptions;
- expects Growth may be ON;
- requires Service Network provider/buyer outreach to remain OFF;
- should report meaningful replies, samples, orders, revenue, or failures.

During a long active build conversation, the assistant should additionally perform an explicit relay status/error check roughly every 20 minutes of active work rather than relying only on the hourly cloud automation.

### First action in the next conversation

Do this before changing code:

1. Read this Section 73.
2. Run Growth live status through the VPS relay.
3. Run Growth launch audit or Growth health.
4. Verify scheduler.
5. Check:
   - sent count;
   - replies;
   - opt-outs;
   - free-five requests;
   - samples delivered;
   - Stripe paid orders/revenue;
   - fulfillment tasks;
   - open critical Growth exceptions.
6. Verify `OUTREACH_ENABLED=false` and `BUYER_OUTREACH_ENABLED=false`.
7. Do not resend the existing seven first-touch emails.

### Immediate next work

Do not redesign the company.

Priority order:
- watch first pressure-washing responses and free-five behavior;
- expand the pressure-washing Growth-customer cohort toward 25 **without lowering qualification/contact quality**;
- improve email/contact discovery for the remaining pressure-washing provider universe rather than padding with weak contacts;
- keep an eye on deliverability/bounces and suppression;
- once the first niche has enough signal—or while adding qualified contacts—prepare the already-built commercial-cleaning challenger as the second experiment;
- preserve exact niche/market attribution;
- move volume toward actual sample requests and paid orders;
- do not let page views or database size substitute for revenue.

Do not cold call.

### Durable experiment rule

Pressure washing is the first experiment, not a permanent identity.

If a cell reaches 100 valid well-targeted outreaches with a credible free-five offer and produces no meaningful interest, pause/radically change that cell.

If free samples are requested/used but no one buys:
- diagnose offer/price/trust before increasing volume.

If paid orders occur:
- prioritize fulfillment quality;
- collect outcome feedback;
- scale the winning niche/market combination;
- keep a small challenger/exploration allocation.

### Key owner rule

The owner should be an exception resolver, not the fulfillment worker.

Normal path should remain:
outreach -> free five -> checkout -> Stripe webhook -> paid task -> deterministic 100-pack QA -> delivery -> feedback.

Do not create manual work for Brett unless a genuine exception, credential/dashboard action, or business decision requires it.


### Known deliverability verification item

Do not overstate email verification.

Proven:
- SMTP is configured;
- IMAP is configured;
- Growth audit passes sender/postal/reply infrastructure;
- first seven Growth messages were accepted by the configured SMTP send path;
- reply/opt-out polling exists.

Not independently proven in this thread:
- public SPF record;
- public DKIM record;
- public DMARC record;
- end-to-end DSN/bounce suppression behavior.

Before materially increasing outbound volume, verify domain authentication and bounce handling. This should not block observing the already-launched seven-contact pressure-washing test, but it should be closed before scaling the tournament.


---

## Section 74 — Email launch incident, owner-preview gate, and corrected mail state (2026-10-27)

### What went wrong

The first live Growth action used seven real pressure-washing/exterior-cleaning businesses before the exact customer-facing email was tested in Brett's Gmail. The application treated a successful return from `aiosmtplib.send()` as `sent`, but that only proves the SMTP submission call returned without exception. It does not prove recipient inbox placement or final delivery.

The HTML alternative also differed materially from the longer plain-text version. Gmail displayed the HTML version, which:
- omitted the personalized greeting;
- omitted the postal address and opt-out text;
- used a large promotional-card presentation;
- showed the long tracked URL as a visible fallback;
- gave a weaker first impression than the intended plain-text copy.

This is now treated as a launch-process failure, not as acceptable experimentation.

### Exact production-path replay proof

A one-shot owner replay endpoint was deployed while all three outbound campaign switches remained OFF.

The system selected the first real recorded Growth send:
- business: TLC Window Cleaning and Pressure Washing;
- original recipient: `windowcleaningtlc@gmail.com`;
- original recorded submission time: 2026-10-27T12:38:57.856305Z;
- subject: `Sedona: 5 commercial accounts worth checking`.

It rebuilt the same first-touch message and sent it through the same production `send_mail()` path with only the recipient changed to `brett.coon2@gmail.com`.

Relay result `growth-owner-replay-20261027T1428Z` returned success with all outbound switches false. Brett then supplied a Gmail screenshot showing the message actually arrived at 7:30 AM Arizona time. This proves the BMC SMTP path can reach Gmail and proves what the old HTML looked like. It does **not** independently prove that each original recipient received its message.

### Correct wording for the original seven

Do not say "seven delivered."

Use:
**Seven Growth SMTP submissions returned success and the old application logic recorded them as sent. Final delivery/inbox placement for the seven is not independently verified.**

### Permanent release gate

From this incident forward:

1. Customer-facing outreach code/templates must be deployed with all outbound switches OFF.
2. The exact deployed template must be sent first to Brett's Gmail through the same production mail path.
3. Brett must inspect the actual rendered message and explicitly approve it.
4. Production stores the exact approved deployed SHA in `GROWTH_OWNER_APPROVED_SHA`.
5. Growth launch readiness blocks unless `GROWTH_OWNER_APPROVED_SHA == git rev-parse HEAD`.
6. Any subsequent code/template deployment invalidates approval and forces another owner preview.
7. Only after approval may one controlled real prospect be sent, inspected for errors/bounces, and then a capped batch considered.

### Current email hardening

Master now contains changes intended to:
- show sender as `BMC Service Network <contact@bmcservicenetwork.com>`;
- add Date and Message-ID headers;
- use a single deterministic Growth renderer for live and owner-preview sends;
- include greeting and full core offer in HTML;
- include postal address and visible opt-out in marketing HTML;
- remove the visible raw tracking URL fallback;
- use a simpler normal-business-email layout;
- keep all campaign switches OFF during owner preview;
- add an exact-commit owner approval control and launch-readiness block.

Do not mark the new template approved until Brett has received and inspected the revised Gmail preview.

### Still open before scaling

- verify public SPF;
- verify DKIM;
- verify DMARC and alignment;
- improve SMTP/audit logging beyond a boolean;
- add Sent-folder/audit persistence;
- add DSN/bounce classification and suppression;
- review every customer-facing template in `EMAIL_TEMPLATE_REVIEW.md`;
- retire redundant legacy Growth paths before broad outreach.


## 75. Growth one-click free-five funnel — merged, awaiting safe deployment (2026-10-27)

Owner Gmail review of the revised first-touch exposed a conversion problem behind the email: the personalized **Show me 5 free targets** CTA still landed on the ordinary `growth_snapshot` form and asked the prospect to re-enter business/name/email/market/consent even though the outreach target already contained the business, public email, market, and service.

Fix merged through PR #2:
- merge commit before this handoff update: `719d43222a59abefa49bf4f666093fdda7b26699`
- personalized Growth links now include a server-signed HMAC claim tied to `target_id + target email`; the email address is not exposed in the URL;
- new `POST /api/growth/claim-free-five` verifies that the target exists, had a sent Growth outreach record, and has a valid claim;
- a verified click reuses the existing `handle_growth_snapshot()` machinery, builds the five immediately, renders them on the landing page, emails the copy, and exposes the existing locked $499 checkout only when the reserve gate passes;
- the normal form remains available for organic traffic and as failure fallback;
- owner replay links carry `preview=1`, so Brett clicking a preview cannot create a real sample for the source prospect;
- first-touch copy now says BMC **found** prospects instead of saying it is still researching them;
- copy no longer pretends BMC knows the contractor's preferred account types before they provide that preference;
- no outbound switch was enabled by this work.

CI proof on PR head `48bb4859715787b0ecd3071173900dd99d4948b8`:
- BMC Portfolio CI run `40550128385`: **PASS**;
- new E2E test stages a synthetic emailed Growth target, signs the real claim, calls `/api/growth/claim-free-five`, and proves exactly five qualified prospects plus a Stripe checkout URL without submitting the normal form;
- the pre-existing E2E continues through nurture, simulated paid order, deterministic QA, and exactly 100 unique in-market Growth fulfillment rows.

Deployment/launch status:
- **NOT deployed yet** at the time of this entry;
- **NOT owner-approved for the new commit**;
- `OUTREACH_ENABLED`, `BUYER_OUTREACH_ENABLED`, and `GROWTH_OUTREACH_ENABLED` must remain OFF;
- three fresh read-only VPS relay requests submitted around 17:15Z did not produce result artifacts, and the hourly Revenue Watch independently reported the same missing-fresh-relay observation. Treat VPS state as unverified until the relay returns proof.
- after a tested master SHA exists, deploy with all outbound OFF; then run Growth status/audit + scheduler/runtime proof; then replay the exact deployed first-touch to Brett; only explicit Gmail approval may set `GROWTH_OWNER_APPROVED_SHA` and permit a later controlled launch.


## 76. Owner click-preview must mirror the real one-click path without customer side effects (2026-10-27)

After deploying the first one-click Growth fix, the production owner replay correctly included `preview=1`. That protected TLC from an accidental owner click, but the frontend originally interpreted `preview=1` by skipping auto-claim entirely, which would make Brett see the fallback form and falsely look like the duplicate-form bug still existed.

This release fixes that QA gap:
- owner replay still uses the exact signed target claim plus `preview=1`;
- `core.js` now calls the same signed claim endpoint for owner previews;
- `/api/growth/claim-free-five` recognizes preview mode and selects the same qualified five read-only;
- owner preview does **not** insert a `growth_sample_request`, email the target, mark a reply, mutate target/outreach status, create nurture, or create a real Stripe sample reference;
- the preview page still renders the same five-target cards and a visually matching $499 CTA using a non-purchasing preview anchor;
- the real prospect link (no `preview=1`) continues through the actual sample/email/nurture/checkout path.

CI now explicitly proves both branches:
1. owner preview returns five and leaves sample/outreach state untouched;
2. real signed claim returns five, records the sample request, marks engagement, and exposes the live Stripe checkout;
3. the existing paid E2E still fulfills exactly 100 unique qualified in-market prospects.

Release rule:
- merge/deploy this section and code together;
- after the exact deployed owner preview is sent, **do not make another master/documentation commit before Brett's approval**, because approval is SHA-bound;
- keep provider, buyer, and Growth outbound OFF until Brett explicitly approves the exact deployed Gmail preview;
- after approval, set `GROWTH_OWNER_APPROVED_SHA` only for that deployed SHA, rerun the strict Growth audit, and use a controlled Growth-only launch while Service-Network provider/buyer outreach remains OFF.


## Section 77 — Prospect Exposure / Source Rights Safety Branch (Oct 27, 2026)
**NOT MERGED / NOT DEPLOYED / NO OUTREACH AUTHORIZED.**
PR #5: https://github.com/bmcgarybot/bmc-luminary-site/pull/5
Branch: safety/prospect-exposure-gates-20261027
Policy: portfolio/automation/PROSPECT_EXPOSURE_POLICY.md

User directive: Systems scale, feelings fail. Never repeatedly give the same top five commercial businesses to every contractor.

### Code work on isolated branch
- Shared exposure ledger and historical free/paid delivery backfill, with business and recipient identities plus contact-route grouping.
- Prospect objection/suppression table; business name normalization and email-alias anti-abuse gate.
- Conservative proposed per-prospect caps: free once per 90 days; all recipients max 3 per 90 days and 8 lifetime; 90-day free and 30-day paid cooldown.
- Transactional advisory-lock allocation; paid extra prospects reserved before delivery; repeat submissions reuse original batch.
- Free sample uses deterministic score-percentile sampling instead of first/top five.
- Separate source-rights review with default FAIL-CLOSED for unapproved domains; launch readiness requires source-approved staged market reserve.
- Before fulfilling paid order, recheck whether previously free sample prospect has been suppressed or lost rights.
- Synthetic CI tests cover rotation, distinct accounts, concurrent claims, suppression, source rights, and duplicate requests.

### Remaining launch gates
1. Verify CI green and inspect database/API integration output.
2. Audit real-census source licences, provenance and redistribution rights. Public visibility alone is not a licence.
3. Audit canonical business, property, parent and shared-contact identity collisions before scaling.
4. Audit all 21 markets after rights, quality and exposure filters; no padded packs.
5. Extend same ledger to any future Micro, Starter, Refresh and other product exports.
6. Have qualified legal review of outreach and buyer research terms, opt-outs, rights and Arizona calling rules.
7. Exact-SHA BMC SMTP owner preview and explicit approval before any live Growth outreach.

Do not merge or deploy merely because source code exists. Keep all provider, buyer and Growth outbound switches OFF. Preserve old network and research census.

Section 77 scope update: Owner deprioritized source-rights checks for this build. Source reviews remain separately documented, but growth candidate selection and launch-readiness source-rights gate were removed from this PR. Exposure caps, history, objections, and deterministic rotation remain enforced. Do not confuse this with approval of the provenance of any record.


## Section 78 — End-of-thread verified handoff (Oct 27, 2026)
USER REQUEST: deliver handoff immediately; user strongly prioritizes deterministic exposure rotation, fairness and autonomous fulfillment. They requested deprioritizing source-licensing research because they believe provenance cannot be proven. Do not endorse evasion or delete safeguards; source-rights gate presently FAILS CLOSED and must be treated as a separate policy issue to resolve before public commercial launches.

Code branch: safety/prospect-exposure-gates-20261027; open PR #5: https://github.com/bmcgarybot/bmc-luminary-site/pull/5
Latest VERIFIED CI checkpoint before this handoff: PR head e0ca55b08e037e5778d072b7d38ed6dda25b30e5 ; GitHub Actions 40597040775 (PR) and 40597037303 (push) both SUCCESS. Verify CI again after this handoff-only commit.
PR is NOT merged, VPS is NOT deployed. No production outreach was enabled.

Changes on safety branch:
1. Shared growth_prospect_exposures ledger for free and paid distribution, historical backfill, suppression, recipient business and shared contact keys.
2. Free five now chosen across fit percentiles rather than repeatedly using top five; repeat clicks reuse saved selection.
3. Exposure limits (proposed policy): max 1 distinct free recipient per 90d; 3 recipients total/90d; 8 lifetime; 90d free cooldown/30d paid cooldown.
4. All sample allocation in advisory-locked transaction; paid reservation in transaction; paid fulfillment checks source rights, suppression, score and count.
5. Repeated free claims blocked across email and normalized business name in same service/market.
6. Unapproved commercial redistribution domains filtered using growth_source_rights_review (unknown fails closed), with launch reserve audit.
7. CI full integration includes concurrent requests, distinct synthetic contact numbers, same-business/email alternate claims, source unapproval, suppression, sample-to-paid 100 deliverable and no repeat sample exposure.
8. CI initially uncovered invalid empty source_target_id foreign key; fixed by storing NULL. Synthetic phone collision proved shared phone blocking works; changed fixtures, not caps.
9. Full policy and residual risks in portfolio/automation/PROSPECT_EXPOSURE_POLICY.md; Section 77 in this handoff also documents initial design.

NEXT THREAD INSTRUCTIONS:
- Confirm PR #5 current head, CI, contents; re-check any race between master and branch before merge.
- Audit lingering reliability risks: historical backfill idempotency and shared-contact normalization; status reserved vs delivered on SMTP failure (sample exposures currently marked delivered before SMTP success); canonical parent/property business resolution; verification of rights by individual source/evidence, rather than approving domain blanket.
- CRITICAL: The policy now fails closed until rights-reviewed candidate inventory exists; this was deliberate safety, but user's main concern is exposure rotation. Avoid allowing provenance disputes to derail exposure work. Don't evade or advise concealing sources.
- Audit Growth paid-customer no-repeat handling and tests for micro/starter/refresh packs, which remain conceptual, not all wired.
- Evaluate all 21 markets after caps for sufficient inventory and honest packaging.
- Keep every outbound switch FALSE (OUTREACH_ENABLED, BUYER_OUTREACH_ENABLED, GROWTH_OUTREACH_ENABLED); preserve signed-click path, exact SHA owner preview gating, website and legacy Service Network branch.
- User values <10 min/day owner workload, no repeated intake, one obvious next step and ethical repeat sales.
- Never claim PR branch equals live production or Green CI equals permission to launch.

Preserved assets: 75,098 strict unique researched census records, 21 markets, 54+ service categories; BMC Growth and Service Network original paths. Do not delete or archive away customer flows.

At handoff all product prices are not necessarily implemented: $499 100 total Growth, $749 Premium; $299 Competitor, $699 Expansion, $149-249 refresh proposed; downsell $179 25 total/$79 10 more/$20 five more proposed. They need account/dedupe and fulfillment wiring before public offer.

## 79. Controlled free-five overlap and service-search release checkpoint (2026-10-27)

The owner clarified that different contractors' free-five samples **may overlap**, but no pair of five-prospect samples should contain more than two of the same prospects. Completely disjoint batches are not a requirement. Repeated request by the same recipient must return the identical saved five; never issue new freebies on retries.

PR #5 safety branch: `safety/prospect-exposure-gates-20261027` (no merge or deployment at this checkpoint).

Changes after prior handoff:
- Free exposure default changed to two distinct free recipients within 90 days, while retaining shared free + paid caps, lifetime caps, suppression, and same-buyer exclusion.
- Free-only per-prospect cooldown removed so that limited, deliberate overlap is possible.
- Allocator evaluates all prior free-five disclosure batches in that service/market and will not select a batch with more than two overlaps against *any* previous batch. If insufficient inventory remains, respond with a pending-inventory exception rather than padded/repeated five. Allocation remains serialized in one transaction.
- CI concurrency assertions now allow at most two overlaps rather than insisting on zero. Existing same-submission, same-business and suppression checks remain.
- Free-five SMTP accounting now separates prepared, web-disclosed and email submission failed/accepted. A five returned in a webpage response is a real disclosure even if email fails. Replays reuse the same sample.
- Fixed three paid fulfillment exception messages referring to unselected order_id column.
- Expanded deterministic customer-language search by roughly 300 curated phrases and added 42 CI regression cases; common plumber/toilet terms now reach existing plumbing/backflow category, but general residential versus backflow specialist matching still needs a separate service/catalog review.
- Common SMTP sender normalizes em/en dashes, including HTML emails, and the writing guide is at `CUSTOMER_LANGUAGE_AND_EMAIL_STYLE.md`. Owner exact-SHA email preview requirement is unchanged.
- GitHub ↔ VPS relay was proven live at 2026-10-27 23:30 UTC using fresh proof, runtime and scheduler requests. VPS on tested master `95fc8acf691ad6517e1be3a17f8e27517a15ea9c`, all outreach switches off, healthy runtime.
- Previous search CI failed on natural-language 'toilet is overflowing', fixed and subsequent CI for `981851230e793bfa9043a19d542e71b349554ce5` succeeded (workflow 40602364711).

NEXT:
1. Check the latest branch head and BMC Portfolio CI; do not assume a previous green applies to later commits.
2. Ensure synthetic CI covers allowed two-overlap and forbidden three-overlap, and check historical backfill/idempotency.
3. Do not enable outreach; do not deploy an unmerged PR.
4. When all remaining release and owner gates are satisfied, merge through normal review and use tested-SHA VPS relay deployment with all outbound OFF; verify production SHA, database migrations, search, funnel, health; owner review of exact email preview is required before any emails.


## 80. Verified Growth claim, owner-protected release and public gateway (2026-10-28)

Development remains on PR #5 safety branch `safety/prospect-exposure-gates-20261027`. All outreach switches remain OFF and no new customer-facing campaign may be enabled without exact deployed-SHA owner Gmail preview approval.

Engineering implemented:
- Business duplicate gates and the global free-sample allocation are in the same transaction lock, covering pending requests and same email/named contractor aliases. Common LLC/Inc/Corp suffixes are normalized. Optional self-reported business phone and website are stored. A website or phone match is held as `verification_needed` rather than assumed to prove ownership; original sample contents are never revealed to an unverified alternate email.
- Cold public free-five intake sends an expiring 48h signed email ownership link before revealing five prospects. `growth_email_verifications` stores an immutable request, status, expiry; `/api/growth/verify-email` redeems it on the same landing page and returns the allocated sample. Signed existing BMC outreach claim retains one-click route without a second form. Site HTML and shared JS updated, with cache versions.
- Free samples rotate with at most two overlaps between any pair, shared per-prospect saturation caps and one-claim-per-contractor behavior. Replaying a verified link returns the saved five.
- Public Nginx gateway fixed to permit only POST/OPTIONS on `/api/service-search`, `/api/growth/claim-free-five`, `/api/growth/verify-email`, alongside the preexisting intake and Stripe webhook. Admin endpoints remain private. `verify-public-ingress.sh` validates new routes and no admin access.
- Nurture now excludes people with a recorded Growth outreach reply, plus existing opt-outs/suppressions and paid orders. Common SMTP MIME normalizes em/en dashes in subject, plain text and HTML, with CI regression.
- Added CI for invalid email verification tokens, concurrent aliases, shared-domain hold, free-five saturation and idempotency, paid-order simulated 100 qualified prospect fulfillment, nurture stopping after reply, source inventory and Nginx endpoint allowlist.
- Merged current master into PR branch with dual-parent commit `ca8f3d5758b77d71260f8fd6c8c4195369c8cf70`, preserving image overhaul and public plumber search. GitHub reports PR mergeable.
- Live Stripe API verified the active starter product `growth_pack_starter` is exactly $499 (one-time, 49900 cents); premium $749, competitor $299, expansion $699. This does not prove sales.
- Fresh read-only VPS relay 2026-10-28 16:44 UTC succeeded for proof/runtime/Growth status/scheduler. VPS still running older `95fc8acf691ad6517e1be3a17f8e27517a15ea9c`; all three outreach switches false, zero Growth orders, zero samples and zero recorded replies. Scheduler/API healthy; seven old SMTP submissions remain recorded but not independently verified as recipient delivery.
- Latest confirmed green combined branch CI before writing this section: `b68bbc496967720a791b96877d00c234f5508a77`, workflow runs `40729219223` and `40729208681`, both success.

Release requirements:
1. Verify latest CI on THIS handoff commit, not previous green head.
2. Confirm no new merge conflicts with master; merge PR #5 only when latest CI green and no unresolved release failures.
3. Use exact green tested master SHA through existing VPS GitOps relay to deploy, all outreach OFF. Migrations are additive; `deploy-update.sh` recreates API and public webhook proxy (required for new routes). Verify live SHA, schema, Nginx public search/claim/verify, Stripe, scheduler, health and customer form path; do not enable outreach.
4. The exact deployed live email template must be sent through production path to owner's existing test inbox and visually approved before ever setting `GROWTH_OWNER_APPROVED_SHA` or enabling any campaign.
5. A simulated CI paid transaction and Stripe product existence are NOT a real $499 sale. Do not claim revenue until an actual successful verified order/payment and 100-pack delivery.
6. Before launch, independently verify contact legitimacy and abuse throttling; soft identity matches may remain in manual review and no extra sample should be disclosed.


## 81. Owner-controlled operator console prototype (2026-10-28)
Owner directive: **NO LIVE CUSTOMER OUTREACH until the owner personally approves quality, plan, operational workload, and deployed email previews.** Keep OUTREACH_ENABLED, BUYER_OUTREACH_ENABLED, GROWTH_OUTREACH_ENABLED OFF. Build and test safely, including a private dashboard/terminal that the owner can inspect in under ten minutes per day. Owner wants the VPS to do ongoing work automatically with small manual intervention, but the system must be observable and fail closed.

New isolated development branch: `safety/operator-console-20261028` (created from PR #5 head `330923128207062e66b494c7c730a0f2b861de17`). NO PRODUCTION RELEASE OR EMAIL AUTHORIZED.
- `portfolio/automation/operator-console.py`: read-only snapshot monitor; stale evidence, unavailable metric fields, unconfirmed outbound OFF, unhealthy runtime and missing deployment SHA force REVIEW; never grants marketing authorization.
- `portfolio/automation/test-operator-console.py`: synthetic tests for stale evidence, failed switches, missing revenue, exceptions, ignored secrets.
- `portfolio/automation/OPERATOR_CONSOLE.md`: sanitized JSON contract and instructions.
- It currently consumes a sanitized local JSON file, **not** a connected live VPS data feed or browser dashboard. Never imply otherwise. This is a first part of operational observability, not a finished owner portal.

Next engineering work: integrate read-only signed/authenticated VPS relay snapshot to a private owner dashboard, prove real monitoring (scheduler, queue, runtime, deployment SHA, funnel counts, verified Stripe orders and exceptions), test synthetic checkout-to-100 fulfillment and error/restart behavior, add automation alerting and backup proof. Do not leak relay payloads or customer personal data into public GitHub. PR #5 remains separately unmerged until release gates are satisfied; preserve existing full research census and Service Network. Do not write or approve campaign mail on behalf of the owner.


## Section 82 — Read-only VPS operator snapshot integration (2026-10-28)
After owner insisted on execution rather than another future worklist, development continued on PR #6 (draft, safety branch). Changes:
- `vps-gitops-relay.py` allowlists `operator_snapshot` under READ_ONLY_ACTIONS; it reads Docker running services, private API health, the three local outbound switches, deployed SHA and whitelisted aggregate Growth numbers. No customer email sent, no launch action and no secrets intentionally included.
- `operator-console.py` accepts sanitized snapshots or genuine relay result envelopes, checks action, status, exit_code, non-external action and reported SHA consistency, fails closed for stale/unknown/unsafe data.
- `test-operator-console.py` includes 10 synthetic tests covering healthy reporting, staleness, missing/on outreach, unknown revenue, exceptions, secret stripping, relay action shape and mismatched SHA.
- BMC Portfolio CI validates the new read-only allowlist and executes console tests.
- `OPERATOR_CONSOLE.md` explains the relay request contract and clearly distinguishes branch code from VPS deployment.
- This is an isolated development branch. It does not mean the VPS is updated or live metrics have been verified. Continue with safe CI and relay verification before release. Do not touch PR #5 or merge into master until quality and data policy release review. All outbound remains disabled.


## Section 83 — Owner HOLD, dashboard HTML, fresh read-only VPS checks (2026-10-28)
Owner directive reconfirmed: do not send live customers or prospects any messages until owner approves offer quality, full plan, low-touch operation, and previews. Development work proceeded on safety branch PR #6, not production:
- `operator-console.py --html <private-file.html>` now generates an escaped, script-free, local status dashboard from sanitized relay JSON. It is not automatically refreshed or deployed.
- `vps-gitops-relay.py` adds independent `BMC_OWNER_LAUNCH_HOLD` fail-closed gate for `growth_launch_enable`. Defaults to active if missing, separate from email template SHA approval. `.env.example` now sets the hold true; strict `growth-launch-readiness.sh` blocks until explicitly false.
- CI checks the read-only classification of `operator_snapshot`, independent launch hold, and now 12 console unit test scenarios.
- Read-only existing VPS relay requests submitted (request IDs `owner-readonly-20261028-proof_readout-1222`, `owner-readonly-20261028-growth_status-1222`); result artifacts were not yet available when first checked. Do not claim VPS metrics from them until returned.
- Keep PR #5 and PR #6 unmapped to live production; all provider, buyer and Growth outreach controls OFF. No actual live customer marketing sent.

Important follow-up: Owner hold requires manual configuration change on VPS only after explicit user approval; do not silently set it false. Finish real relay proof, CI validation, synthetic full funnel, private access control and durable low-maintenance monitoring.


## Section 84 — Operator relay synthetic test and exact owner hold observability (Oct 28, 2026)
More development on draft PR #6:
- New `test-operator-relay.py`: five fully mocked tests of the new VPS read-only `operator_snapshot` action. No Docker/API/network/GitHub writes in test. CI now invokes these tests.
- Operator status requires `owner_launch_hold_active=true` and displays it explicitly; absence or false alerts. Updated console test fixture and additional hold test.
- `operator_snapshot` now reads the three campaign flags directly from local .env and marks omitted flags unknown, rather than relying on relay helper defaults; continues to emit only aggregate, whitelisted fields.
- PR #6 is currently draft/mergeable against PR #5 and NOT deployed; no customer outreach authorized.
- Two existing read-only relay checks were queued at 19:22 UTC, but result files had not appeared in first several checks. Do not claim live VPS proof until result artifacts actually exist.
- No new CI success was verified for the latest PR #6 HEAD at the time of this entry (workflow query returned no runs). All newly added tests remain pending CI proof. Do not conflate PR #5's earlier green tests with PR #6.
