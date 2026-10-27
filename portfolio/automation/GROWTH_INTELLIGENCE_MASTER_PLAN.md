# BMC Growth Intelligence — Phase 1 Master Plan

Updated: 2026-10-26 (America/Phoenix)

## 1. Decision

BMC is not deleting, abandoning, or rebuilding the Service Network from scratch.

The immediate operating priority is now:

**Prove one autonomous research-to-revenue money model first, while preserving the Service Network as Phase 2 infrastructure.**

The Phase 1 economic outcome is:

> BMC helps local service businesses identify commercial accounts worth pursuing without making the owner do the research.

The first proof path is:

**qualified service business -> free 5-prospect Commercial Opportunity Snapshot -> $499 Growth Pack -> post-purchase premium upgrade -> appropriate downsell after a no -> recurring refresh after fulfillment**

The Service Network remains strategically important because actual BMC service requests can later become higher-value live opportunities, territory access, and buyer-side Vendor Desk revenue.

## 2. Preservation contract

Nothing already built is to be deleted merely because Phase 1 is changing priority.

Protected assets include:
- the 75,000+ record Arizona business census and all research artifacts;
- all 21 market coverage;
- provider research and provider application/approval flows;
- vendor dashboard work already committed;
- buyer/facility research;
- facility-maintenance intake and multi-service splitting;
- service matching/routing;
- Stripe products, prices, Payment Links, webhook handling, order/revenue tracking;
- current service pages and market pages;
- local AI/search work;
- outreach controls, opt-out handling, runtime checks, CI, and automation scripts;
- research queues, source-native expansion, and monitoring logic.

A frozen pre-pivot snapshot exists at:

`archive/service-network-pre-growth-pivot-2026-10-26`

Snapshot commit:

`a6b8e46d01e02ec55a876861cc22529eb3ea6677`

Master may evolve, but this branch is the recoverable Service Network checkpoint.

### Phase labels

**ACTIVE PHASE 1**
- Growth Intelligence / Growth Packs;
- provider-as-customer acquisition;
- prospect qualification;
- sample generation;
- order/payment/fulfillment;
- outcome collection;
- niche experiments;
- recurring research refresh.

**PRESERVED PHASE 2**
- consumer/facility service marketplace;
- provider pilot activation;
- buyer-side service-request acquisition;
- accepted-opportunity monetization;
- territory products;
- facility/vendor desk.

**FUTURE / ONLY AFTER EVIDENCE**
- aggressive SEO expansion;
- large paid-ad budget;
- broad territory subscriptions;
- complex marketplace pricing;
- additional brands/LLCs;
- large custom CRM;
- new hardware solely for scale.

Preserved Phase 2 code may remain deployed. Phase 1 prioritization means it does not block launch of the Growth Intelligence experiment.

## 3. Terminology — do not blur these stages

BMC must stop using "lead" to mean everything.

### Candidate
A raw census/research record that may fit a market.

### Qualified commercial prospect
A business that has passed BMC's published fit, geography, activity, evidence, and contactability rules for a specific Growth Pack customer.

This is the primary Growth Pack deliverable.

### Engaged prospect
A prospect that has shown interest: reply, sample request, meaningful click, form completion, or equivalent response.

### Qualified opportunity
A business where need/timing/buyer fit has been established.

### Live BMC Service Network opportunity
A person/business that actually asked BMC for the relevant service.

Public copy must never imply that a qualified commercial prospect has expressed buying intent unless BMC has evidence of that intent.

## 4. The offer ladder

### Attraction — free Commercial Opportunity Snapshot

Customer tells BMC:
- service;
- service territory / radius;
- preferred commercial customer types;
- minimum desirable job/account size;
- exclusions;
- optional notes about work they want more of.

BMC returns **5 real qualified commercial prospects** with enough evidence to be useful.

The free five are not teaser rows with hidden information. They must be genuinely usable.

Each sample row should include:
- business/property name;
- city/location;
- buyer/property type;
- BMC fit score;
- why it fits the requested service;
- likely service use case;
- public business contact route;
- verification date;
- evidence/source references;
- practical outreach angle.

