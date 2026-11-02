# Customer jobs, provider prospects, and the revenue model

Owner direction: proactive business acquisition is the main push; SEO is a parallel channel. The first November milestone is $300 gross collected revenue, with $8,333/month as the larger target. These are targets, not forecast demand, net income, or guarantees. Nevada remains separate and deferred.

## Three distinct things

| Record | What we know | Offer |
|---|---|---|
| Business advertising for work | A business publicly markets a service; current capacity and contact permission still need review | Invite it to see the relevant researched prospect sample or provider pilot |
| Researched commercial prospect | A business appears to fit a provider's customer profile; it has not requested a job | Existing Growth Pack research offer, clearly labeled prospect research |
| Confirmed customer request | Customer confirms a specific job, contact method, location, timing and permission for an introduction | Potential paid provider introduction, subject to provider suitability and separate payment readiness |

A scraped post is not a consented introduction. A review score or AI classification is not customer confirmation. A business advertising does not mean it wants us to solicit it through every platform or channel.

## Proposed customer-job pilot

- Customer requests are free. Do not put a checkout wall before a useful first response.
- Show a suitable provider an anonymized job summary, area, timing, proposed fee and terms before any purchase. Strip contact details and exact address from free-text summaries too.
- Start with a proposed **$25 introduction fee**, offered individually. This is a price hypothesis, not a deployed product, not a recurring charge and not an authorization to debit providers.
- Customer confirmation must be fresh (within 24 hours); requests older than seven days require a renewed request. Record verification evidence through the authenticated review route.
- One provider may hold an active introduction at a time. Do not advertise an exclusive customer or guaranteed job: the customer may use other channels. Define any exclusivity as BMC's own distribution limit.
- Provider acceptance alone must not expose the contact or create a charge in the proposed paid flow. A signed, authenticated purchase and verified payment are required first. The existing free provider-pilot route remains a free pilot; it must not silently acquire fees.
- Reserve the match before Checkout; one paid introduction per permitted match; webhook idempotency; failed payments release reservations. Never charge twice for retries.
- Disclose exactly what is delivered, when, and how a provider can report invalid contact details, duplicate charges, wrong service/area or a customer cancellation before delivery. Return money rather than silently substituting an unrelated customer. Not winning the job is not the same as failing to deliver a valid introduction; the final policy must explain the distinction.
- Release customer details only to the accepted suitable provider for this request. Record delivery, then contact, estimate and won/lost outcomes. A won-job update is not BMC collected revenue.
- Follow-ups should be useful, finite, permission-based and stop on reply/opt-out. Don't promise emergency coverage or available providers without evidence.

## Implementation status

Built in this branch: authenticated active-request summary and review endpoints, a separate review table, a strict qualification function and dashboard aggregate cards. Public form flags cannot qualify a lead. No paid customer-introduction Checkout, contact unlock or charge is enabled. Existing Growth Pack checkout is a different product.

Before enabling paid introductions: activate suitable providers; agree price/terms; implement reservation, checkout/webhook/refund lifecycle and secure contact delivery; prove concurrent purchase/expired match/duplicate payment/revocation cases; review the exact owner preview. BMC charges its own introduction fee and the provider bills its own job; collecting a job payment and paying providers would be a separate marketplace payments design.

## Revenue targets, without pretending conversion is known

| Example | Gross collected revenue | Limitation |
|---|---:|---|
| 12 introductions at proposed $25 | $300 | Requires real qualified demand, accepting providers and completed paid-flow implementation |
| 1 existing Growth Pack at $499 | $499 | Requires an actual buyer and a sufficient qualified delivery pool |
| 334 introductions at $25 in a month | $8,350 | Volume illustration, not a demand forecast |
| 17 Growth Packs at $499 in a month | $8,483 | Capacity and demand must support each sale; not a forecast |

Track gross receipts, refunds, payment fees and fulfillment costs separately. Net income cannot be inferred from gross receipts. Measure provider cost per qualified introduction, contact rate, estimate rate, won-job rate and provider return before increasing prices or recurring commitments.

## Proactive acquisition sequence

1. Discover publicly indexed business service ads and public business contact pages. Keep platform, original URL, observed date, market, service and whether the post offers or requests work. Private groups, hidden profiles and member-only Nextdoor content are outside this source set.
2. Verify the actual business, service area and business contact route. Advertising snippets are research clues; they do not qualify a business for customer delivery or prove its availability.
3. Stage a small, relevant cohort with suppression/deduplication and the seven historic pressure-washing sends preserved for recovery review. Do not count those seven as dead or resend as fresh.
4. Offer useful evidence: a relevant free-five research preview for business growth, or a clearly described provider pilot. Never imply we have a real customer job when we have only prospect research.
5. Route interest to the correct next step, stop automated nurture on reply, and track sample → paid order → delivered product separately from job-request → provider → booked-job outcomes.
6. Scale after measured delivery, response and refund evidence. No unsolicited spend, extra campaign send or owner-hold release is implied by a new dashboard or research import.

## Sources checked November 1, 2026 Arizona time

- Thumbtack pro model: https://www.thumbtack.com/pro
- Thumbtack lead lifecycle: https://developers.thumbtack.com/docs/pro-integrations/negotiations
- Angi Opportunities and Leads FAQ: https://intercom.help/angi/en/articles/6221483-opportunities-and-leads-frequently-asked-questions
- Angi lead-credit policy: https://intercom.help/angi/en/articles/11403440-how-to-request-a-lead-credit

These inform the mechanics; BMC's price and policy above are proposed choices, not copied competitor terms or a claim of equivalent scale.
