# BMC Service Network — Next Conversation Bootstrap

**Purpose:** This file is the authoritative starting point for a new ChatGPT conversation in the BMC Service Network / BMC Luminary Ventures project.

**Last updated:** 2026-10-25

## Read this first

Do not ask Brett to reconstruct prior setup from memory.

Before changing production or asking him to repeat infrastructure work, inspect:

1. `portfolio/automation/HANDOFF.md`, especially Sections 47–52.
2. `portfolio/automation/BUSINESS_MODEL.md`.
3. `portfolio/automation/deploy-update.sh`.
4. `portfolio/automation/runtime-doctor.sh`.
5. `portfolio/automation/validate-public-copy.py`.
6. `portfolio/automation/validate-search-readiness.py`.
7. `portfolio/seo/SEO.md`.
8. Current GitHub master/head and latest BMC Portfolio CI result.

Treat the repository and live verification output as source of truth when they conflict with an older chat summary.

---

# 1. What BMC is

BMC Luminary Ventures LLC is building **BMC Service Network**, a broad Arizona service, lead/referral, local-business research, and opportunity network.

The goal is not to be another cumbersome directory. The system is intended to make it easier for customers/businesses to request help, for qualified providers to receive relevant opportunities, and for BMC to operate with a high degree of automation.

The network includes home services, commercial/facility services, medical/education/institutional buyer research, auto/fleet, restaurant/facility maintenance, procurement opportunities, local-demand research, and paid local-market research products.

Do not conflate this project with Quantum Neuroshift.

Do not casually rewrite pricing/business model. Consult `BUSINESS_MODEL.md` and the current handoff before changing monetization.

---

# 2. Current pre-launch status

The two pre-provider tasks Brett explicitly wanted are complete.

## Public-site cleanup: DONE

Completed cleanup includes:
- awkward/internal wording removed from public pages;
- public copy rewritten to explain outcomes instead of internal routing machinery;
- leftover `REPLACE_ME` webhook placeholders replaced with the real production intake endpoint;
- core service pages moved away from inappropriate Prescott-only positioning where statewide Arizona positioning applies;
- public sitemap/noindex conflicts corrected;
- real `/providers/` page included in sitemap;
- obsolete redirect-style `/vendor-partner/` sitemap entry removed;
- CI guards added so sitemap/noindex conflicts and old placeholder/internal phrases cannot silently return;
- public-copy validator strengthened;
- public form contracts validated;
- request-flow mailto fallback removed;
- canonical origin, sitemap and robots guards active.

## Research queue: DRAINED

Current research counts:
- queued: **0**
- assigned: **0**
- buyer prospects: **2,537**
- vendor prospects: **211**
- staged candidates: **205**
- completed backlog rows: **56**
- review rows: **22**
- searched with no usable result: **771**

Important:
- the 22 review rows and 205 staged candidates are **not unfinished queued research**;
- they are optional review/promotion material for later;
- do not restart a broad research drain as a launch prerequisite.

The runtime doctor was corrected so a drained research queue reports PASS rather than warning.

CMS source-native 403 behavior is a separate nonblocking source issue. Standard public-web research still fully drained. Already-ingested source-native records remain stored.

---

# 3. Payments / Stripe are already live

Do not redo Stripe setup.

Live Stripe account is operational:
- charges enabled;
- payouts enabled;
- details submitted;
- no outstanding requirements.

Live products:
- Local Growth Pack — $499 one-time
- Premium Growth Pack — $749 one-time
- Local Competitor Intelligence Pack — $299 one-time
- Local Market Expansion Pack — $699 one-time

Live Payment Links exist and are already wired into repository billing/product data.

Live webhook:
- endpoint ID: `we_1UUYgvQU2BLM8GhLlqebzgMb`
- endpoint: `https://hooks.bmcservicenetwork.com/api/stripe-webhook`

The Stripe signing secret is stored only in production `.env`.
Never expose it in chat.
Never rotate it unless a real incident requires it.