### Core — $499 Growth Pack

Target deliverable:
- 100 qualified commercial prospects;
- deduped against the customer's previous BMC deliveries;
- evidence and fit notes;
- priority/fit score;
- contact path;
- practical account-specific outreach angle;
- verification/freshness fields.

Do not sell 100 merely because 100 database rows exist.

BMC should maintain at least a **25% reserve pool** before accepting a 100-prospect order. In normal conditions, an order should not be accepted unless at least 125 prospects can pass the current qualification gate after filtering. If a territory is too small:
1. show the actual qualified inventory;
2. offer a smaller pack; or
3. ask permission to widen the territory.

Never pad a pack with weak rows to reach 100.

### Premium — sequential upgrade

The existing $749 Premium product stays preserved.

The preferred customer journey is not a four-card pricing menu.

After a $499 purchase, BMC should offer a logical upgrade such as:
- competitor snapshot;
- target-account segmentation;
- prioritized sub-markets;
- outreach plan;
- messaging angles.

Economic target:
- $499 core;
- approximately $250 incremental premium upgrade;
- total equivalent to the existing $749 product.

Implementation may initially continue to use the existing $749 product while the sequential upgrade plumbing is built.

### Downsell — only after a no

If the $499 order is declined, BMC may offer a smaller pack.

Initial test range:
- 25 qualified prospects;
- approximately $149-$199.

Do not automatically discount the full 100-prospect product.

### Continuity — only after fulfillment creates the next need

After the first pack is delivered and enough time passes for the customer to use it, offer refreshed qualified prospects.

Initial test range:
- 25 fresh prospects/month around $149; or
- 50 fresh prospects/month around $249.

Exact price/volume must be tested from real customer behavior.

### Later value ladder

Once Service Network demand exists:
- real BMC service opportunities;
- first-access/territory products;
- provider continuity;
- buyer-side Vendor Desk.

These are Phase 2/3 and must not block Phase 1 proof.

## 5. Growth Pack qualification engine

AI may summarize evidence and write fit explanations.

AI must **not invent evidence, contact data, buying intent, property attributes, or business status**.

The deterministic qualification engine decides whether a record can be sold.

### Hard gates

A prospect cannot be delivered unless all applicable gates pass:

1. **Active/current**
   - business appears currently operating;
   - no credible permanent-closure signal.

2. **Geography**
   - located in or serves the customer's approved territory;
   - no silent radius expansion.

3. **ICP / property fit**
   - business/property type plausibly purchases the customer's service.

4. **Service-use evidence**
   - there is a documented reason the service could apply.
   - Evidence can come from direct business/property pages, authoritative records, maps/property context, portfolio information, or other public sources.
   - Do not treat a generic category match alone as enough when a stronger check is available.

5. **Contactability**
   - at least one usable public business contact route exists:
     - public business email;
     - company contact form;
     - public business phone;
     - public facilities/procurement route;
     - appropriate corporate/property-management contact route.
   - Do not fabricate personal emails.

6. **Freshness**
   - verification date is stored;
   - stale rows must be reverified before delivery based on the configured freshness window.

7. **Deduplication**
   - not already delivered to the same customer unless explicitly sold as a refreshed/reverified record.

8. **Truthfulness**
   - BMC may call it a qualified prospect;
   - BMC may not call it an active buyer/opportunity unless evidence supports that statement.

### Initial 100-point fit score

- Service / ICP fit: **25**
- Geographic fit: **15**
- Evidence of applicable property/use case: **20**
- Contactability: **15**
- Active/current verification: **10**
- Account value / recurring potential: **10**
- Freshness / novelty: **5**

Initial bands:
- **80-100: A**
- **65-79: B**
- **below 65: do not deliver**

Hard gates override score.

A 90-point record that is closed, outside territory, or unverifiable is still rejected.

### Replacement guarantee

A safe initial guarantee is a **qualification guarantee**, not a revenue guarantee.

