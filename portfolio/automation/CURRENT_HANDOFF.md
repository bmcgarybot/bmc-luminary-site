# BMC current handoff — 2026-11-02 UTC / November 1 Arizona evening

Read this file, `LAUNCH_REVIEW_2026-11-02.md`, then the newest section of `HANDOFF.md`. Historical handoff sections are evidence of their own checkpoint, not current launch authority.

## Objective and model handoff

Owner requests Arizona launch readiness Monday **November 2, 2026 at 06:00 America/Phoenix (13:00 UTC)**. First-sale target is **November13**, with **November30 the latest deadline**. First November receipts target $300 gross; longer goal $8,333/month. Do not shift the target to November 3 because the host is already on UTC November 2. Revenue is not guaranteed. Prioritize a working acquisition → sample → purchase → delivery loop over more niches or dashboard decoration.

The owner requested a higher-level review followed by Sol execution. Continue routine implementation with Sol. Ask before Astra or another higher-cost model. The chat model picker is controlled by the user; an agent handoff does not change it.

## Verified production checkpoint

- Deployed master: `067ad5df6250f57b9325a9abd158bcafa30638fd` (PR25).
- Exact master Portfolio CI41389400028 and Pages41389400228 passed. Held deployment `b-territory-held-release-20261102T044154Z` succeeded; private monitor reloaded under its existing owner/listener, history retained.
- Read-only VPS proofs at 05:38:48–54 UTC: runtime/API/scheduler healthy; owner hold true; provider, buyer and Growth outreach all false; 11 fresh staged Growth prospects, seven historical SMTP submissions, zero replies/samples/orders/revenue/open Growth exceptions.
- Active customer requests: one needs review, zero confirmed. This is not a saleable warm lead. Paid introductions remain disabled.
- Nevada intake/checkout/outreach/placement remain closed. Nevada is not the Monday launch.
- Live UI verified: main Flagstaff plus Cottonwood/Camp Verde selection; regional owner preview labels actual Sedona/Camp Verde/Cottonwood rows; hidden form children leak count zero; favicon links present; smaller-territory page preselects all three requested cities. No production form submitted during QA.

## Launch decision

**Not authorized to enable yet.** Existing audit has two authorization blockers: owner hold and no exact deployed-SHA visual approval. The deeper review found payment-scope/refund integrity defects. Sol implemented branch fixes and17 handler fixtures. Head d44e15089d7f46f947d3b884e8920dcd3a64a464 passed both full CI runs41396827411/41396823623, including all seven real Postgres cases and the signed HTTP/fulfillment suite. Exact final-master CI and held deployment remain required before treating them as production fixes. See the review document and PAYMENT_INTEGRITY_REVIEW.md. Do not mistake a green configuration audit for exhaustive business-logic proof.

Do not send more owner previews: **eight authorized owner-only messages have already been submitted once** (seven layouts plus one signed read-only route preview). No resend without fresh explicit permission. SMTP success is not inbox/render approval. Brett must approve the actual Gmail rendering AND the post-click journey for the final deployed version; store the exact SHA only after that decision. Changing the deployed SHA invalidates the old approval. Generic continue/proceed is not release approval.

Keep `BMC_OWNER_LAUNCH_HOLD=true`, `OUTREACH_ENABLED=false`, `BUYER_OUTREACH_ENABLED=false`, `GROWTH_OUTREACH_ENABLED=false` during fixes. Do not run the launch action from a scheduled reminder alone.

## Sol execution order

1. Finish payment integrity fixes with production-handler tests and isolated Postgres/HTTP CI; preserve receipt accounting, immutable selected territory, exposure/suppression and durable email claims. No live Stripe transaction.
2. Update the review with commit/test evidence; merge only a green exact head, verify exact master CI/Pages, deploy that exact master held; then fetch fresh VPS proofs and inspect the same read-only preview. Never report branch code as deployed.
3. Stage/review the first pressure-washing cohort, sample usefulness, actual service areas and current source evidence. Existing 11 staged records are the starting cohort, not evidence that Craigslist/Nextdoor/Facebook acquisition is built.
4. Prepare final owner review and launch action for approval. Do not resend previews or release holds without explicit authorization.
5. On approved Growth-only release, preserve the existing daily cap of 10; observe replies, opt-outs, exceptions, sample delivery, payment and paid delivery. Provider/buyer outreach remain off. Keep the original seven separately review-held; never reset them as fresh contacts or mark them dead.
6. Continue content/search improvements after the conversion loop is sound. Keep raw question suggestions separate from reviewed answers and measured customer demand.

## Product boundaries

Existing controlled launch product: five free researched commercial prospects, then **$499 for 100 total including the five**, only if the chosen cities support the quality/reserve gates. Explicit city checkboxes define saved scope; travel notes never silently widen it. Smaller territories have a free inquiry/research path, not invented 20/50 prices or checkout links. Cordes Junction is not an alias for Cordes Lakes.

Service Network live matching needs suitable verified/accepted providers. Paid customer introductions still need reservation, payment/refund/contact-release proof. Premium deliverables require separate reviewed fulfillment. Do not market the whole marketplace as launched merely because Growth works.

## Research and documentation accuracy

Broad research: 74 seeds, 67 service profiles, 5,989 unique suggestions. Supplemental city-worded research: 54 planned, 46 collected, 8 Nevada pending; 414 rows / 303 exact unique strings, all 42 Arizona seeds collected. US-English query text is not measured city search volume. Zero spend; no paid trials or quota evasion. Neither corpus is approved for answers or model-weight training.

Source-rights gate history is resolved: commit `42c2641` and HANDOFF Section77 intentionally removed the selector/readiness source-rights gate per prior owner scope. Section78 and later language implying enforcement are stale. The table still exists; that is not automatic license approval. Preserve current source-quality, physical geography, suppression and exposure gates; do not silently reinstate a removed gate or claim every record has a license/current-operating audit.

User-facing files already accessible: FindQuestions prompt list `libfile_d440a96b6bdc8191a1dc958f1754d8e4`; free-tool guide `libfile_7af10eadcb3c81919fe0d93106b7b775`. Do not replace these with another broken scratch-only download.
