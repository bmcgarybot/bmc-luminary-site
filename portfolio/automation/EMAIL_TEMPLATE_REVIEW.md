# BMC Email Template Review

**OWNER REVIEW REQUIRED BEFORE ANY MARKETING/OUTREACH IS RE-ENABLED.**

Source of truth reviewed: `portfolio/automation/api/app.py`.

Current safety state:
- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`

Important mail audit note:
- BMC currently submits mail through SMTP with `aiosmtplib.send()`.
- It does **not** append a copy to an IMAP Sent folder.
- Therefore an empty Sent folder does not prove the seven Growth messages were not submitted.
- The seven Growth rows were marked sent because the SMTP call returned without exception.
- That is still not independent proof of final recipient delivery or inbox placement.

The templates below are the current plain-text customer/prospect/provider-facing copy. HTML versions use the same core wording in a shared branded layout.

---

## 1. Growth cold first touch

**Subject:** `{market}: 5 commercial accounts worth checking`

Hi {business_name},

I’m researching commercial accounts for {service_label} businesses in {market}.

Instead of asking you to buy a list cold, BMC will show you five real businesses that fit the commercial work you want — free. Each one includes why it fits, a public contact route, the source, and a practical outreach angle.

Tell us the area and type of work you want:
{landing_url}

If the five look useful, the full pack is 100 total qualified commercial prospects for $499. No retainer and no sales call required.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

---

## 2. Growth cold follow-up

**Subject:** `Re: 5 free commercial targets in {market}`

Hi {business_name},

One follow-up on the five free commercial targets.

You can tell BMC the service area and kinds of accounts you want here:
{landing_url}

The five are yours to use. You only pay if you decide you want the full 100-prospect pack.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

---

## 3. Growth positive-reply response

**Subject:** `Here’s the free 5-target form`

Thanks for the reply. Tell BMC the commercial work and area you want here:

{landing_url}

We’ll research five real targets free.

BMC Luminary Ventures LLC
{business_postal_address}

---

## 4. Growth free-five delivery

**Subject:** `Your 5 commercial targets in {market}`

Hi {contact_name},

Here are five commercial targets for {business_name} in {market}.

For each of the five:

{number}. {prospect_business_name} — {category} — fit {fit_score}/100
Why it fits: {fit_reason}
Public contact route: {contact_route}
Suggested angle: {sales_angle}
Source: {source_url}

If the market has the required reserve:

If these are the kinds of accounts you want, the $499 pack includes 100 total qualified commercial prospects built to the same standard.

{checkout_url}

If the market does not have the reserve:

This market does not yet have the 125-prospect reserve BMC requires before selling a 100-prospect pack. We will not pad a paid pack with weaker rows.

Qualification guarantee: if a delivered prospect fails the published territory/activity/type/contact standard, BMC replaces it.

Reply no at any time to stop follow-up.

BMC Luminary Ventures LLC
{business_postal_address}

---

## 5. Growth nurture 1

**Subject:** `Want the other 95 commercial targets in {market}?`

Hi {contact_name},

You asked BMC for five commercial targets for {business_name} in {market}.

If those are the kinds of accounts you want, the full $499 Growth Pack gives you 100 total qualified commercial prospects built to the same standard — not a raw contact dump.

{checkout_url}

Qualification guarantee: wrong territory, inactive business, wrong property type, duplicate, or missing promised contact route gets replaced.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want another follow-up.

---

## 6. Growth nurture 2

**Subject:** `Last note on the {market} commercial prospect pack`

Hi {contact_name},

Last follow-up on the commercial targets BMC researched for {business_name}.

If you want the full 100-prospect pack, it is here:
{checkout_url}

If not, no problem — the five free targets are yours to use.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no to stop future BMC outreach.

---

## 7. Paid Growth Pack delivery

**Subject:** `Your BMC Growth Pack — 100 commercial prospects in {market}`

Hi {contact_name},

Your BMC Growth Pack is attached.

It contains 100 qualified commercial prospects in {market} for {service_label}. The five free targets you already saw are included in the 100.

Every row passed BMC's territory, fit, contact/source, activity, score, and duplicate checks before delivery.

If any row was outside the agreed territory, inactive when delivered, the wrong business/property type, a duplicate BMC already sold you, or missing the promised contact route, reply and BMC will replace it.

Please tell us what happens as you work the list — interested, quote, won, lost, or bad fit. That feedback improves future packs.

BMC Luminary Ventures LLC
{business_postal_address}

Attachment: `BMC-Growth-Pack-{market}.csv`

---

## 8. First-wave provider pilot — step 1

**Subject:** `{market}: open to a few more {service} jobs?`

Hi {business_name},

Are you open to a few more {service} jobs in {market} if you can see the job details before deciding?

BMC Service Network is opening a small provider pilot in Arizona. There is no fee to join.

You tell us:
- where you work
- the jobs you want
- your minimum job size
- how much work you can take

When a matching customer request comes in, you can review the job type, area, timing, and customer notes before deciding. If it fits, accept it. If it does not, pass. Passing does not create a charge.

During the pilot, some opportunities may be free or discounted. If BMC introduces paid leads or territory options later, the price and terms will be shown before you choose to participate.

Join the pilot here:
{activation_url}

No sales call is required.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

---

## 9. First-wave provider pilot — step 2

**Subject:** `Re: more {service} work in {market}`

Hi {business_name},

Just following up once.

If you want more {service} work in {market}, BMC lets you set the area, job types, minimum job size, and capacity you want. You see the customer request before deciding whether it fits.

There is no fee to join the pilot:
{activation_url}

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

---

## 10. First-wave provider pilot — step 3

**Subject:** `Closing this out: {market} {service} pilot`

Hi {business_name},

Last note from me.

If you want to be considered for local {service} requests in {market}, you can join the free BMC pilot here:
{activation_url}

If not, no action is needed and we will close this out.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no to suppress future outreach.

---

## 11. General provider recruitment — step 1

**Subject:** `{market}: want more {service} jobs?`

Hi {business_name},

Are you open to more {service} work in {market}?{optional_source_credibility}

BMC Service Network is opening its provider network in Arizona. There is no fee to join.

You tell us where you work, what jobs you want, your minimum job size, and your capacity. When a matching customer request comes in, you review the job details first and decide whether to accept it or pass.

Set your provider preferences here:
{activation_url}

Some early opportunities may be free or discounted. If BMC introduces paid leads or territory options later, the price and terms will be shown before you choose to participate.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

---

## 12. General provider recruitment — step 2

**Subject:** `Re: {service} work in {market}`

Hi {business_name},

Following up once in case more {service} work in {market} would be useful.

Joining the BMC provider network is free. You set the jobs and area you want, your minimum job size, and your capacity, then review matching requests before accepting or passing.

Your provider setup link:
{activation_url}

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

---

## 13. General provider recruitment — step 3

**Subject:** `Last note: {market} {service} work`

Hi {business_name},

Last note from me.

If you want BMC to consider your business for matching {service} requests in {market}, your provider setup link is here:
{activation_url}

If not, no action is needed.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no to suppress future outreach.

---

## 14. Legacy Growth-Pack buyer campaign — step 1

**Subject:** `5 free commercial targets for {business_name}`

Hi {business_name},

BMC is testing a simpler way for local service businesses to find commercial accounts.

Tell us the commercial work and area you want. We will research five real businesses that fit and send them free, including why each fits, a public contact route, and a practical outreach angle.

Start here:
{growth_packs_url}

If the five are useful, the full pack is 100 total qualified commercial prospects for $499. No retainer and no sales call required.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

---

## 15. Legacy Growth-Pack buyer campaign — step 2

**Subject:** `Re: 5 free commercial targets for {business_name}`

Hi {business_name},

One follow-up: if you want BMC to show you five commercial accounts that fit the work you want, start here:

{growth_packs_url}

The five are free to use. You only pay if you later want the full 100-prospect pack.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

---

## 16. Facility/commercial buyer outreach — step 1

**Subject:** `Too many building vendors to chase in {market}?`

Hi {business_name},

If one building problem keeps turning into another vendor search, BMC may be useful.{optional_public_purchasing_note}

You can send one request with everything that needs attention: cleaning, repairs, grounds, HVAC, electrical, parking-lot work, and other building needs.

Start with the current problem here:
{landing_url}

You do not need a monthly plan just to send the first request.

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

For school/government buyer types the code adds:
“If your organization has approved-vendor or purchasing rules, we can work around those requirements.”

---

## 17. Facility/commercial buyer outreach — step 2

**Subject:** `Re: building help in {market}`

Hi {business_name},

Just following up once.

If you have a building punch list, cleaning need, repair, or several small maintenance items sitting around, you can send them in one request here:

{landing_url}

BMC Luminary Ventures LLC
{business_postal_address}

Reply no if you do not want future outreach.

---

## 18. Provider application receipt

**Subject:** `We got your BMC provider application`

Hi {contact_name},

We received your BMC provider application for {market}.

You’re done for now. There is no second form to fill out.

What happens next:
1. We review the jobs and area you selected.
2. We check license or insurance details when the trade requires it.
3. If approved, we email you a secure provider dashboard link.

When a request comes in, you see the job details first. You can accept it or pass. Joining the pilot is free, and any future paid lead or territory terms will be shown before they apply.

BMC Luminary Ventures LLC
{business_postal_address}

---

## 19. Provider approval / dashboard ready

**Subject:** `Your BMC provider dashboard is ready`

Hi {business_name},

You’re approved for the BMC provider pilot.

Your provider dashboard is ready:
{portal_link}

From the dashboard you can:
- review new opportunities;
- accept or pass;
- see customer details after you accept;
- update estimates and job outcomes;
- change your service area, minimum job, and capacity.

Joining the pilot itself is free. If a future lead or territory has a price, the terms will be shown before they apply.

This secure dashboard link expires on {expiration_date}. You can request a new one anytime from the provider login page.

BMC Luminary Ventures LLC
{business_postal_address}

---

## 20. Provider login link

**Subject:** `Your BMC provider login link`

Hi {business_name},

Use this secure link to open your BMC provider dashboard:

{portal_link}

The link expires on {expiration_date}. If you did not request this, you can ignore this email.

BMC Luminary Ventures LLC
{business_postal_address}

---

## 21. New service request to provider

**Subject:** `New {service_name} request in {market}`

New BMC service request

Market: {market}
Service: {service_name}
Timing: {timing}
Scope: {scope}

Accept or decline securely:
{provider_response_link}

Only accept if this fits your territory and current capacity.

---

## 22. Provider accepted — customer details

**Subject:** `Customer details: {service_name} in {market}`

You accepted this BMC request. Here are the customer details you need to follow up.

Market: {market}
Service: {service_name}
Customer: {customer_name}
Business / property: {business_or_property}
Site address: {site_address}
Email: {customer_email}
Phone: {customer_phone}
Preferred contact: {preferred_contact}
Timing: {timing}

Scope:
{scope}

Please contact the customer promptly. After contact/estimate, close the loop here:
{job_update_link}

Customer information is provided only for this service request and should not be sold or used for unrelated marketing.

BMC Luminary Ventures LLC

---

## 23. Customer — provider matched

**Subject:** `Provider matched for your {service_name} request`

A provider accepted your BMC service request. Here is who will be following up with you.

Provider: {provider_business_name}
Market: {market}
Service: {service_name}

{provider_contact_block}

The provider is an independent business and will communicate its own pricing, scope, scheduling, warranties, and job terms directly with you. BMC will follow the request through the estimate/outcome stage.

Reference: {lead_id}
BMC Luminary Ventures LLC

---

## 24. Building/facility request receipt

**Subject:** `We got your building request`

We received your building request in {market}.

Property: {business_name}
Site: {property_address}

You asked for help with:
- {service_name_1}
- {service_name_2}
- ...

We’ll work through these items from the same request and follow up as the next steps become clear.

Reference: {lead_id}
BMC Luminary Ventures LLC

---

## 25. General customer request receipt

**Subject:** `BMC received your request`

We received your request for {service_name} in {market}.

{workflow_status_text}

Reference: {lead_id}
BMC Luminary Ventures LLC

The workflow-status sentence varies by path. Examples in code:
- “We saved your project details. Research starts after a paid order is linked to this request.”
- “Payment confirmation is still being linked; you do not need to submit again.”
- “BMC is reviewing the request and will move it to the right next step.”

---

## 26. Provider job-outcome follow-up

**Subject:** `Update BMC request: {service_name} in {market}`

Please update the outcome of the BMC request you accepted.

Market: {market}
Service: {service_name}

Mark the job contacted, estimate sent, won, or lost:
{job_update_link}

For all BMC jobs and matching settings, use Provider Login:
{provider_login_url}

Closing the loop helps BMC send work that fits your business.

---

## 27. Internal ops/watchdog alert

The watchdog also uses the SMTP account for internal BMC operational alerts when runtime state changes to an issue or recovers. Its subject/body are generated from the current issue/recovery state rather than from a fixed customer-facing sales sequence.

---

## Shared HTML wrapper

Where an HTML version exists, BMC currently uses one shared HTML wrapper:
- white card on a light background;
- subject repeated as heading;
- same core text as the plain-text version;
- optional blue CTA button;
- raw-link fallback below the button;
- footer: `BMC Service Network · BMC Luminary Ventures LLC`.

The plain-text copy above is the wording that should be reviewed first.

---

## Owner approval gate

Before re-enabling unsolicited outbound, Brett should explicitly approve or revise at minimum:
1. Growth cold first touch.
2. Growth cold follow-up.
3. Growth positive-reply response.
4. Free-five delivery.
5. Growth nurture 1.
6. Growth nurture 2.
7. Paid Growth Pack delivery.
8. Provider recruitment sequences.
9. Facility/buyer outreach sequence.

Do not re-enable outreach until that review is complete.