If a delivered record fails BMC's published standard because it is:
- outside the agreed territory;
- inactive/closed at the time of delivery;
- the wrong business/property type;
- a duplicate already delivered to the same customer;
- or missing the promised contact route/evidence;

BMC replaces it.

BMC does not guarantee that the prospect will respond, request a quote, buy, or become a customer.

## 6. Provider-customer qualification

BMC should also score the service businesses it tries to sell Growth Packs to.

Preferred Growth Pack customers:
- active local/regional service business;
- sells a service with meaningful commercial account value;
- has commercial capacity or a plausible commercial offer;
- operates in a territory with sufficient BMC qualified-buyer inventory;
- has a public business contact route;
- owner/sales team is reachable;
- does not obviously have a large sophisticated internal prospecting department;
- could plausibly recover the pack price from one or a small number of commercial wins.

Provider-customer records should have their own score and state:
- research candidate;
- contactable Growth prospect;
- contacted;
- engaged;
- sample requested;
- sample delivered;
- paid;
- fulfilled;
- repeat/continuity;
- paused/suppressed.

## 7. Do not bet on one niche — run a controlled niche tournament

BMC can and should test multiple niches in parallel.

The correct model is **portfolio experimentation**, not "pick one niche and pray" and not "blast every niche equally forever."

### Initial eligible niche pool

Start with commercial-friendly service categories already present in BMC, such as:
- pressure washing / exterior cleaning;
- commercial cleaning / janitorial;
- commercial window cleaning;
- parking-lot sweeping / striping / upkeep;
- landscaping / grounds;
- junk hauling / cleanouts;
- locksmith / access control;
- HVAC;
- commercial plumbing / backflow;
- restaurant equipment / refrigeration repair;
- tree service / defensible-space work where commercially relevant;
- fleet/mobile vehicle services where buyer inventory supports it.

The engine may enroll additional service categories automatically when they pass the niche eligibility gates.

### Niche eligibility gates

A niche enters live testing only when BMC can show:

1. enough provider-customers to test;
2. enough qualified commercial buyer inventory to fulfill the offer;
3. meaningful economic value per commercial account;
4. a clear service-to-buyer relationship that can be explained in plain language;
5. evidence/contactability quality above minimum standard.

Initial numeric guardrails:
- at least **25 reachable provider-customer prospects** for an exploration cell;
- enough verified buyer inventory to create valid free samples;
- for a full 100-prospect pack in a given territory, target **125+ passing prospects** after filters so replacements/reserve exist.

If a cell cannot support the product honestly, BMC must not sell that cell.

## 8. Geography — test everywhere without destroying the signal

BMC can cover all current Arizona markets, but early experiments should not treat every tiny town as an independent statistical universe.

Use two levels:

### Delivery geography
The customer's exact territory/radius always controls the actual prospect pack.

### Experiment geography
For learning, group sparse markets into broader cells until volume supports splitting.

Suggested first analysis groups:
- Prescott / Prescott Valley / Central Yavapai;
- Verde Valley / Sedona;
- Flagstaff / Northern Arizona;
- Phoenix / Scottsdale metro;
- Tucson metro;
- Kingman / Bullhead / Western Arizona;
- rural/smaller-market aggregate where appropriate.

Every outreach/order still stores the exact market and territory. The grouping is only for experiment reporting.

As volume grows, split winners into city-level cells.

## 9. Autonomous experiment stages

### Stage 0 — offline inventory test

Before contacting anyone:
- create sample ICPs for each eligible niche;
- generate at least 25 candidate deliverable rows per niche;
- manually/algorithmically audit them against the hard gates;
- record pass/fail reasons.

Promotion requirement:
- at least **90% of audited sample rows** must meet the published qualification standard;
- no systematic false-fit pattern.

If sample quality fails, fix qualification/research before outreach.

### Stage 1 — exploration

Give each eligible niche a small, fair initial batch.

Suggested first batch:
- **25 highly qualified provider-customer outreaches per niche**, where inventory permits.