The live webhook was tested end-to-end:
- initial 502 exposed stale nginx Docker-name resolution after API recreation;
- gateway-refresh fix was committed;
- Stripe retry reached production;
- delivery returned HTTP 200;
- pending webhook count became 0;
- a manual resend returned `{"received": true, "duplicate": true}`, proving idempotency;
- temporary test event subscription and test metadata were removed.

Payments are not the current launch blocker.

---

# 4. Production architecture

## Static public site

Production static hosting is **Cloudflare Pages**.

Do not use GitHub Pages as production hosting.

Production:
- canonical site: `https://bmcservicenetwork.com`
- Cloudflare Pages project: `bmc-service-network`
- target: `bmc-service-network.pages.dev`
- Cloudflare authoritative DNS
- apex proxied to Cloudflare Pages
- www redirects to root/apex

The prior GitHub Pages/custom-domain experiment is not production.

Do not:
- move the apex CNAME to GitHub Pages;
- dispatch the manual GitHub Pages workflow just to publish production;
- restart a hosting migration without evidence that Cloudflare Pages is broken.

## Webhook/backend ingress

`hooks.bmcservicenetwork.com` uses a Cloudflare Tunnel to a restricted nginx gateway.

Private admin/API services must remain private/local.
Do not expose Postgres, n8n, SearXNG, Ollama, or the private admin API to the public Internet.

## VPS

Production VPS:
- host: `vps-5675821a.vps.ovh.ca`
- IP: `148.113.151.47`
- SSH user: `ubuntu`
- repo: `~/bmc-luminary-site`
- automation: `~/bmc-luminary-site/portfolio/automation`

---

# 5. Current provider-launch gate

The runtime launch gate still requires **at least one real verified pilot provider**.

No real provider has been invited yet.
No provider has been activated yet.

All global outreach switches remain OFF.

Do not enable bulk vendor outreach.
Do not enable buyer outreach.
Do not enable growth outreach.
Do not auto-approve a provider.

The first provider should be a controlled manual pilot.

---

# 6. First controlled provider candidate

Preferred first provider:

- vendor ID: `v_prescott_americancrown`
- American Crown Commercial Cleaning
- public seed email: `donna@americancrowncc.com`
- public seed phone: `928-250-0490`
- public site: `https://americancrowncc.com/`

Why it was selected:
- direct fit for the commercial-cleaning launch cell;
- Prescott/Yavapai footprint;
- direct public business contact;
- active commercial/facility service presence;
- public business/accreditation signals were reviewed in HANDOFF Section 49.

Important:
- public vendor/business certifications are not substitutes for insurance or service-specific licensing;
- review actual provider-submitted insurance/credentials before approval where relevant;
- do not treat a marketing claim as credential verification.

Fallback:
- vendor ID: `v_prescott_windowwranglers`
- Window Wranglers

---

# 7. Provider activation workflow is already hardened

The real-provider flow was reviewed before any invitation was sent.

Fixed issues:
- capacity is required in the activation form because approval requires capacity;
- Pending Pilot Review now shows the provider's **actual submitted**:
  - primary market;
  - territory;
  - services;
  - minimum job;
  - capacity;
  - credentials;
  - insurance answer;
  - name/email/phone;
  - submission time;
- current seeded routing is shown separately so BMC can compare provider requests to current routing;
- provider remains `pilot_pending_review` and unroutable until explicit approval;
- approval is a deliberate BMC action;
- after approval provider becomes `pilot`;
- approved provider can use the provider dashboard.

CI proves the full lifecycle:
1. secure First Wave activation link;
2. provider submission;
3. pending-review/unroutable state;
4. submission survives seed reruns;
5. Pending Pilot Review surfaces submitted details;
6. explicit approval;
7. provider changes to pilot;
8. dashboard access/update.

Do not bypass this review gate.

---

# 8. First provider invite copy

The First Wave invite was cleaned before use.

Current promise structure:
- BMC Service Network is opening a small Arizona provider pilot;
- no fee to join;
- provider chooses work area, jobs, minimum job size, and capacity;
- provider sees a matching request before deciding;
- some pilot opportunities may be free or discounted;
- any future paid lead/territory price and terms are shown before the provider chooses to participate.

