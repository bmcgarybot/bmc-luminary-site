# BMC Portfolio Core

This directory is the reusable front-end layer for BMC Luminary Ventures' low-capital service portfolio.

## Current MVP fronts
- `restaurant-repair/` — urgent restaurant refrigeration and equipment repair intake
- `growth-packs/` — productized B2B prospecting / local growth pack
- `commercial-cleaning/` — commercial cleaning and facility-service intake
- `vendor-partner/` — shared vendor partner onboarding
- `index.html` — portfolio launch hub

## Shared system
All pages reuse:
- `assets/core.css`
- `assets/core.js`
- the same 12 Arizona markets
- the same webhook contract
- BMC's existing contact email as a zero-cost fallback

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