Track:
- delivered;
- bounced;
- replied;
- opted out;
- meaningful engagement;
- sample requested;
- sample delivered;
- checkout visited;
- paid;
- refund;
- fulfillment complete.

A niche should not be declared dead after 25 sends. This is a screening round.

### Stage 2 — challenger retest

If 25 sends produce zero meaningful engagement:
- inspect deliverability;
- inspect whether the service-business targeting was correct;
- inspect the lead magnet/sample;
- try one materially different message/positioning variant;
- run another bounded batch.

Do not keep rewriting tiny copy details forever.

### Stage 3 — 100-outreach proof test

The durable BMC rule remains:

> If 100 well-targeted B2B outreaches with a credible sample/offer produce no meaningful interest, kill or radically change the offer/cell.

Interpretation after 100 valid deliveries:

- **0 meaningful engagement**
  - pause the niche/market cell;
  - do not keep spending volume on it;
  - return it to research/retest status.

- **engagement but 0 sample consumption**
  - lead magnet/delivery problem.

- **samples consumed but 0 purchases**
  - product/price/trust/offer problem.

- **1 paid order**
  - proof that someone will pay;
  - continue cautiously and inspect fulfillment.

- **2-3+ paid orders**
  - meaningful early signal;
  - increase allocation.

- **repeat/refresh purchase**
  - much stronger signal than first purchase;
  - eligible for continuity investment.

These are operating thresholds, not promises of market success.

## 10. Autonomous traffic allocation

After the equal exploration round, the VPS should not keep allocating outbound evenly.

Use a bounded explore/exploit policy.

Initial policy after enough observations:
- **70%** of available Growth outreach capacity -> current winning niche/market cells;
- **20%** -> challengers with promising engagement but insufficient purchase data;
- **10%** -> new/retest niches so BMC keeps discovering opportunities.

Do not allow one niche to consume 100% of traffic.

A paused niche can re-enter exploration after:
- material offer change;
- data-quality improvement;
- new market inventory;
- seasonal change;
- or a scheduled retest period.

## 11. Experiment score

Each niche-market cell should maintain an experiment score based on evidence, not intuition.

Core metrics:
- valid delivery rate;
- bounce rate;
- meaningful engagement rate;
- sample-request rate;
- sample-consumption rate;
- purchase conversion;
- revenue per valid outreach;
- gross profit per order;
- refund/replacement rate;
- fulfillment labor/compute cost;
- time to fulfill;
- repeat/continuity conversion;
- customer-reported outcomes where available.

Suggested prioritization principle:

**revenue and repeat behavior > engagement > clicks**

Do not crown a niche because it gets lots of email opens.

## 12. Customer outcome feedback — build the real moat

Every delivered Growth Pack should make it easy for the customer to report outcomes for each account:

- not contacted;
- contacted / no response;
- wrong contact;
- bad fit;
- interested;
- meeting/estimate;
- proposal sent;
- won;
- lost;
- already had relationship;
- do not contact.

Use outcome data to improve:
- niche scoring;
- buyer-type weights;
- account-value weights;
- fit explanations;
- freshness rules;
- outreach angles.

The 75,000-record census is raw material.

The long-term proprietary asset is:

**verified record + service-fit history + customer outcome history**

Do not train scoring solely from AI judgments.

## 13. VPS/state-machine design

The VPS should be a deterministic workflow operator with AI assistance, not an AI salesperson improvising the business.

### Core states — BMC's own Growth customer

`research_candidate`
-> `contactable`
-> `outreach_queued`
-> `contacted`
-> `engaged`
-> `sample_requested`
-> `sample_delivered`
-> `core_offer_presented`
-> `paid`
-> `fulfillment_queued`
-> `fulfilled`
-> `upgrade_eligible`
-> `continuity_eligible`
-> `repeat_customer`

Terminal/side states:
- `suppressed`;
- `bounced`;
- `not_fit`;
- `paused`;
- `exception`;
- `refunded`.

Every active record must have:
- current state;
- last action;
- next action;
- next action time;
- experiment cell;
- service/niche;
- market/territory;
- attempt count;
- exception reason if blocked.

