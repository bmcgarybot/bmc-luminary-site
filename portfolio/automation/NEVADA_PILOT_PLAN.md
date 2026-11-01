# Nevada pilot and Monday launch decision

Prepared November 1, 2026. Owner: Brett Coon / BMC Luminary Ventures LLC.

**Target:** Monday November 2, 2026 at 06:00 MST (America/Phoenix), 13:00 UTC and 05:00 Pacific in Nevada. This is a readiness target, not permission to release holds or send mail. First-week cash receipts and receipts by November 30 are commercial goals, not promises of income or profit.

**Current decision: Arizona is technically held for owner email review; Nevada is NOT paid-launch ready.** The Nevada research/copy/intake foundation is built. Do not describe preparation pages, 41,092 license records, 15 researched companies, an unused order table, or an automatic reminder as a working paid Nevada funnel.

## What is separate

- Nevada research lives only in `portfolio/data/states/NV/`; the Arizona root-artifact seed builder does not import it.
- Nevada customer requests and reserved order/payment-event tables live only in the Postgres `nevada` schema. State and city CHECK constraints reject other states/cities.
- The 54 existing service keys/display names are cloned, with 13 additions (67 total). Original marketing descriptions, Arizona-first positioning, market lists, payment links, customer histories and exposure allocations are not copied into Nevada.
- `/nevada/`, `/nevada/las-vegas/` and `/nevada/henderson/` have their own copy, stylesheet and JavaScript. No shared form handler defaults a Nevada request to an Arizona market.
- Global owner hold plus Nevada-specific owner hold plus Nevada intake flag control requests. Nevada checkout and outreach are explicitly unavailable in this release; flipping intake does not enable either.
- Metrics and exports must retain state, city, audience and product. Never combine NV source records with AZ qualified inventory or count the same regional company twice as distinct customers.
- The seven historical pressure-washing contacts remain in their existing owner-review hold. They are recoverable contacts, not dead leads and not a fresh cohort.

## Research completed and limitations

| Evidence | Las Vegas | Henderson | Interpretation |
|---|---:|---:|---|
| City-license discovery records | 26,501 | 14,591 | Source/license records, not unique firms or usable leads |
| Past source expiration despite included status | 21,375 | 14,220 | A current fetch cannot resolve these contradictions |
| Automatically eligible paid-delivery records | 0 | 0 | No registry-to-checkout promotion |

The exporter exhausts the exact filtered official source, orders by object ID, checks before/after counts, rejects duplicate IDs and writes SHA-256 manifests. Las Vegas filter: Active, NV, business mailing city Las Vegas. This is **not a claim of incorporated-city jurisdiction**; WITHINCITYLIMIT remains in the evidence. Henderson includes Commercial/Residential in COH and excludes Outside COH. Residential business street addresses, owner identities, licensing contacts and personal IDs are never requested. Records may change after capture; the manifest retains retrieval time, source URL, source condition and status semantics. Source reuse permissions remain a separate check before packaging a raw government dataset for resale.

Official sources:
- https://mapdata.lasvegasnevada.gov/clvgis/rest/services/DevelopmentServices/Business_Licenses/MapServer/0
- https://maps.cityofhenderson.com/arcgis/rest/services/public/OpenDataGovernment/MapServer/0
- https://www.lasvegasnevada.gov/Business/Business-License
- https://www.cityofhenderson.com/business/business-licenses

`primary-service-research.json` adds 15 named companies researched through their own public websites, with city/service coverage, public business routes, evidence dates and unresolved checks. It includes three solar-cleaning candidates serving both markets; cleaning, home-watch, grounds-care, errands/organization companies; and two staffing agencies for agency research only. A named agency is not represented as currently licensed. A company website's insurance, screening or credential claim is not independent verification. No company has been contacted, enrolled or approved by BMC.

`readiness.json` exposes all 134 city/service lanes. Uncovered lanes remain visible. It distinguishes candidates, qualified delivery inventory and licensing holds. Run `python3 portfolio/automation/nevada-launch-readiness.py --strict`; it currently returns nonzero, correctly.

## Market focus and hypotheses

Henderson's Census QuickFacts ACS 2020–2024 median household income is $90,138 in 2024 dollars. This supports testing discretionary household services; it does not prove neighborhood wealth, service demand or willingness to pay BMC. Do not mix this five-year figure with newer single-year estimates as if they were the same statistic.

Primary source: https://www.census.gov/quickfacts/fact/table/hendersoncitynevada/HSD410223

Priority research geography: Henderson (Anthem, Seven Hills, MacDonald Highlands, Lake Las Vegas), then Las Vegas and the Summerlin/southern-valley service areas. Treat these as service-area labels: Summerlin and southern-valley neighborhoods can cross municipal/unincorporated boundaries. Record actual coverage and jurisdiction; do not infer it from a Las Vegas postal address. Do not build or sell private wealthy-household address/email lists.

Initial practical categories: housekeeping service businesses, solar/window cleaning, home watch, groundskeeping, errands, home organization, pool/outdoor property care. Seasonal/second-home upkeep, recurring cleaning and holiday preparation are test hypotheses, not established demand. Broader inherited categories remain research lanes until fulfillment capacity exists.

Household employee research includes nannies, employed housekeepers, household/estate managers, personal assistants and private chefs. Nevada Labor states a private employment agency includes fee-based information helping people find employees or jobs and requires licensing before operation/solicitation. NRS 611 also addresses solicitation of Nevada employers by agencies. BMC must not relabel an employment placement as a generic research fee to bypass those rules. Do not solicit workers/employers, collect employee applications, match staff or collect placement fees in these categories while held. Personal-care requests also stay closed. Ordinary cleaning service businesses are a separate research category; a request for a live-in cleaner is still blocked.

