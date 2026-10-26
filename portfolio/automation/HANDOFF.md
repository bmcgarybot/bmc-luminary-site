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