### Core states — prospect records being delivered

`candidate`
-> `verified`
-> `scored`
-> `qualified_A/B`
-> `reserved_for_order`
-> `delivered`
-> `outcome_pending`
-> outcome state.

Do not let the same record accidentally be oversold to the same customer.

## 14. Data additions planned

Do not destroy the current schema. Add tables/fields around it.

Likely additions:
- `growth_experiments`
- `growth_experiment_cells`
- `growth_customer_scores`
- `growth_sample_requests`
- `growth_prospect_scores`
- `growth_order_prospects`
- `growth_outcomes`

Minimum experiment-cell fields:
- niche/service key;
- geographic group;
- offer version;
- message version;
- sample version;
- status;
- started_at;
- valid_sends;
- engagements;
- samples;
- paid_orders;
- revenue;
- refunds;
- score;
- next_review_at.

Use events for auditability.

## 15. AI responsibilities

Local AI may:
- classify a provider/customer niche;
- summarize source evidence;
- draft a concise reason-for-fit;
- suggest a service-use case from verified evidence;
- generate an outreach angle;
- classify replies;
- draft routine responses;
- summarize experiment results.

Local AI may not by itself:
- invent a business/contact;
- mark a business active with no evidence;
- assert buying intent;
- bypass hard qualification gates;
- send money/refunds;
- change Stripe prices;
- enable outbound switches;
- activate a provider;
- override opt-out;
- silently widen a customer's requested territory.

Consequential actions stay deterministic or exception-gated.

## 16. Outreach safety / autonomy gates

Growth outreach remains OFF until:
- sender identity is valid;
- postal address is configured;
- unsubscribe/opt-out works;
- bounce/suppression works;
- reply handling/IMAP or an equivalent inbox workflow is reliable;
- sample generation works;
- the qualification engine passes offline QA;
- experiment tracking is installed.

Then enable only the Growth lane.

Service-network provider/buyer outbound can remain OFF while Growth experiments run.

Autonomous does not mean uncontrolled.

It means:
- bounded daily limits;
- deterministic suppression;
- visible experiment cells;
- automatic stopping rules;
- automatic exceptions;
- owner can pause globally.

## 17. Synthetic launch tests

Before sending real Growth outreach, CI/synthetic testing should prove:

1. service business is assigned to the correct niche/experiment cell;
2. sample request captures the required ICP fields;
3. five prospects pass hard gates;
4. no sub-65 prospect is delivered;
5. closed/out-of-territory/duplicate records are rejected;
6. sample is delivered;
7. $499 checkout links to the correct order;
8. Stripe payment unlocks fulfillment;
9. 100-prospect order requires adequate reserve inventory;
10. order does not contain duplicate customer-history rows;
11. premium next offer is presented only in the correct state;
12. downsell is presented only after a no;
13. continuity is not presented before fulfillment/use timing;
14. failed automation creates an exception;
15. opt-out suppresses future outreach;
16. duplicate webhooks/retries remain idempotent.

## 18. Owner workload target

Target:
- **95%+ of normal Growth records advance without human intervention**
- **100% of automation failures create a visible exception with context**

Early paid orders still receive human QA until the qualification standard is proven.

The goal is not to make Brett manually build packs forever.

The goal is to use the first paid orders to teach the deterministic system what a good pack actually is.

## 19. What gets measured first

Phase 1 dashboard should show:

### Inventory
- eligible niches;
- provider-customer pool by niche;
- A/B buyer inventory by niche and market;
- average verification age;
- contactability rate.

### Acquisition
- sends;
- valid deliveries;
- bounces;
- opt-outs;
- replies/engagement;
- samples requested;
- samples delivered;
- checkout visits;
- paid orders.

### Economics
- revenue;
- revenue per 100 valid sends;
- gross profit/order;
- fulfillment cost;
- replacement/refund rate;
- first-30-day cash return.

### Product
- sample quality audit pass rate;
- A/B distribution;
- outcomes by buyer/property type;
- repeat purchase;
- continuity uptake.