The awkward phrase about proving whether BMC is “worth paying for” was removed and CI now locks the corrected copy.

Do not improvise a materially different offer without checking BUSINESS_MODEL/HANDOFF.

---

# 9. Repo and CI state

The prior conversation confirmed:
- master at the start of HANDOFF Section 52 was `b7341a511521e4dccc38cbf43ee3452c59d864b7`;
- HANDOFF Sections 49–51 were present;
- latest fully discussed green application CI was run `40268655215`, head `c26634f65758f4b5d861c22befdc51d872c4b9a3`, SUCCESS;
- that run included the complete database/API smoke test.

Because this file itself creates a newer commit, **always verify current master and latest CI before production work** instead of treating those SHAs as forever current.

---

# 10. Production VPS still needed the provider/admin deployment at the prior checkpoint

The repository side was green, but production API/admin code still needed the safe VPS pull/rebuild unless Brett has run it since.

Safe updater:
`portfolio/automation/deploy-update.sh`

It is designed for the existing production VPS and:
- refuses tracked local changes instead of deleting them;
- refuses detached HEAD;
- verifies remote branch state;
- preserves `.env`, secrets, outreach switches and persistent volumes;
- rebuilds the Ops API image;
- runs additive migrations;
- recreates API;
- refreshes webhook proxy;
- runs runtime doctor.

Exact manual deployment command:

```bash
cd ~/bmc-luminary-site
git pull --ff-only
cd portfolio/automation
chmod +x deploy-update.sh
./deploy-update.sh .env
```

Do not use `git reset --hard` as a deployment shortcut.

The new thread must first determine whether Brett has already run this after Section 50.
Do not make him rerun it if production is already current.

---

# 11. ChatGPT does not currently have a proven authenticated SSH path

The prior thread searched:
- connected tools;
- plugins;
- SSH/VPS/remote-server integrations;
- OVH;
- repository deployment automation.

Result:
- no connected authenticated SSH/terminal/OVH shell tool was available;
- no existing production deploy GitHub Action with SSH credentials;
- no self-hosted GitHub Actions runner;
- no established deploy secrets such as SSH private key/VPS host secrets.

Therefore:
- do not claim to be able to SSH into the production VPS unless the new thread actually discovers a new connected tool;
- knowing the VPS IP/hostname is not authenticated shell access.

A future automation improvement was identified:
1. create a dedicated deployment SSH key;
2. authorize it narrowly on the VPS;
3. store private key in a protected GitHub Environment secret;
4. create a manual production deploy workflow that runs the safe updater;
5. protect the production environment;
6. ideally protect master before workflows receive production credentials.

That could let future ChatGPT sessions deploy through connected GitHub Actions.

Do **not** invent secrets.
Do **not** assume this workflow already exists.
Production credential setup requires Brett's explicit action/approval.

---

# 12. Static production verification is separate from VPS deployment

Cloudflare Pages static deployment and VPS API deployment are independent.

Before sending the first provider invite, verify public static production is current.

Minimum checks:
- `https://bmcservicenetwork.com/providers/` exists/current;
- `https://bmcservicenetwork.com/sitemap.xml` is current;
- sitemap contains `https://bmcservicenetwork.com/providers/`;
- provider activation page contains required Current capacity field.

Do not assume a GitHub commit means Cloudflare Pages has completed its deployment.
Do not assume a VPS deployment updates static pages.

---

# 13. Search Console / indexing

Google Search Console setup is still a useful parallel task.

Documented in:
`portfolio/seo/SEO.md`

Correct path:
1. create Google Search Console **Domain property** for `bmcservicenetwork.com`;
2. add the Google TXT verification record in authoritative Cloudflare DNS;
3. submit `https://bmcservicenetwork.com/sitemap.xml`;
4. use URL Inspection/request indexing for a small priority set.

Do not manually request every page.
Let the sitemap handle broad discovery.

Google's general Indexing API is not appropriate for normal BMC local-service pages.

---

# 14. Remaining optional research review

