# BMC Service Network — Revenue & Acquisition Model

Updated: 2026-10-25

## Core idea

BMC is now explicitly organized around **problem-first customer paths**, not a directory-first experience.

Primary public outcomes:
1. Fix or handle a job
2. Get me options
3. Keep it handled
4. Help me spend less
5. Help me get more customers

See:
- `portfolio/automation/CUSTOMER_PATHS.md`

The founding operating inspiration includes the agentic quote-sourcing / lead-generation / outreach model demonstrated in Chris Koerner's "I Let AI Make and Save Me Money for 6 Weeks (Here's What Worked)" video. The BMC adaptation is to use automation to remove searching, vendor chasing, quote gathering, comparison, research, and follow-up while keeping commercial and compliance controls.

BMC is not a passive directory and it is not primarily "53 websites waiting for Google traffic."

BMC Luminary Ventures LLC owns one shared operating system that supports:
- customer acquisition;
- provider acquisition;
- structured service intake;
- classification and routing;
- provider accept/decline;
- contact release;
- job/outcome tracking;
- lead monetization;
- recurring concierge/service relationships;
- productized B2B research and prospecting products.

Customer-facing niche brands/pages are storefronts. The long-term asset is the verified provider network, buyer relationships, routing history, conversion history, and reusable automation.

## Two ends of the machine

### Demand side
BMC finds customers and buyers through:
- controlled B2B email outreach;
- self-serve landing pages;
- local/SEO pages after a niche has support;
- referral partners;
- selective direct mail;
- social/community/referral traffic;
- paid search only after manual fulfillment and monetization work.

For local B2B categories, BMC should not sit around waiting for search traffic. It should proactively research and contact likely buyers such as restaurants, property managers, schools, churches, theaters, offices, medical facilities, daycare centers, gyms, apartment operators, and other organizations relevant to a service.

### Supply side
BMC researches and recruits service providers by service + territory + capacity.

Early policy:
- free to join the provider network;
- no surprise subscription;
- first qualified leads can be free or low-cost to prove lead quality;
- after proof, monetize accepted leads, booked jobs where appropriate, referral/marketing fees where permitted, or exclusive territory arrangements;
- every paid term must be explicitly presented and accepted before it applies.

A provider is not launch-ready merely because BMC found the business online. Credentials/insurance/license review and explicit pilot acceptance are required where applicable.

## Revenue engines

### 1. BMC Growth / Prospecting Packs
Original plan:
- $499 for 100 qualified prospects;
- $749 premium package with competitor snapshot + outreach plan;
- after three paid orders, test a $149-$249/month refresh product.

Current Stripe products also include:
- Local Competitor Intelligence Pack — $299;
- Local Market Expansion Pack — $699.

These are useful because BMC can sell them before the routed-service marketplace has large traffic.

### 2. Service Match / qualified lead routing
Customer submits a real service need.
BMC qualifies and routes it.
Provider sees the opportunity before customer contact details are released.
Provider accepts or declines.
If accepted, both sides get contact details and BMC tracks the outcome.

Original monetization options:
- accepted lead fee;
- booked-job fee;
- referral/marketing fee where permitted;
- exclusive monthly territory subscription.

Original modeling used examples of:
- $75 accepted leads;
- $100 accepted leads;
- $1,000/month exclusive territories.

Those were revenue-model examples, not a requirement that every niche use identical pricing.

### 3. Maintenance / facility concierge
Original restaurant pilot:
- reminders;
- recurring vendor coordination;
- service dates/certificates;
- one-click approvals;
- preferred-vendor routing.

Original early pricing concept:
- $49-$149/month after the service proves obvious administrative value;
- partner revenue can be layered on top.

The same model can later serve schools, churches, theaters, offices, gyms, daycare, medical offices, and similar facilities.

### 4. Quote/procurement concierge
Businesses/property managers submit a purchase/service need.
BMC sources multiple viable quotes.
Potential monetization:
- buyer service fee;
- supplier referral/marketing fee where permitted;
- flat sourcing fee.

### 5. Brokerage / savings / recurring partner products
Examples from the original opportunity catalog:
- used restaurant equipment brokerage;
- vendor-switch savings audit;
- commercial linen/vendor sourcing;
- waste/recycling audit;
- recurring route/service relationships.

## The $8,333/month memory

The original plan does not define an $8,333 "bulk lead package."

$8.3K/month is best understood as roughly the monthly run rate needed for a six-figure annual business.

The plan intentionally expected a MIX of revenue streams rather than one product carrying the entire target.

An illustrative BMC month can combine:
- Growth/Prospecting Packs;
- accepted lead fees;
- one or more territory subscriptions;
- recurring refresh products;
- concierge accounts;
- procurement/referral revenue.

Do not present any illustrative mix as guaranteed revenue.

## Original first-$5K models

The plan modeled:
- 7 × $749 Growth Packs = $5,243;
- 4 × $749 packs + 20 × $100 accepted leads = $4,996;
- 3 × $749 packs + 2 × $1,000 monthly territories + 15 × $75 leads = $5,372;
- 4 × $499 packs + 10 × $100 leads + 10 × $99 concierge months + setup fees = $5,000+.

This is the clearest statement of the intended multi-engine model.

## Acquisition priority

Early customer acquisition is OUTREACH-LED, not SEO-dependent.