## 20. First implementation sequence

### Step 1 — preserve
COMPLETE:
- archive branch created from `a6b8e46`;
- no Service Network work deleted.

### Step 2 — document
COMPLETE when this file is on master:
- Phase 1/Phase 2 sequencing;
- qualification contract;
- niche-tournament rules;
- stop/scale rules.

### Step 3 — build offline qualification
Next engineering priority:
- deterministic Growth prospect scoring;
- hard gates;
- evidence fields;
- reserve calculation;
- sample generator;
- audit output.

No outbound required.

### Step 4 — create multi-niche offline tournament
- enroll eligible niches;
- generate sample rows across Arizona;
- grade quality;
- reject niches/cells without enough honest inventory.

### Step 5 — install experiment tracking
- niche-market cells;
- message/sample versions;
- metrics;
- automatic pause/promote logic.

### Step 6 — synthetic customer journey
- free five;
- $499 checkout;
- paid fulfillment;
- next-offer sequencing;
- outcome feedback.

### Step 7 — outbound readiness
- reply/opt-out/bounce handling;
- compliant footer;
- sender health;
- daily caps.

### Step 8 — live exploration
- 25 valid Growth outreaches per eligible niche/cell in controlled rotation;
- keep service-network outreach OFF;
- collect evidence.

### Step 9 — promote/demote automatically
- promote cells with real engagement/purchases;
- retest weak cells once;
- pause cells after the durable kill rule;
- reserve 10% capacity for new niches.

### Step 10 — first paid orders
- system generates;
- human QA protects quality;
- record fulfillment exceptions;
- collect customer outcome feedback.

### Step 11 — automate repeated QA
When failure patterns are understood, convert them to deterministic gates/tests.

### Step 12 — continuity
Only after core pack fulfillment is reliable:
- recurring fresh prospect offer;
- test pricing and volume.

### Step 13 — unlock Phase 2 from evidence
Service Network returns to active priority when Growth and/or buyer relationships create:
- real recurring service demand;
- enough verified providers;
- evidence that live opportunities are more valuable than research-only prospects.

## 21. When to try a different niche

BMC does not need Brett to guess.

The VPS should change allocation based on evidence.

### Keep/scale a niche when:
- qualification quality stays high;
- provider-customers engage;
- paid orders occur;
- fulfillment remains profitable;
- refunds/replacements remain low;
- repeat/continuity behavior appears.

### Diagnose before killing when:
- replies exist but samples are not requested;
- samples are requested but not consumed;
- samples are consumed but nobody buys;
- buyers purchase but replacement/refund rate is high.

These patterns point to different failures.

### Pause/kill a niche-market cell when:
- data cannot support a truthful product;
- two message/sample variants fail to create meaningful engagement;
- or 100 well-targeted valid outreaches with a credible sample/offer produce no meaningful interest.

### Retest later when:
- buyer inventory materially improves;
- season changes;
- offer materially changes;
- new outcome data suggests the old score was wrong;
- the market expands.

## 22. Key answer: can BMC test all niches at once?

**Yes, within controlled bounds.**

The autonomous advantage is that BMC can:
- score many service niches;
- generate samples for many markets;
- run small experiments in parallel;
- keep exact niche/market attribution;
- move traffic toward winners automatically;
- pause losers automatically;
- retest later.

What BMC should not do is send 100 messages to every service in every city simultaneously before it knows whether:
- the data is good;
- the sender infrastructure is healthy;
- the free sample converts;
- the product can be fulfilled honestly.

The scalable pattern is:

**broad offline testing -> small parallel live tests -> automated winner allocation -> continuous exploration**

That gives BMC the benefit of a portfolio without turning the experiment into noise.

## 23. Current strategic rule

Until Phase 1 proves paid demand:

> Do not add major features because they sound useful. Build only what improves qualification, engagement, purchase, fulfillment, feedback, or experiment reliability.

The next major engineering task is the **qualification + experiment engine**, not another public-site redesign and not more marketplace complexity.
