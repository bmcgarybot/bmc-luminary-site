# BMC Problem-Solver Architecture

Updated: 2026-10-25

## Why this exists

BMC is not a directory of 53 businesses.

The public system should start with the **customer's problem or desired outcome**, then choose the service, workflow, provider, research product, or concierge layer behind the scenes.

Founding inspiration for the operating model includes Chris Koerner's video:
- "I Let AI Make and Save Me Money for 6 Weeks (Here's What Worked)"
- https://youtube.com/watch?v=JhyVSrQPVSg

The useful lesson is not "AI creates passive businesses." It is that agents can remove repetitive work between a painful problem and a useful result:
- researching vendors;
- gathering options;
- comparing quotes;
- sourcing suppliers;
- finding prospects;
- sending controlled outreach;
- following up;
- organizing results.

BMC turns that labor compression into a real operating company.

## Customer promise

**Bring BMC the problem, not the vendor list.**

The system should maximize:
- clarity of the desired outcome;
- confidence that there is a real next step;
- speed to the first useful result;

while minimizing:
- searching;
- calling around;
- repeated forms;
- vendor chasing;
- category confusion;
- coordination effort.

This is the practical BMC application of the Hormozi value-equation lens.

## The five primary customer paths

### 1. FIX OR HANDLE A JOB

Customer thought:
> "Something needs to get done. I just need the right person."

Examples:
- breaker keeps tripping;
- no heat / no cooling;
- dead tree;
- deep cleaning;
- garage door will not open;
- towing;
- landscaping;
- restaurant equipment failure.

Public entry:
- `/request/`
- niche service fronts

Intake:
- `universal_request` or niche `form_type`

Fulfillment:
- classify plain-English problem;
- route to relevant service_key;
- provider accepts or passes;
- release contact details after acceptance;
- track contact / estimate / won / lost.

Revenue:
- accepted lead fee;
- booked-job / permitted referral economics;
- territory subscription later.

Natural next offer:
- recurring maintenance;
- related service;
- facility/property concierge when repeat need appears.

### 2. GET ME OPTIONS

Customer thought:
> "I do not want to search, contact, and compare a bunch of vendors myself."

Examples:
- several contractors for a project;
- commercial equipment quotes;
- replacement vendor;
- procurement comparison;
- expensive purchase where comparison matters.

Public entry:
- `/quote-sourcing-concierge/`
- `/equipment-quote-concierge/` where relevant

Intake:
- one normalized scope;
- market;
- budget/specs when known;
- deadline;
- decision criteria.

Fulfillment:
- research viable vendors;
- qualify obvious fit;
- coordinate quote requests;
- normalize/organize responses;
- surface viable next choices.

Revenue:
- buyer sourcing fee;
- supplier referral/marketing fee where appropriate and permitted;
- project fee.

Natural next offer:
- vendor savings audit;
- recurring sourcing;
- maintenance concierge;
- preferred vendor management.

### 3. KEEP IT HANDLED

Customer thought:
> "I have recurring maintenance and do not want to coordinate every vendor myself."

Examples:
- churches;
- schools;
- theaters;
- restaurants;
- offices;
- medical;
- gyms;
- daycare;
- property managers;
- multi-site operators.

Public entry:
- `/facility-maintenance/`
- `/restaurant-maintenance-concierge/`
- property/STR concierge paths where applicable

Fulfillment:
- recurring maintenance calendar;
- request intake;
- service splitting;
- provider routing;
- reminders;
- service history;
- exception handling.

Revenue:
- continuity / concierge subscription;
- initial concept roughly $49-$149/month after value is proven;
- provider/referral economics layered where appropriate.

Natural next offer:
- deeper vendor consolidation;
- quote sourcing;
- savings audit;
- exclusive/preferred provider arrangements.

### 4. HELP ME SPEND LESS

Customer thought:
> "I think we are overpaying or our vendor setup no longer fits."

Public entry:
- `/vendor-savings-audit/`
- `/waste-recycling-audit/` for specialized scope

Fulfillment:
- inventory current recurring categories;
- identify obvious service-level mismatch;
- identify rebid/consolidation candidates;
- source alternatives where useful;
- organize decision.