Primary sources:
- https://labor.nv.gov/About/PEA/Private_Employment_Licensing/
- https://labor.nv.gov/About/PEA/Private_Employment_Agencies_Documents/
- https://www.leg.state.nv.us/NRS/NRS-611.html
- https://www.leg.state.nv.us/NAC/NAC-611.html
- https://www.leg.state.nv.us/NRS/NRS-449B.html

## Two paid experiments

| Audience | Offer | Proposed price | Before any payment |
|---|---|---:|---|
| Service businesses | Five free business targets, then 100 total including the five | $499 once | Confirm a 125-record eligible reserve for that exact NV city/service; original five remain bound to buyer/sample; usable routes and source-fit QA |
| Households | Three researched service businesses, public routes, comparison and quote checklist | $49 once, owner review pending | Confirm three suitable current business routes for exact city/scope; no employment/personal-care placement; approve delivery capacity and refund terms |

BMC charges for its own research. Quotes, service contracts and service payments are directly between household and service company. Do not collect/remit service-job payments or advertise a vetted/available provider network. No provider subscription, lead charge or paid-placement fee is silently added. No worker is charged.

Stripe read-only check on Nov 1: BMC's connected account is LIVE and contains four existing Arizona products; there are no Nevada products. Existing links cannot simply be reused: product metadata includes `bmc_arizona_services`, and a market-expansion description names Arizona. No live charge, product creation or link activation occurred in this work.

Required separate products: `nv_growth_pack_starter` ($499) and `nv_household_research` (proposed $49). Payment architecture still to implement: exact NV product/price/link allowlist; server-generated request reference and buyer binding; signature verification; dispatch before AZ payment accounting; separate idempotent event/session handling; exact amount/currency checks; async-payment success; pending/mismatch exceptions; fulfillment-after-paid only. A success page must never mark an order paid. Keep links disabled until all these pass. Refunding, fulfillment and reconciliation must remain state-specific.

Consumer delivery standard proposed for review: begin only after scope/capacity acceptance and payment; deliver within one business day; show what was researched and what remains unknown; refund if BMC cannot deliver the promised three researched options. No sales tax conclusion or local operating-license status is asserted here; confirm actual BMC registration/requirements before selling in the new state.

## Acquisition and first-week execution

No new customer or owner-preview email is authorized yet. Existing copy review and explicit approval are still required. `pilot-config.json` contains five Nevada-only message drafts: first touch, requested sample, one check-in, household acknowledgement and delivery. They are copy preparation, not an active sequencer. Production sends must add truthful configured legal postal address, working opt-out, suppression check, buyer/request tokens and the durable delivery ledger; never copy an Arizona-first body or checkout description into these messages.

After approval and technical acceptance:
1. Open reviewed public request/payment paths at the readiness target. Start approved B2B outreach in Nevada business hours, suggested 08:30 Pacific / 09:30 MST, not 05:00 Pacific. This suggestion is not a scheduled send.
2. AZ: use the 11 fresh held contacts first, preserve seven historical contacts for separate review. No padded fresh-contact count.
3. NV business: start with up to 10 individually reviewed service-business prospects per day, stop on replies/opt-outs and keep its counters/quotas independent. Household/staffing agency research records are not automatically a commercial campaign.
4. NV consumer: use approved local business partners/referrals and owner-approved public promotion. No household cold outreach, scraped affluent contacts or paid ad purchase is authorized by this plan. Record referrer/source with consent.
5. Review replies and fulfillment daily. If no qualified replies after 20 approved delivered B2B touches, inspect delivery, offer fit and sample quality before expanding volume. Do not react by blasting more sources.

Hypothesis for first week (not a forecast): 20–40 reviewed B2B contacts, 4 requested samples, 1 paid pack; 5 household requests, 2 accepted/paid shortlists. One $499 pack + two $49 shortlists = **$597 gross receipts**, before processor fees, refunds, taxes and labor. That arithmetic is not profit or guaranteed income. A zero-sales result is possible and must be reported honestly.

By Nov 6: reconcile actual paid/fulfilled orders and contribution after fees/refunds, decide whether either test earns further effort. By Nov 30: compare state/audience cohorts using submitted requests, confirmed routes, SMTP submissions versus actual replies, samples, checkouts, paid receipts, fulfillment timeliness, refunds and contribution. Scale only an offer that both sells and can be fulfilled.

## Exact release acceptance

Arizona: current-release owner-only Gmail preview/rendering and signed first-touch route review; actual owner approval; exact deployed approval SHA; technical audit still clean. No approval was inherited from the request to prepare Nevada.

Nevada: qualified source/contact inventory; owner price/copy approval; separate Stripe configuration; signed paid-event and replay/concurrency proof; real 3-option/100-target fulfillment proof as applicable; state isolation and suppression/exposure tests; supported refund/exception handling; CI and production routes; correct state-specific metrics. Staffing/personal care need separate resolution and remain excluded even if unregulated services launch.

Only after these gates should the corresponding hold be released. Simultaneous launch is a target, not a reason to disable failed gates. If NV paid proof is incomplete at deadline, report it as blocked rather than claiming a paid launch because preparation pages are live.

A one-time read-only/repair readiness check was created for Nov 2 at 06:00 America/Phoenix. It cannot send mail, release holds, charge customers or upgrade models. Its future run is not evidence of readiness now.
