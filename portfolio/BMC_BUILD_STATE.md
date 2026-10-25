# BMC Build State — Source of Truth

Last updated: 2026-10-24 (America/Phoenix)

## Purpose

This file is the durable handoff for the BMC Luminary Ventures service-portfolio build. New ChatGPT threads should read this before changing strategy, pricing, site architecture, or automation.

## Non-negotiable launch constraint

- Keep total pre-revenue cash outlay below **$300 until the first $5,000 in gross revenue**.
- Use the existing shared automation/infrastructure instead of buying separate hardware or software stacks for each business.
- Spend before $5K only where it directly supports customer acquisition or fulfillment.
- Avoid unnecessary paid branding, large ad budgets, expensive CRMs, or new hardware before traction.

## Business architecture

BMC Luminary Ventures LLC is the parent/operator. The portfolio is not "53 websites and hope SEO works." The public sites are acquisition and conversion endpoints for several shared revenue engines.

### Revenue engine 1 — B2B Prospecting Packs

Early cash-flow product that does not depend on marketplace traffic.

- **$499** — 100 targeted prospects
- **$749** — premium pack with competitor analysis + outreach plan
- After three paid orders, test **$149–$249/month** refresh subscriptions

These are targeted prospect lists / research packages, not guaranteed customer leads.

### Revenue engine 2 — Service-match marketplace

Customer has a real need → BMC qualifies it → matching provider sees the opportunity → provider accepts or declines → contact information is released after acceptance.

Provider model:
- Free to join/list initially
- Use initial free or low-cost opportunities to prove lead quality
- Monetize later through accepted-lead fees, booked-job fees where appropriate, referral economics where appropriate, and/or exclusive territory arrangements
- Do not invent arbitrary giveaways such as "first 3 leads free" unless deliberately approved

### Revenue engine 3 — Maintenance concierge / recurring account ownership

Initial target customers include restaurants, schools, churches, theaters/venues, daycare, medical offices, gyms, offices, property managers, apartment managers, and other facilities with recurring multi-service needs.

Initial target pricing: roughly **$49–$149/month**, with additional partner/service revenue layered on top.

## Revenue target logic

The remembered **$8,333/month** is best treated as the approximate monthly run rate for $100,000/year, not a single bulk-lead product price.

A plausible mixed month from the original plan:
- 4 × $749 premium prospecting packs = $2,996
- 30 accepted service leads × $100 = $3,000
- 1 exclusive territory = $1,000
- 5 recurring prospect refreshes × $199 = $995
- 4 concierge accounts × $99 = $396
- Total = $8,387

## Customer acquisition strategy

Early acquisition is **outreach-led**, not dependent on people discovering BMC through Google.

Primary channels:
1. Compliant B2B email
2. Targeted contact-form outreach for provider recruitment
3. Direct mail where economics justify it
4. Referral/partner channels
5. Selective LinkedIn/social outreach
6. SEO/local pages as a compounding inbound channel, not the only acquisition source

The automation should research prospects, score/qualify them, prepare outreach, send controlled batches, classify replies, route interested prospects, and create follow-up tasks/queues. Human review remains appropriate at early revenue stages.

## Marketplace flywheel

BUYER OUTREACH → customer request → BMC qualification/routing → PROVIDER NETWORK → accepted opportunity → fulfillment → proof/results → paid lead/territory economics

Provider acquisition runs in parallel: find and recruit electricians, HVAC companies, cleaners, handymen, tree/landscape companies, commercial maintenance vendors, etc., starting locally.

## Public-site rules

The customer-facing site must solve the visitor's problem, not explain BMC's internal model.

### Homepage/customer journey
- Above the fold must make the purpose obvious in ~3 seconds.
- Lead with the visitor's problem / "What do you need help with?"
- Simple free-text request entry should be prominent.
- Do not expose a 53-service database-style dropdown.
- Do not lead with explanations of provider routing, portfolio structure, or internal mechanics.
- Use real photography/video where useful.
- Use meaningful scroll motion/reveals and polished visual hierarchy without gimmicks.
- Mobile-first: single-column layouts where appropriate, large tap targets, tight copy, fixed/sticky CTA when useful.
- Customer/provider switch must be easy to find near the top. Preferred labels: **I'm a Customer** and **I'm a Provider** (or similarly plain language).
- Provider/network content should not clutter the customer journey.

### Service-request flow
- Guided/simple request flow.
- Free-text description is valid.
- Backend can classify common needs from plain English.
- Keep forms short and understandable.
- Ask only for details necessary to route and contact.

### Design direction
- Move away from the old dark/Craigslist-like template.
- Editorial/Apex-like feel: warmer background, stronger typography, whitespace, photography, restrained accent treatments, polished cards/panels.
- Niche storefronts should feel like real local service brands, not cloned database pages.

## Current repo

GitHub: **bmcgarybot/bmc-luminary-site**

Primary site area: `portfolio/`

Current public-domain work in prior thread centers on BMC Service Network.

## Current storefront migration status

Modernized storefronts exist for many services, including recent commits for commercial services, vehicle services, pet sitting, and mobile pet grooming.

The following storefronts were still using the old `service-front-4` structure at this checkpoint and are high-priority cleanup:
- `portfolio/hvac-heat/index.html`
- `portfolio/landscaping/index.html`
- `portfolio/home-staging/index.html`
- `portfolio/junk-hauling/index.html`
- `portfolio/tree-service/index.html`
- `portfolio/house-cleaning/index.html`
- `portfolio/handyman-repairs/index.html`
- `portfolio/electrical-service/index.html`
- `portfolio/commercial-cleaning/index.html`
- `portfolio/realtor-listing-prep/index.html`
- `portfolio/facility-maintenance/index.html`

House cleaning was specifically called out by the user as a bad/old experience and should be repaired early.

## Current UX priorities

1. Finish replacing every old storefront/template so no click sends a user back to old colors/layout.
2. Make homepage/customer path pain-first, obvious, visual, mobile-optimized, and conversion-focused.
3. Add a clearly visible Customer / Provider switch at the top-level navigation.
4. Keep provider signup/listing free initially; defer lead/territory charging until quality is demonstrated.
5. Build the actual acquisition engine so sites are not waiting for organic traffic.
6. Re-launch/finish Prospecting Packs because they can create revenue before marketplace scale.
7. Build provider recruitment + qualification + lead acceptance workflow.
8. Build buyer research/outreach + reply classification + intake workflow.
9. Add concierge accounts for multi-service facilities as recurring revenue.

## Automation maturity target

- **$0–$1K:** AI assists research, enrichment, scoring, copy, and documents; human reviews.
- **$1K–$5K:** n8n/shared workflow system handles routine job creation, routing, messaging, and delivery packaging.
- **$5K–$15K:** mostly exception-based operations; intake/routing/reminders/fulfillment heavily automated.
- **$15K+:** portfolio operator pattern with separate queues/agents by business line.

## Important implementation notes

- Existing backend already includes plain-English classification for several common requests.
- Do not force users to understand BMC's taxonomy.
- Old page/template remnants are considered a bug, not an acceptable transitional state.
- Stripe account existence/integration should be verified before assuming payment plumbing is complete.
- Strategy changes should be written back into this file so future chats inherit the latest decisions.