The sites need to convert, but the early engine should actively create conversations:
1. build targeted buyer lists;
2. research/score them;
3. send small compliant personalized batches;
4. classify replies;
5. route interested buyers into the correct BMC intake;
6. follow up automatically where appropriate;
7. track outcomes and suppress opt-outs.

Provider acquisition runs in parallel:
1. research providers;
2. prioritize community-recommended / established local companies;
3. invite them to join free;
4. verify service area/capability/credentials;
5. record capacity and minimum job preferences;
6. send qualified opportunities;
7. score acceptance, response, and close history.

## Automation target

### $0-$1K revenue
AI assists research, scoring, copy, and documents. Human reviews consequential output.

### $1K-$5K
n8n acts as workflow operator:
- creates/moves records;
- sends routine messages;
- runs follow-up;
- creates delivery packages;
- surfaces exceptions.

### $5K-$15K
Exception-based operations:
- intake/routing/reminders largely automated;
- Brett handles unusual cases, QA, disputes, provider approvals, and decisions.

### $15K+
Portfolio operator:
- separate queues/agents by business;
- add compute only if throughput creates a revenue bottleneck.

## Public-site strategy

The root BMC Service Network site is a **fallback/rescue hub**, not the primary destination for most acquisition.

Campaign rule:
- buyer outreach and ads deep-link to the exact service/problem landing page promised in the message;
- provider recruitment deep-links to the provider offer/activation flow;
- approved providers use Provider Login / Provider Dashboard;
- research-product outreach deep-links to the exact paid offer;
- the root site and intelligent search catch broad, organic, referral, or unclear-intent traffic.

The customer should not be taught BMC's internal architecture.

Public intelligent search uses two layers:
1. fast browser-side aliases/synonyms so common searches work even if backend AI is unavailable;
2. the VPS service-search API, which uses deterministic rules first and local AI second.

A search must show the user the likely service choices before asking for full contact details.

Customer pages should answer:
- Can you help with my problem?
- What does BMC think I need?
- Do you serve my area?
- What happens after I submit?
- What do I do next?

Provider experience is a separate product:
- prospects see the provider acquisition offer;
- approved providers receive magic-link access to a self-service dashboard;
- the dashboard shows new opportunities, accept/pass, active jobs, outcome updates, and matching settings;
- routine provider actions should not require Brett.

These are two ends of the same machine and should feel like separate products while sharing one backend.

## Launch rule

Do not wait for all service fronts to be equally polished.

A niche is minimum-live when:
- buyer/problem/monetization are defined;
- coverage is defined;
- landing page is understandable;
- intake works end-to-end;
- provider path exists if needed;
- monetization path is testable;
- analytics exists;
- initial provider/buyer/prospect list exists;
- at least one acquisition channel is active;
- automation records the event and creates the next action;
- failures surface as exceptions.

Then move on and optimize from real evidence.


## Autonomous demand discovery

BMC should not rely on one acquisition channel. The bounded operator continuously builds both supply and demand while external/high-risk actions remain gated.

- Public procurement monitor: check official city/county/state/federal sources for service contracts and solicitations, classify them to BMC service keys, deduplicate them, and stage them for human review. Never submit a bid or accept procurement terms automatically.
- Public local-demand signals: use ordinary search indexing to discover publicly visible local requests/recommendations from sources such as publicly indexed Nextdoor and Facebook pages. Do not log into, scrape, or bypass access controls on private groups. Do not automatically contact individual posters.
- B2B buyer research: explicitly include hospitals, medical/dental offices, therapy/behavioral facilities, pharmacies, grocery/retail, insurance/professional offices, hotels, schools, churches, restaurants, property managers, apartments, warehouses, auto dealers, and public facilities.
- Terrain-aware provider research: boost relevant context for high-desert/wildfire, acreage/septic/well/grading, Verde Valley irrigation, Flagstaff snow/freeze/heating, and desert heat/pool/HVAC/pest markets where appropriate.
- Private daily brief: the intended owner workflow is a few short checks per day focused on exceptions, provider approvals/credential-sensitive service changes, actionable public contracts, and unusual operator tasks. Routine research and monitoring should continue without owner intervention.

Outbound prospecting remains separately gated and OFF until explicitly approved. Public opportunity discovery and public-index research are read-only research activities.


---

## 2026-10-26 Phase sequencing update — Growth Intelligence first

BMC is preserving the full Service Network and moving it to a **Phase 2 priority**, not deleting it.

The active Phase 1 proof target is the Growth Intelligence money model documented in:

- `portfolio/automation/GROWTH_INTELLIGENCE_MASTER_PLAN.md`

Key change:
- do not treat Growth as a generic "100 leads" list;
- sell qualified commercial prospect research with evidence, fit, and removed research effort;
- free five-prospect sample first;
- $499 core pack;
- premium as a sequential upgrade where practical;
- downsell after a no;
- continuity after fulfillment;
- Service Network/live opportunities later.

BMC will test multiple eligible service niches in parallel using controlled experiment cells rather than betting the company on one niche.

The durable kill rule remains 100 well-targeted valid outreaches with a credible sample/offer and no meaningful interest, but niches first go through offline data-quality and smaller exploration stages.

The frozen pre-pivot Service Network snapshot is:
- branch: `archive/service-network-pre-growth-pivot-2026-10-26`
- commit: `a6b8e46d01e02ec55a876861cc22529eb3ea6677`

No Service Network code/data should be removed solely because of this sequencing change.