The main queue is drained.

Optional later work:
- review 22 backlog rows in review;
- review/promote 205 staged candidates;
- investigate CMS 403 source-native access separately.

None of those should block the first provider pilot.

---

# 15. Correct next operational sequence

The new assistant should do this in order:

1. Read this file and HANDOFF Sections 47–52.
2. Inspect current GitHub master/head and latest CI.
3. Determine whether the VPS safe updater has already been run after provider/admin changes.
4. If production API is stale:
   - either have Brett run the safe updater once;
   - or, if Brett wants to eliminate manual SSH, build the protected GitHub deployment workflow first.
5. Verify Cloudflare Pages static production contains current providers/sitemap/provider-activation changes.
6. Run/inspect runtime doctor after API deployment.
7. Confirm all outreach switches remain OFF.
8. Recheck American Crown's current public business/contact evidence.
9. Use the current live First Wave secure activation invitation.
10. Manually send **ONE** provider invitation.
11. Wait for provider submission.
12. Review submitted market/services/capacity/credentials/insurance.
13. Adjust routing if provider-requested coverage differs from seed.
14. Approve only after the appropriate checks.
15. Rerun runtime doctor.
16. Confirm `live_intake_ready = READY`.
17. Then move into controlled launch/customer acquisition instead of reopening completed infrastructure work.

Search Console can be done in parallel before the invitation.

---

# 16. Process rules for the new assistant

- Never ask Brett to repeat infrastructure work before inspecting GitHub/HANDOFF/live state.
- Keep the user updated during long tool work.
- Record major decisions/results in HANDOFF before long implementation stretches.
- Do not disappear for long periods with no update.
- Do not claim background work.
- Prefer implementation over repeatedly re-planning.
- Do not conflate BMC Service Network and Quantum Neuroshift.
- Keep outreach OFF unless Brett explicitly authorizes it.
- Do not expose secrets.
- Do not rotate Stripe secret casually.
- Do not change Cloudflare hosting/DNS architecture casually.
- Do not send a real provider invitation from stale production code.
- Do not auto-approve the first provider.
- Do not treat staged/review research as a queued backlog.
- Do not restart the CMS bulk/source-native fight as a launch blocker.
- Do not change approved pricing/business model without reviewing BUSINESS_MODEL.
- Use the current repository, not old chat memory, as the operational source of truth.

---

# 17. Suggested opening message for a new ChatGPT thread

Paste this into the new conversation:

> Continue the BMC Service Network build from the authoritative repo handoff. Before doing anything, use the connected GitHub tools to read `portfolio/automation/NEXT_THREAD.md`, `portfolio/automation/HANDOFF.md` Sections 47–52, `portfolio/automation/BUSINESS_MODEL.md`, and the latest CI/master state. Do not ask me to repeat Stripe, DNS, Cloudflare, research drain, site copy cleanup, or earlier provider work unless the repo proves it is missing.
>
> Current high-level state: public-site cleanup is done, research queue is drained (0 queued/0 assigned; 2,537 buyers; 211 vendors; 205 staged; 22 review; 771 no-result), Stripe is live and webhook-validated, production static hosting is Cloudflare Pages, and all global outreach remains OFF. No real provider invitation has been sent and no provider is active yet.
>
> The first controlled provider candidate is American Crown Commercial Cleaning (`v_prescott_americancrown`), with Window Wranglers as fallback. The provider activation/pending-review/approval/dashboard lifecycle is CI-proven. The only launch gate is one real verified pilot provider.
>
> Before sending anything, determine whether the production VPS has already pulled/rebuilt the latest provider/admin code using `deploy-update.sh`, and verify Cloudflare Pages has the current provider/sitemap/activation form. If the VPS is stale and there is still no authenticated SSH connector, either give me the single safe VPS update command or help build the protected GitHub Actions deployment path so I do not have to keep acting as the SSH bridge.
>
> Keep outreach OFF. Do not auto-approve anyone. Do not send a provider invitation from stale production code. Update HANDOFF as you work and keep me visibly updated during long tool runs.

