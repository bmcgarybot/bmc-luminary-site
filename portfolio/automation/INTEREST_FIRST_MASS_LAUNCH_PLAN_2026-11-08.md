# BMC Service Network — Demand-First Mass-Launch Preparation
Updated: November 8, 2026 (America/Phoenix). **PREPARATION ONLY. NO CUSTOMER SEND AUTHORIZED.**

## Executive decision

Preserve the original Service Network, nine-company Phoenix cohort, all historic SMTP attempts, previous sample PDFs, payment paths, opt-outs, budget ledger, and research records. Prepare the new `growth_interest_first` / `interest-first-v1` campaign to reach more eligible Arizona service businesses. A large staged contact pool is **not** a signal to blast mail. The owner requires an always-on Work session to supervise the first external release.

The commercial hypothesis to validate: local service-company owners will pay BMC for *useful, company-specific commercial account research* after seeing five real, usable potential accounts free. Research candidates are **not** quote requests, warm buyers, job guarantees or accepted providers.

## Verified position

- Production at last Nov 8 VPS check: deployed `f5689047d76a01384ba0b1dd94a4bc53d9751d0e`; API, DB and scheduler healthy; owner hold ON; three legacy outreach switches OFF; revenue $0; 22 historic SMTP submissions, 0 replies, 2 historic sample deliveries.
- Nov 7 staged 167 distinct interest-first recipients. Nov 8 additional Chino Valley tree-service record staged once. New campaign queue **168 staged, zero new sends**; verify from next live census before using the number operationally.
- The larger historical census contains 75,000+ unique records across Arizona markets, but does not equal 75,000 contactable vendors or 75,000 deliverable customers. Normalized vendor records had 87 email-ready businesses at the last launch audit; many inventory records have no public email. Never claim there are 500+ usable email recipients before counting them.
- Official-source step Nov 8/9 verified four source lanes, inspected 3 records and updated 3; 0 new prospects, 0 paid research calls and 0 customer sends.
- Paid catalogue driver remains stopped, internal $50 allowance unchanged. The account-level OpenAI credit balance shown in the owner's Nov 7 screenshot is separate from the internal ledger.

## Market evidence and positioning

The lower-priced alternative is a generic list. On November 8, 2026, marketplace examples included Upwork offerings for 100 contacts at $25-$39, and Upwork described standard lead-list project pricing of $150-$500 for 100-500 contacts. Apollo lists a free tier and a $49/seat/month annual-plan Basic tier. These are changing listed prices and not proof of equal quality or BMC demand.

Sources:
- https://www.upwork.com/hire/lead-generation-specialists/
- https://www.upwork.com/services/product/admin-customer-support-b2b-lead-generation-linkedin-leads-email-list-building-web-research-1853933779397123076
- https://www.upwork.com/services/product/admin-customer-support-professional-b2b-lead-generation-and-accurate-data-entry-services-2113858380436362886
- https://www.apollo.io/pricing
- https://www.sba.gov/business-guide/plan-your-business/market-research-competitive-analysis

**Position BMC as commercial account intelligence**, not 100 scraped names. Each delivered row must have the real company/property name, exact location/territory, relevant business type, plausible service-use case, current public contact route, checked source/date, documented fit rationale and practical outreach angle. A numeric fit score alone is not buyer intent.

## Ideal initial buyer hypotheses, not established demand

- Commercial janitorial and facility cleaning: repeated commercial property needs; strongest currently audited 100-pack lane is Phoenix commercial cleaning.
- Exterior maintenance / pressure washing: a similar commercial account research use case, but current Phoenix source reserve is below 125; only smaller scopes where supported.
- Commercial grounds/landscaping, HVAC/backflow, facilities maintenance, parking-lot services, junk-hauling: worth testing on free samples **only where five suitable prospects can be sourced**. Do not pretend that every one of these has current paid-pack capacity.
- Other service categories remain eligible for basic contact discovery; do not promise paid packs based solely on category coverage.

Research geography: all original 21 markets, preserving their literal labels. Group thin markets for analysis (e.g., Prescott/Prescott Valley, Verde Valley, Phoenix/Scottsdale, Kingman/Bullhead, Flagstaff/Northern AZ) but keep each customer's permitted delivery territory exact. Do not silently treat Phoenix metro, Kingman/Mohave or nearby towns as the same service region.

## Inventory expansion: 500+ is a target to validate, not a count

1. Run the **read-only interest_first_readiness** census after PR #111 passes CI and is deployed through the normal guarded relay. It must report current queue by city × service and *separately* the vendor universe with email/phone/source presence.
2. Inspect the gap: potential vendor-company records → recorded public email → distinct unsuppressed email address → eligible contact → queued. Preserve excluded contacts and history, never reset/recreate them.
3. Use existing source-native, public business websites and contact information before paid API research. Website/contact forms/phones are alternate contact routes and research evidence, not automatic email authorization. A missing website, license or Google profile is **not** a universal exclusion.
4. A bounded contact enrichment program may check public company contact pages for published business mailboxes, respecting host access restrictions and avoiding guessed personal addresses. Do not impose the original customer-prospect audit rules on simple introductory business contacts.
5. Deduplicate by normalized email/domain and business identity; keep original market/service tags and prior-send/opt-out checks.
6. Stage newly eligible recipients in a separate campaign without sending; compare before/after counts. Stop using external search responses that fail Arizona geographic relevance checks. Bad search output must never become a sold research row.
7. If fewer than 500 eligible email contacts exist, report the actual number and reason; grow reachable **channels** (company websites, business lines, referral paths) without claiming they are SMTP eligible.