Revenue:
- fixed audit;
- sourcing fee;
- success fee where appropriate and clearly contracted.

Natural next offer:
- quote sourcing;
- managed vendor transition;
- recurring maintenance concierge.

### 5. HELP ME GET MORE CUSTOMERS

Customer thought:
> "I need a better list of who to sell to, what to say, or where to expand."

Public entry:
- `/growth-packs/`
- `/competitor-intelligence/`
- `/market-expansion-pack/`

Current products:
- $299 Competitor Intelligence
- $499 Local Growth Pack
- $699 Market Expansion Pack
- $749 Premium Growth Pack

Fulfillment:
- public business research;
- qualification;
- priority;
- public contact path;
- fit notes;
- outreach direction;
- competitor / market research as purchased.

Natural next offer:
- premium version;
- market expansion;
- recurring prospect refresh ($149-$249/month concept after proof);
- later managed outreach where appropriate.

## The Hormozi trilogy applied to BMC

### Offers

Every page starts with the result, not the mechanism.

For each offer ask:
1. What outcome does the customer actually want?
2. Why should they believe BMC can move them toward it?
3. How quickly can BMC create the first useful result?
4. How much searching / calling / coordination can BMC remove?

Do not use exaggerated guarantees to compensate for weak fulfillment.

### Leads

Once a path has a credible offer and fulfillment route, feed it with acquisition.

Early channels:
- compliant targeted B2B email;
- selective public-business contact outreach;
- referrals;
- direct mail where economics justify it;
- organic search/service pages as compounding inbound;
- social/LinkedIn selectively;
- paid acquisition only after economics are measured.

Do not advertise a path merely because a landing page exists.

### Money Models

Treat a customer relationship as a sequence, not one isolated sale.

Attraction / entry:
- free customer service request;
- free provider membership;
- selected free/reduced pilot opportunities;
- low-friction fixed-price research entry where appropriate.

Core monetization:
- accepted leads;
- sourcing fees;
- research packs;
- audits;
- concierge accounts.

Upsells:
- $499 → $749 Growth Pack;
- one-off quote sourcing → larger sourcing/project management;
- single service → multi-service facility coordination;
- audit → rebid / sourcing implementation.

Downsells:
- narrower scope;
- fewer deliverables;
- different payment structure;
- lower-intensity self-serve or research-only option where it can still produce value.

Continuity:
- prospect refresh;
- facility/restaurant maintenance concierge;
- territory subscriptions;
- recurring vendor coordination;
- recurring service relationships.

The goal is not to force an upsell. It is to have the next useful solution ready when the next problem naturally appears.

## Website behavior rules

1. Homepage asks for the outcome first.
2. Service directory is secondary.
3. Customer never needs to understand service_key taxonomy.
4. Free text is always a valid starting point.
5. Outcome cards should lead to the correct workflow, not just another generic page.
6. Every public page should answer:
   - What problem does this solve?
   - What result do I get?
   - What do I have to do?
   - What happens next?
7. Avoid internal phrases such as:
   - managed service workflow;
   - provider routing system;
   - portfolio architecture;
   - monetization model.
8. Provider experience remains separate at BMC Partner Network.

## Automation behavior rules

Agents should remove labor, not invent authority.

Safe automation target:
- public-business research;
- deduplication;
- qualification;
- classification;
- quote/vendor candidate research;
- draft outreach;
- controlled approved sending;
- follow-up;
- reply classification;
- routing;
- reminders;
- document/deliverable assembly;
- exception creation.

Keep human review for:
- provider approval;
- credentials ambiguity;
- public-sector procurement ambiguity;
- disputes;
- refunds;
- material commercial terms;
- exclusivity;
- high-dollar/high-risk sourcing decisions.

## Product-development rule

Do not add a new niche because "we can build a page."

Add or prioritize a path when:
- the pain is obvious;
- BMC can remove meaningful work;
- fulfillment is realistic;
- a buyer can be reached;
- monetization is clear;
- the next action can be automated or surfaced as an exception.

The core asset is not the number of pages. It is BMC's ability to repeatedly convert **problem → reduced effort → useful result → monetizable next step**.
