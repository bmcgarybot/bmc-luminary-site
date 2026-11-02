# Arizona launch review and Sol execution brief

Review checkpoint: 2026-11-02 UTC / November 1 Arizona evening. Evidence base: current code tree matching deployed067ad5df, PR24/25 CI and relay results, live public UI, prior BMC decisions retrieved for cross-check, and the three supplied Hormozi PDFs. This is a focused source/behavior review, not a claim to have manually read every historical message or verified all75,109 source records.

## Release findings

| Priority | Finding and consequence | Required completion proof |
|---|---|---|
| P1 | Growth webhook attempts a newest-by-email sample fallback after a supplied sample reference fails. A paid order can silently attach a different service/territory. | Invalid explicit reference never falls back. Missing reference only links one unambiguous eligible sample; otherwise preserve payment and create review/intake work. Prove mismatch, converted, pending, missing and ambiguous cases. |
| P1 | Refund handler books a negative amount at refund.created regardless of success and leaves queued fulfillment paid. Later checkout replay after a refund risks rebooking if idempotency relies only on current paid status. | Successful-refund object accounting once across event IDs; pending/failed handling; order/task fulfillment stop; receipt idempotency survives refund; early/out-of-order events held for review. Actual Postgres/HTTP proof, no live charge. |
| P1 authorization | Exact current Gmail/post-click approval missing; global hold active. | Brett explicitly approves final deployed version and release. Do not infer this from continue/launch-readiness requests. No automatic resending of eight prior owner submissions. |
| P2 operational | Canonical short handoff is dated October27 and instructs sending a new preview, contradicting later eight-send history. | Replaced with current production checkpoint, release rules and ordered Sol tasks; historical long handoff retained with correction appended. |
| P2 quality | Live regional preview labels Mii amo under a broad gym/fitness/recreation category. A score98/92 is model fit, not verified buying intent or a perfect category audit. | Audit actual first-wave saved sample/100-row source evidence and category identity; correct reviewed source artifacts where needed, never reclassify blindly to inflate capacity. |
| P2 operations | One active customer request needs review; no confirmed requests and no active verified provider proof. | Review privately; confirm current job/contact/sharing permission and suitable provider before introductions. Do not charge or call it warm demand from its presence alone. |
| P2 acquisition | Eleven staged public-business contacts exist; requested public-ad discovery across Craigslist/Nextdoor/Facebook is not proven as an operating acquisition pipeline. | Document public ad/source URL, offer-vs-request classification, observed date, actual service area, contact route, suppression and duplicate check. Stage only; separate send approval remains. |
| P2 conversion | Smaller research inquiry captures preferences, but no fixed smaller paid product/price exists. | Review scope, inventory and delivery cost; quote quantity/price/terms before payment. Keep this request-only for launch. |
| P2 evidence | Sender authentication/inbox placement not independently proven by configuration or SMTP acceptance. | Review actual Gmail headers/receipt and SPF/DKIM/DMARC evidence before scaling; do not describe seven historic submissions as delivered. |
| Later | Raw question corpora are not published answers, routing improvements, SEO rankings or model training. | Review distinct intents and sourced answers, add aliases with evaluation, publish useful canonical pages and measure actual conversions. |

## What is already working

The deployed site includes favicons,21 explicit Arizona city choices on both Growth forms, immutable saved territory, cross-city business-name deduplication, actual city labels, source-quality/current-sample checks, overlap/exposure controls, a125-unique-record reserve for100 delivery, and an on-site smaller-territory inquiry. Isolated CI proves100 unique paid rows including the five, replay/concurrency guards and one fake SMTP delivery. Production runtime/API/scheduler are healthy and the private dashboard was reloaded with the active-job counts.

Live browser checks on this review: Flagstaff primary stays checked/disabled while Camp Verde/Cottonwood can be added; read-only Sedona+Camp Verde+Cottonwood sample shows all actual cities; form hidden-child leak count0; smaller inquiry query preselects the cities. No live test intake, customer sample allocation, mail or purchase was created. These are bounded checks, not proof of every path or current operation of every prospect.

## Apply the trilogy to BMC's actual constraint

The supplied books are used for original implementation choices, not reproduced text or claims that BMC will achieve their examples. Source locations below are PDF page numbers in the supplied editions.

