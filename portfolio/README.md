# BMC Portfolio Core

This directory is the reusable front-end layer for BMC Luminary Ventures' low-capital service portfolio.

## Current MVP fronts
- `restaurant-repair/` — urgent restaurant refrigeration and equipment repair intake
- `growth-packs/` — productized B2B prospecting / local growth pack
- `commercial-cleaning/` — commercial cleaning and facility-service intake
- `property-services/` — tree work, defensible-space cleanup, landscaping, junk removal, hauling, and outdoor-property jobs
- `pet-waste/` — recurring pet-waste cleanup routes and commercial/HOA requests
- `vehicle-services/` — towing, roadside, mobile mechanic, tire, transport, fleet and related vehicle-service intake
- `vendor-partner/` — shared vendor partner onboarding
- `index.html` — portfolio launch hub

## Shared system
All pages reuse:
- `assets/core.css`
- `assets/core.js`
- the same 12 Arizona markets
- the same webhook contract
- BMC's existing contact email as a zero-cost fallback

## Northern Arizona priority cluster
Prescott and Northern Arizona are treated as the first proving ground for:
- tree trimming / removal
- hazard-tree work
- defensible-space / fuel reduction
- landscaping / yard cleanup
- junk removal
- hauling
- storm cleanup
- pet-waste route service
- towing / roadside
- mobile mechanic / tire / lockout
- fleet service / detailing / glass

## Form automation
Each form supports a future webhook without redesigning the page.

Set this in the page head when n8n is ready:

```html
<meta name="bmc-webhook" content="https://YOUR-ENDPOINT/webhook/bmc-intake">
```

Until that endpoint exists, form submissions open a pre-filled email to:
`contact@bmcluminaryventures.com`.

### Webhook JSON contract
The browser posts the visible form fields plus:
- `form_type`
- `page`
- `submitted_at`

Recommended n8n flow:
Webhook → normalize → score/route → write database/Sheet → email vendor/customer → exception queue.

## Launch rule
A niche is "MVP live" when:
1. offer is understandable
2. intake works
3. vendor path exists
4. analytics can be added
5. customer can complete the normal action without a call

Do not buy separate infrastructure per niche. Promote winners to custom domains after proof.

## Environment-fit expansion (Oct. 24, 2026)
Dedicated fronts now also include:
- `tree-service/`
- `junk-hauling/`
- `landscaping/`
- `septic-earthwork-water/`
- `snow-service/`
- `towing-roadside/`
- `pool-desert-property/`
- `str-property-care/`
- `hvac-heat/`

Market-specific front doors live under `markets/<city>/` for all 12 initial Arizona markets.
The routing priority source of truth is `data/market-fit.json`.

## Autonomy files
The `automation/` folder defines the normalized lead/vendor schema and deterministic routing blueprint. A live public n8n webhook plus outbound-email credentials are still required before the portfolio can be called autonomous.
