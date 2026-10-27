# BMC Current Handoff — 2026-10-27

Read the newest section at the end of `portfolio/automation/HANDOFF.md` before changing BMC.

## Current production safety state

- `OUTREACH_ENABLED=false`
- `BUYER_OUTREACH_ENABLED=false`
- `GROWTH_OUTREACH_ENABLED=false`
- Do **not** send follow-ups to the seven pressure-washing contacts.
- Do **not** launch another niche.
- Do **not** describe the seven as verified deliveries. The defensible wording is: **seven SMTP submissions returned success and were recorded as sent by the old application logic**.
- Owner review remains mandatory before any customer-facing outreach resumes.

## Email incident and proof

The first Growth launch used seven valuable real businesses before the email experience was owner-tested. The old HTML alternative was materially shorter than the plain-text version, omitted the greeting/postal address/opt-out in the HTML view, and displayed an ugly raw tracking URL fallback.

A production-path replay was then sent to `brett.coon2@gmail.com` from the same BMC SMTP account using the first real Growth target row (TLC Window Cleaning and Pressure Washing). Brett supplied a Gmail screenshot proving that the replay reached Gmail and showing the actual HTML experience.

The replay proved the BMC SMTP path can deliver to Gmail, but it does **not** prove that each of the original seven reached its recipient.

## Permanent email release rule

No prospect/customer-facing email may go live unless all of these are true:

1. The exact deployed code/template is sent first to Brett's test Gmail through the same production `send_mail()` path.
2. Brett visually reviews the rendered Gmail message and explicitly approves it.
3. Production stores `GROWTH_OWNER_APPROVED_SHA` equal to the exact deployed git SHA.
4. `growth-launch-readiness.sh` must block if the approved SHA does not equal the current deployed SHA.
5. Any email/template code deploy invalidates the previous approval automatically.
6. All campaign switches remain OFF during preview testing.

## Current email hardening in master

The current email hardening work:
- uses display sender `BMC Service Network <contact@bmcservicenetwork.com>`;
- adds explicit Date and Message-ID headers;
- uses one deterministic Growth renderer for both live sending and owner preview;
- keeps the Growth greeting and core offer in HTML;
- includes the business postal address and visible opt-out in marketing HTML;
- removes the visible raw tracking-URL fallback;
- uses a simpler business-email layout instead of the oversized promotional card;
- adds exact-commit owner approval gating to Growth launch readiness.

Before deploying, require green BMC Portfolio CI. Deploy only the exact green master SHA while preserving all outbound switches OFF. Then send the revised Growth first-touch to Brett's Gmail. Do not approve the SHA until Brett explicitly says the rendered message is acceptable.

## Template review

Review `portfolio/automation/EMAIL_TEMPLATE_REVIEW.md` before any other outbound lane is enabled. Growth 1–7, provider recruitment, and facility/buyer outreach all require owner review.

## Deliverability work still open

Before scaling materially:
- independently verify SPF;
- independently verify DKIM;
- independently verify DMARC;
- add stronger SMTP submission/audit state and bounce/DSN suppression;
- stop treating a boolean SMTP return as verified delivery.

The active ChatGPT monitor is `BMC Revenue Watch` (automation `6adfa09139708191a3b81e13e9fbabba`).
