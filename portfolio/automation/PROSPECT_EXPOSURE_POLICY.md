# BMC Prospect Exposure Control — launch safety policy (draft)

Status: **NOT APPROVED FOR PRODUCTION**. Branch safety/prospect-exposure-gates-20261027. Keep all outbound OFF.

## What we verified in the old implementation
- Free-five selected top fit-score rows, creating repeated exposure risk.
- Paid orders excluded some same-customer history but lacked cross-customer distribution limits.
- There was no global exposure ledger or per-contact saturation control.
- Sample delivery and paid fulfillment use different routines; both require a shared gate.
- A public listing is NOT proof that the data source permits redistribution.

## Strict definitions
- **Research prospect**: a currently operating commercial business plausibly suited to the service, with evidence and an allowed public business contact route. It has **not** expressed intent to buy.
- **Service request**: demand intentionally submitted to BMC; never pool that customer contact into a prospect pack without distinct, suitable authorization.
- **Exposure**: any business whose identifying/contact record is disclosed to a particular contractor, including FREE samples, paid packs, downsells, refreshes, and exports.
- **Buyer identity**: first version uses normalized email; account-level identity resolution must be added before scaling.

## Proposed conservative distribution defaults (NOT legal safe harbors)
- Free sample: at most 1 distinct free recipient per 90 days; 90-day per-prospect cooldown.
- Other distributions: no more than 3 distinct recipient businesses per prospect in any 90-day period, no more than 8 lifetime; 30-day cooldown.
- All product lines must count in a shared ledger.
- Existing five within a paid 100 are not a *new* exposure to the same buyer.
- No duplicates to one buyer as "new" records, ever; separately disclosed refreshes may update existing accounts.
- Suppression blocks all outbound distribution, even if fit score is 100.
- Shared public inbox/phone contact is a saturation group; if uncertain, choose conservative suppression.
- If safe inventory is insufficient, refuse, offer narrower product or ask consent for territory change. Never pad.
- Lock allocation and reserve atomically; repeated clicks must return the same saved five.
- Exposures cannot be reset merely because source records are re-imported or re-verified.
- AI may write explanations but cannot override exposure or rights decisions.

## Data rights
- Verify that BMC has the right to store and commercially redistribute source data. Public visibility is not a blanket licence.
- Google Maps Platform and Yelp can restrict extraction and resale of their own content.
- Track source origin, collection method, terms/rights decision, evidence, reviewer, date.
- Unreviewed and blocked source material must be excluded from commercial deliveries until approved.
- Avoid personal contact data and private/community-post details.
- Source citations in output are not themselves licences.
- Legal counsel should review customer terms, source-rights policy, suppression handling, TCPA/state rules, and lead-sales representations before broad launch.

## Production release checklist
1. CI test: synthetic samples to different accounts do not repeat; counts update, no duplicate repeated click.
2. CI test: concurrency on same market; no cap breach.
3. CI test: free + paid + micro + refresh share the same exposure ledger.
4. CI test: caps and cooldowns, suppression and shared contact routes, underfill, refunds/failed deliveries.
5. CI test: historical distributions backfilled, idempotent replay of migration.
6. Backfill quality audit: conflicting aliases and shared decision-makers flagged.
7. Per-source rights verified for deliverables. If not verified, fail closed.
8. Review all 21 markets for inventory after caps; $499 offer only when 125+ qualifying reserve.
9. Confirm all three outbound switches OFF during deploy and owner approval.
10. Owner preview with real approved research; then explicit owner approval before enabling any campaign.
11. Audit demand-side service requests separately; never mislabel as cold commercial prospects.

## Regulatory references and cautions
- FTC CAN-SPAM B2B requirements: https://www.ftc.gov/business-guidance/resources/can-spam-act-compliance-guide-business
- FTC Telemarketing Sales Rule and B2B exceptions: https://www.ftc.gov/business-guidance/resources/complying-telemarketing-sales-rule
- Arizona telephone solicitation statute: https://www.azleg.gov/ars/44/01278.htm
- Yelp scraping restrictions: https://www.yelp-support.com/article/Can-I-copy-or-scrape-data-from-the-Yelp-site?l=en_US
- Google Maps Platform content restrictions: https://cloud.google.com/maps-platform/terms

These links are compliance starting points, not a legal opinion. This draft does not authorize prospect redistribution.

## Scope decision, 2026-10-27
The owner explicitly deprioritized source-licensing checks for the current exposure-control development. Source-rights review remains a separate legal/business follow-up; the selector and launch readiness now focus on duplicate-exposure, objections, and allocation controls. This decision is **not** a legal opinion or permission to redistribute data contrary to its terms. No campaign is authorized by this change.