## One customer-facing money model

**Attraction:** "Reply FIVE and BMC will research five potential commercial accounts that fit your service, preferred customer type and area, at no cost. They have not requested quotes." Obtain interest *before* spending on deep research.

**Preference exchange:** Ask two questions in the reply thread: (a) which cities/territory, and (b) what kinds of commercial customer or jobs. Avoid landing pages that ask the same information twice. Save confirmed scope.

**Fulfillment:** Reuse the historical buyer census first. Create up to five *plausible pre-matches* cheaply for each potential recipient and validate qualifying sources only after the recipient engages. Deliver all five with source and contact routes, not blurred teaser rows. Do not promise 24-hour delivery until actual capacity is proven.

**Conversion:**
- 25 qualified accounts for $149: existing planned tier; verify checkout and delivery activation before marketing.
- 100 qualified accounts for $499: current core offer; only show checkout when at least 125 qualifying unique accounts remain within exact agreed scope.
- $749 premium existing product: competitor snapshot and prospecting strategy if actually deliverable.
- $149-$249/month refresh: continuity hypothesis to test after paid fulfillment and customer feedback, not upfront subscription pressure.

**Differentiation:** credible account fit, evidence and time saved, not price-per-address. Offer a transparent replacement standard for inaccurate/closed/duplicate/out-of-territory records; never guarantee booked work or revenue.

## Hold-safe launch sequence

1. **Coding and proofs (no sends):** PR #110 corrects missing Docker Compose interest-first variables and scheduler call, defaulting the independent switch OFF and enforcing existing owner hold. PR #111 adds a read-only territory × business-type readiness audit. Tests and exact SHA deployment proofs required; no public exports.
2. **Contact opportunity census:** obtain actual records by market/type, missing email counts and source quality. Set a reachable-contact target based on evidence; do not confuse census rows with recipient volume.
3. **Draft and preview:** use accurate company/service/market facts only; explicit commercial purpose, honest free-five offer, real postal address, working Reply-To and plain opt-out. Owner-only inspect/click without sending customers.
4. **Safety:** verify SMTP reputation, SPF/DKIM/DMARC where appropriate, bounce capture, IMAP polling, suppression, previous-send, sending rate, and duplicate/crash retry protection. FTC CAN-SPAM also applies B2B; Google recommends gradual ramping, not a 500-message burst.
5. **Only after Work supervised explicit release:** start a small, measured batch such as 10-25 (subject to sender reputation), then ramp gradually when acceptance and replies are measured. Legacy campaigns remain off. One-time initial invite, no automatic repeated pestering.
6. **Respond quickly to interest:** automation asks two preferences and creates the five-sample fulfillment queue. Negative replies and opt-outs stop follow-up. Payment/receipt/refund/fulfillment evidence stays tied to the correct account.
7. **Commercial decision:** review positive reply rate, samples delivered, sample-to-purchase rate, cost/sample, cost/order, gross margin after fees, and owner minutes. Adjust targeting/copy/offer based on evidence rather than adding more infrastructure.

Sources:
- https://www.ftc.gov/business-guidance/resources/can-spam-act-compliance-guide-business
- https://support.google.com/mail/answer/81126

## Monitoring contract for always-on Work

Before anyone releases outreach, an always-on Work session must be able to view a current **read-only** status with: production SHA and CI, owner hold, all four campaign switches, number queued by territory/service, SMTP attempts/acceptance/uncertainty, bounces, replies and opt-outs, free-five requests/deliveries, paid orders/gross receipts, budget and aged exceptions.

- Baseline at handoff: 168 new staged recipients (pending fresh census), 0 new sends, 0 replies, $0 gross; historic totals kept separate.
- Watchdog technical-health PASS does **not** mean the commercial pipeline has launched.
- Do not report "email delivered" from SMTP acceptance. Do not mark an unverified customer as having purchased or requested quotes.
- Do not release the old nine-company Phoenix or any historical recipient as part of the new wave.
- User approval to **prepare a mass launch** is not approval to send.
- Preserve the owner's target of a few short checks a day, under 10 minutes total after automation is proven.

## Stop/go economics (hypotheses to test)

A $499 sale is not $499 profit. Measure payment-processing fee, source/API research cost, corrections, manual labor, refund exposure and recurring fixed costs. Pricing must survive comparison with $25-$39 generic lists. Until cost/sample and real sample-to-purchase conversion exist, any profit forecast is illustrative only.

**No new paid subscriptions, no increased API cap, no mass customer sends, no customer charges, and no automatic release of the owner hold during preparation.** Revenue $0 is still the verified baseline; the target is first paid validation rather than an invented projected conversion rate.

## Handoff actions for next Work session

1. Read newest private handoff and audit log if local volume is mounted, then latest public relay evidence.
2. Confirm PR #110/111 CI. Merge/deploy only reviewed held-safe changes; record exact SHA, successful DB backup/restore, zero external sends and intact historical metrics.
3. Run new read-only `interest_first_readiness` and publish a **private** grouped 21-market × business-type contact report. Add specific exclusion reasons before making a 500+ claim.
4. Prepare a source-reusable contact expansion and five-pre-match queue. Keep legacy samples untouched.
5. Verify owner-only mail and two-question reply workflow. Do not send customers until user separately authorizes a monitored batch.
6. Append to private audit and handoff; preserve older content and never leak private contact information in public GitHub.