| Book / reviewed section | BMC decision | Completion test |
|---|---|---|
| Offers: value equation, PDF91–95; guarantees185–186 | Save the provider research time and reduce uncertainty with five usable examples, actual territory and transparent evidence. Promise replacement for defined research defects, never sales. | A buyer can understand what is delivered, judge the five and find the support/replacement path without a sales call. |
| Leads: lead magnets49–53; cold outreach169–176; more/better/new253 | Deliver useful evidence quickly to a narrowly relevant business. Work the pressure-washing cohort before adding new niches. Personalization must be factual, never fake familiarity or invented customer wins. | One reviewed business → relevant signed five → honest offer → tracked reply/purchase/delivery. Replies/opt-outs stop nurture. |
| Money Models: attraction74; quantity/feature downsells131–138; continuity165 | Free five is the attraction step;100/$499 is the current paid step. Smaller scope is a separate lower-quantity offer after research, preserving quality. Defer continuity until repeat value/cost is measured. | Record actual collected gross receipts, refunds, payment fees and fulfillment time. No unapproved recurring charge, fabricated scarcity, surprise upsell or low-quality filler. |

The immediate bottleneck is a trustworthy paid conversion/delivery loop and owner-reviewed outreach, not adding another67 landing-page variants. The first$300 gross can be exceeded by one real$499 order, but no conversion or income is guaranteed. Do not run a speculative paid-introduction build as tomorrow's revenue dependency.

## Before releasing Arizona

1. Finish and review both payment integrity defects, including real Postgres/HTTP edge cases. Preserve genuine received-payment evidence even when scope is unresolved.
2. Complete green exact-head CI; merge; verify exact-master Portfolio CI and Pages; deploy the same SHA held. Fetch fresh runtime, Growth audit, inventory and Nevada proofs. Update CURRENT_HANDOFF with that exact release.
3. Check final live mobile/desktop conversion flow and the same read-only signed owner preview, chosen cities, useful source-backed samples, gated checkout and smaller-inquiry fallback. No duplicate owner/customer mail or production fixture writes.
4. Review the final Gmail experience and post-button journey with Brett. Final approval and release are explicit decisions. A scheduled06:00 check reports blockers; it does not override approval.
5. Launch only the approved pressure-washing Growth wave, with provider/buyer outreach still off and Nevada closed. Existing daily cap10. Check first send's submission state and exception/reply processing before scaling. Stop on wrong destination, malformed content, broken route or unresolved payment/delivery exception.
6. Keep private inbox/reply/opt-out handling running. Preserve seven historic contacts for individual recovery review,11 new staged contacts separate, real customer requests separate from commercial prospect research. Review one active unconfirmed job through private operations, without charging.

## Sol continuation contract

Finish authorized implementation and review work without stopping for routine choices. Do not change existing product pricing or add new services/infrastructure to solve a narrow bug. No paid research, extra emails, live charges, new model upgrade or hold release. Use isolated fixtures/fake mail/Stripe for proof. Do not delete source artifacts, reset other worktrees or stage unrelated assistant temporary files. Keep documentation honest about branch versus production status and tests actually run.

Research work completed separately: all42 Arizona city-worded seeds plus4 Las Vegas,303 exact unique strings/414 rows;8 Nevada seeds pending at the conservative daily ledger. Preserve source provenance and no-local-volume caveat. The5,989 broad suggestions remain a separate corpus. Do not delay the launch conversion fixes for more quota or more pages.

## Sol implementation checkpoint

Sol completed payment commits b7aa37c and65a9f219, integrated into this review branch. Strict explicit-reference matching, delivered/current-five checks, unambiguous missing-reference handling, refund-object accounting and fulfillment holds are implemented. Local48 focused tests pass, including17 handler tests. Seven real Postgres tests skip locally without a server and must pass the new CI payment-postgres job. Existing signed HTTP sample→payment→fulfillment remains in full CI; updated sampleless-payment assertions now expect review rather than unsafe auto-linking. Pending/failed/partial refunds stay manually held; no automatic resumption. Missing payment-intent association and historic misbooked refunds need reconciliation, not guessed linkage. No live payment/email occurred.
