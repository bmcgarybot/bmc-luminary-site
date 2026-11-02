# BMC Service Network — next conversation handoff
## November 2, 2026, approximately 06:00 America/Phoenix

**Read this before acting. This handoff supersedes older production-state paragraphs, not the owner's safety rules.**

## 1. Start here: actual state, no optimistic assumptions

The public website and backend are live, but **customer outreach has NOT launched**. We missed the requested 06:00 outreach release. Owner has not approved the final rendered email/click journey, global hold is on, and all three outreach flags are false. No new prospect email, owner-preview email, live charge or hold release occurred during this review.

Last PROVEN VPS production release: **33ab2d7618022eb4575688f7f17c134a4a9e5dc2** (PR27; includes all PR26 work). It contains payment/refund fixes, city checkboxes, smaller-territory inquiry, active-job review and form label fixes. Its held deployment succeeded; latest read-only runtime proof at 05:47 MST shows zero core failures/warnings, healthy Python API/scheduler/research/local AI. Service matching remains blocked until at least one suitable verified/accepting provider is active.

NEW copy/template PR27 merged as **33ab2d7618022eb4575688f7f17c134a4a9e5dc2**. Its exact-head CI passed both runs. Exact-master Portfolio CI41449254171 and Pages41449254015 PASSED, and held VPS deployment b-service-copy-held-release-20261102T130456Z SUCCEEDED at13:07:36UTC /06:07:36MST. The new copy IS DEPLOYED. Runtime zero failures/warnings; monitor reloaded. Outreach remains held, not launched.

- PR26: https://github.com/bmcgarybot/bmc-luminary-site/pull/26
- PR27: https://github.com/bmcgarybot/bmc-luminary-site/pull/27
- Latest postdeployment operational note: https://github.com/bmcgarybot/bmc-luminary-site/blob/vps-relay/portfolio/automation/vps-relay/LATEST_LAUNCH_HANDOFF.md
- Flood override: https://github.com/bmcgarybot/bmc-luminary-site/blob/vps-relay/portfolio/automation/vps-relay/FLOOD_ADJUSTED_LAUNCH_2026-11-02.md

A final release addendum may appear at the end of this file. Prefer it over this checkpoint.

## 2. Owner's current intent, priorities and authority

Owner is Brett Coon. Company BMC Luminary Ventures LLC; customer brand BMC Service Network; domain bmcservicenetwork.com. Separate from Quantum Neuroshift. Repository bmcgarybot/bmc-luminary-site.

Work in co-work mode. Continue authorized work; do not stop after describing a next step. Give short factual progress updates. Do not promise earnings. First sale is targeted **by November13**, with **November30 latest**. Initial November target $300 gross receipts; longer target $8,333/month. Aim for a sale ASAP, not waiting until the13th. One real $499 order exceeds $300 gross, not net income.

Use **Sol** for routine work. Ask before Astra or another higher-cost model. Two Sol agents were used with explicit owner authorization; no Astra. The user controls the chat model picker; do not claim it was switched automatically.

Research budget $0: no paid upgrades, card-required trials, new infrastructure purchases, proxy/account rotation or invented search metrics. User can make free accounts, but we do legwork first.

Owner goal is a largely autonomous business with 2–3 short checks/day. Python/scheduler automation exists; do not call the whole business autonomous merely because Docker is healthy. Real provider acceptance, qualifications, appropriate coverage and exception handling still matter.

## 3. Latest user steering: flooding and copy quality

User explained major northern Arizona flooding over the previous two days and challenged pressure-washing-led outreach: the storm changed immediate demand. They specifically prioritize:
- landscaping and yard cleanup;
- trash/junk/debris hauling;
- handyman minor repairs;
- fence repair.

They are identifying useful recovery work, not asking for disaster-themed sales copy. They explicitly said copy need not mention flooding. They strongly reject generic robot copy and repeated workflow failures: **“No fumble like your last live outreach.”**

They supplied a screenshot of the prior Growth owner email. Criticisms are valid:
- very long full-business-name greeting;
- “strong commercial prospects,” “public contact route,” “practical outreach angle” jargon;
- bloated seller-focused paragraphs;
- awkward comma before “free” caused by em-dash substitution at SMTP boundary.

Do not reuse pressure-washing copy/checkout for unrelated services. Do not fabricate personalization, customer demand, completed research for a nonexistent sample, or provider availability.

The assistant found failures it should have caught earlier, particularly generic copy and preview-versus-actual-send mismatch. Do not blame the user or assert context length caused this; that was not established.

## 4. Flood-adjusted commercial plan

The previous default “10 pressure-washing Growth emails at6AM” recommendation is superseded. All11 staged Growth contacts remain held for per-business impact/capacity/access review. Phoenix/Scottsdale cannot simply be assumed unaffected; Maricopa warnings also appeared.

Keep normal commercial research sales available only where current scope, recipient relevance and useful fulfillment can be supported. Do not relabel $499 research as100 active flood jobs. Old inventory reserve counts are not proof every business still operates after the storm.

Prioritize verifying businesses that want landscaping/hauling/minor-repair/fence work and matching actual confirmed requests to suitable accepted providers. Ordinary pressure washing/handyman listings do not establish contaminated-water, structural, electrical, mold or specialist restoration competence.

Current paid customer introductions remain disabled. Do not silently add a lead fee, emergency dispatch promise, insurance-coverage guarantee or new checkout. A public damaged-address post is not customer consent.

Official sources researched:
- Prescott significant-flooding/emergency declaration, Nov1:
  https://prescott-az.gov/city-of-prescott-responds-to-significant-flooding-event/
- Prescott emergency updates:
  https://prescott-az.gov/prescott-flooding-emergency-information/
- YCSO Nov1 21:50 flood updates:
  https://www.ycsoaz.gov/News-Articles/November-1st-Flooding
- NWS current Flagstaff-area warning feed:
  https://www.weather.gov/wwamap/wwatxtget.php?cwa=fgz&wwa=all
- ADOT/AZ511 closures:
  https://az511.gov/List/Alerts
- EPA qualified flood-cleanup guidance:
  https://www.epa.gov/emergencies-iaq/flood-cleanup-protect-indoor-air-and-your-health

Morning Nov2 sources confirmed VerdeRiver warning through20:00MST, GraniteCreek/AguaFria warnings, Winslow/Moenkopi flash flooding, and Maricopa warnings. Treat every warning/road status as time-sensitive; check the latest, do not repeat old expiry times as current.

**No automated weather/market checkout block was added by documentation updates.** Campaigns are held. Storm-affected sales/fulfillment need explicit manual review until an implemented hold/revalidation exists. Do not claim all affected-market payments are technically blocked.

## 5. What PR27 actually changes

Merged source currently contains:
- Human, short Growth first-touch/follow-up for the TWO supported research niches, pressure_washing and commercial_cleaning. Concrete job types; “Hi,” greeting; five local researched businesses to pitch, explicitly not people asking for quotes; unchanged $499/100 total includingfive; one signed CTA.
- All41 provider_match services have specific job examples in a shared PROVIDER_JOB_EXAMPLES map.
- provider_outreach_parts → shared plain and HTML; one activation URL reused per message.
- Actual process_outreach and admin wave preview use provider_outreach_message. Previously the worker sent plain text only while the review catalog showed an HTML wrapper.
- Stable durable mail key provider-outreach:{outreach_id}:{step} through existing send_mail_once. Uncertain/changed payloads enter review; no blind retry.
- Unsupported services remain explicit review gaps, not fake generic fallback messages.
- admin_first_wave now uses the actual renderer, retains unsupported records with null copy/link, and uses campaign target market/service before vendor fallback, matching the actual sender.
- Existing first_wave_vendor_copy/vendor_recruitment_copy two-return-value compatibility retained.
- No new price, Stripe flow, provider approval, campaign enable or email send.

Offline coverage:
- 54 actual AZ service registry records;
- 41 provider services ×6 variants =246 provider messages;
-13 nonprovider transactional receipts, two facility buyer variants, four supported Growth messages =265 offline previews.
- All reports explicitly unapproved for send.
- Thirteen nonprovider acquisition/tailoring gaps remain; do not call all54 fully tailored outbound campaigns.
- Fence repair has NO dedicated service key/front/matching workflow. Existing fence records are under facility_maintenance; do not silently route a homeowner fence job as a fully enabled service.
- Registry metadata count53 is stale versus54 actual records; low-priority metadata issue, not a reason to invent services.

Files:
- portfolio/automation/api/app.py
- portfolio/automation/service-template-coverage.py
- portfolio/automation/test-service-outreach-copy.py
- portfolio/automation/template-coverage/COVERAGE.md
- portfolio/automation/template-coverage/COVERAGE.json
- portfolio/automation/template-coverage/PREVIEWS.json
- portfolio/automation/template-coverage/GALLERY.html

Gallery contains synthetic FIXTURE/NONLIVE identities, tokens and postal data. It is for copy/layout review; never send fixture links or present it as a production Gmail test.

Run offline coverage:
    python portfolio/automation/service-template-coverage.py
    python portfolio/automation/test-service-outreach-copy.py

## 6. PR27 test and deployment checkpoint

Initial remote head b152c20211a457a010d2c2ac655342dd9061f73f failed full CI because /api/admin/first-wave crashed on an unsupported legacy service. Never deployed.

Sol fixed:
- unsupported first-wave preview records remain visible as review gaps;
- actual HTML included for supported rows;
- activation URL taken from rendered message, avoiding a second token;
- campaign target market/service precedes default vendor service;
- CI fee assertions updated to new equally explicit free-join/future-paid-terms copy.

Final remote head **594afbcb14fe82665b65337c89ab75fb44858819**
Final tree **603893c55d710b85a560e4ac738ca1534787d92c**
Full head CI: **41448824701 / 41448815801**, both success before merge.
Merge master: **33ab2d7618022eb4575688f7f17c134a4a9e5dc2**
Exact-master CI: **41449254171** (SUCCESS)
Exact-master Pages: **41449254015** (SUCCESS)

Local focused suites passed (new copy tests, preview-token4, reply-hold3, owner-preview-scope7, hold4, durable-mail7); final copy suite4 tests cover hundreds of variants plus actual sender/admin paths. Do not confuse fixture captures with real SMTP/inbox rendering.

NEXT: deployment is already SUCCESS on33ab2d...; DO NOT redeploy/queue a duplicate. Finish/read fresh postdeployment operator and Growth audit proofs. Do not advance master or approve/send until the separate owner review.

## 7. Email authority and seven-contact incident

Keep:
    BMC_OWNER_LAUNCH_HOLD=true
    OUTREACH_ENABLED=false
    BUYER_OUTREACH_ENABLED=false
    GROWTH_OUTREACH_ENABLED=false

Exactly eight owner-only previews in the recent authorized batch were SMTP-submitted once: seven Growth layout previews +one actual signed read-only route preview, to brett.coon2@gmail.com. Earlier historical preview batches also existed. **No new resend is authorized.** The assistant asked permission for one final current-release owner preview; the user did not answer yes, instead steered flooding/copy/handoff work.

Old current screenshot is a rejection/critique, not approval. Generic continue, do what you must, go live today, or no fumble is not exact-version rendered-email approval.

Before customer outreach:
1. Obtain explicit permission for the needed owner-only preview send.
2. Send through the same actual production sender/rendering path with all campaigns off.
3. Brett checks actual Gmail rendering and the real button/post-click journey.
4. Only then record GROWTH_OWNER_APPROVED_SHA equal to deployedSHA if approving Growth. New copy deployment invalidates prior exact-SHA approval.
5. Global hold release and campaign enable require explicit owner release; clock/scheduled task is not authority.

The existing relay growth_launch_enable is Growth-only and sets daily cap10. It cannot release the global owner hold; the current design expects an explicit manual VPS hold configuration change after approval. Do not silently broaden that action into provider/recovery campaigns.

Seven historic pressure-washing customer SMTP submissions remain separately review-held. Preserve recipient, originaltimestamp/sequence/evidence. Do not mark dead, reset/requeue as fresh, send apology blast or clear review flags without the owner's specific recovery decision. SMTP acceptance is not inbox delivery.

The owner preview catalog27 includes historical synthetic representative examples. It is not proof every entry is the exact live template or signed real route. For a real first-touch owner test, /api/admin/replay-first-growth-email-to-owner uses an actual historic Growth target and purpose-bound read-only token. That endpoint is an external mail action and must not be called without permission.

## 8. Last fresh VPS proof / actual autonomy limits

Fresh proof requests:
- b-autonomy-readiness-runtime_doctor-20261102T124704Z
- b-autonomy-readiness-scheduler_status-20261102T124704Z
- b-autonomy-readiness-operator_snapshot-20261102T124704Z

All succeeded on7dfb4a34. API/scheduler healthy; scheduler up7hours; service registry54; research refresher and qwen3:1.7b reachable; correct fryer/brake service routing; 0queued/assigned research at that checkpoint. Runtime zero failures/warnings. Preflight:
- outreach_ready READY (configuration, not authorization);
- payments_ready READY;
- AI search READY;
- live_intake_ready BLOCKED: activate at least one verified pilot provider.

Operator:11 fresh Growth staged, seven historical sent, zero replies/samples/orders/revenue/open Growth exceptions. One active customer request needs review, zero confirmed. Do not call it saleable warm demand.

The scheduler loops every300seconds and runs expiration/routing, internal agent/research, Growth health/nurture/paid fulfillment/outreach, replies, inventory, provider/buyer outreach and closure checks at their intervals. Flags/hold gate campaign sends. Paid fulfillment is a separate obligation and is not automatically a marketing hold no-op. LocalAI and source discoveries are not permission to send.

No suitable active provider has been proven for the new recovery priorities. No availability/dispatch promise. Existing first-wave12 provider +7 buyer cohorts are configuration cohorts, not proof they cover the current four recovery priorities or have accepted.

## 9. Recovery plan, research and draft status

Worktree bmc-recovery-research, branch feat/recovery-service-plan-20261102:
-8c9c70a initial docs;
-9a50d508 shortened drafts/removed invented “Gary” persona;
-eebb4f0 separated simple Brett signatures.
Only portfolio/automation/RECOVERY_SERVICE_PLAN.md changed.
Not yet in master at checkpoint. Publish it in vps-relay operational docs or a docs PR; do not force a production SHA change merely to store research.

Plan includes actual routes/keys:
- landscaping → /portfolio/landscaping/
- junk_hauling → /portfolio/junk-hauling/
- handyman_repairs → /portfolio/handyman-repairs/
- fence: no dedicated route/key; manual scope gap, not alias.

Six saved-evidence research candidates: Rocky's Landscaping (Prescott), Your Own Retreat Inc. (PrescottValley), Copper State Junk Removal & Hauling (ChinoValley), Licensed Handyman Inc. (Dewey-Humboldt), Davis Fence LLC (Prescott), R&R Fencing (PrescottValley). Dates mostlyOct26; most source contacts null or third-party listings. These are uncontacted research clues, not qualified/available providers. No fresh external verification or live contact performed. Four landscaping/fence artifacts contain93 raw source records; not deduplicated/verified provider count.

Original short capacity drafts and customer wording exist, no flood mention required. Sign as Brett/BMC or the brand; do not invent “Gary” from the GitHub account name.

## 10. Prior major work and retained boundaries

PR24 merged active customer-job qualification plus broad question research.
- authenticated review booleans: contact_verified/job_confirmed/sharing_confirmed/not_duplicate;
- fresh request≤7days, confirmation≤24hours, current status/consent/contact/scope/market;
- public form flags cannot qualify a lead;
- can_charge alwaysfalse, paid introductions disabled;
- proposed$25 introduction is only a hypothesis, no Checkout/reservation/refund/contact-unlock paid flow implemented.
- Provider pilot remains free; never add fees to existing free acceptance.

PR25 deployed explicit city checkboxes:
-21AZ markets, primary included +extra explicitly selected;
-immutable selected_markets saved through email verification/sample/checkout/fulfillment;
-real city labels retained, cross-city normalized-name dedup, no silent widening from travelnotes;
-overlap/alias replay cannot harvest additional freefives;
-current saved-five/source/suppression/reserve rechecks on checkout/replay/nurture;
-paid100 include originalfive;125unique passing reserve before offer;
-on-site smaller-territory inquiry creates one review task, no order/payment/email;
-preferred20/50/100 are discussion preferences, not configured paid offers;
-Cordes Junction is not silently renamed Cordes Lakes.

PR26 payment integrity fixes deployed7dfb4a34:
-explicit invalid/mismatched sample reference cannot fall back to another territory;
-missing reference only links one unambiguous delivered/current-five sample;
-receipt preserved, unresolved scope enters review;
-successful refund objects accounted once across eventIDs;
-pending/failed refunds do not reduce revenue;
-refunds block queued fulfillment; early/out-of-order refunds held;
-checkout retry after refund cannot rebook paid receipt;
-partial/failed refund cases stay manualreview; no automatic resumption;
-seven real Postgres cases +signed HTTP/sample/100-row delivery passed.
No actual live charge was used.

Source-rights history:42c2641 and HANDOFF Section77 intentionally removed selector/readiness rights gate per prior owner scope. Section78 conflicting claims are stale. Tablepresence is not licenseproof. Preserve source-quality/actual-city/suppression/exposure safeguards; do not invent an extra gate or claim everything legally/currently verified.

Nevada: LasVegas/Henderson research separated, all intake/checkout/outreach/placement closed, Monday launch deferred. Staffing/household care remains held. No AZ-first wording in NV. NV is not a blocker for an approved Arizona Growth pilot.

## 11. Data and question research

Canonical AZ source census:75,109 strict source records across328artifacts,59,289buyer+15,820vendor,21markets/1,260lanes. Not globally unique businesses or live confirmed leads.

Broad KeywordTool corpus:74distinctseeds/67profiles,5,989unique suggestions. Separate city-worded set:54planned/46collected/8NVpending, all42AZseeds,414rows/303exactunique strings,9zero-result seeds. CountryUS/English; location appears in querytext only. Do not claim measured city demand, factual answers, published SEO, LLM weight training or guaranteed rankings. Both corpora unreviewed for answer generation.

Free source outcomes:
- QuestionDB five monthly guest queries used;91rows/5CSVs;
- AlsoAsked three guest queries used; oneCSV +two visible-tree transcriptions, not all exports recovered;
- FindQuestions security check, no confirmed new signup/result; user already uses brett.coon2@gmail.com;
- Google Trends unusual-traffic CAPTCHA after one reload, no chartdata/bypass;
- Socrates signin required;
- ATP two searches returned toform without results, causeunknown;
- SearchResponse upstream failure;
- BuzzSumo account/eligibleplan/trialwall, no paidtrial;
- KeywordSurfer docs reviewed, extension notinstalled;
- nativeGooglePAA/autocomplete not completed due Google challenge. Third-party outputs retain attribution.

Working user files:
https://chatgpt.com/library?file_id=libfile_d440a96b6bdc8191a1dc958f1754d8e4&account_id=personal
https://chatgpt.com/library?file_id=libfile_7af10eadcb3c81919fe0d93106b7b775&account_id=personal

Use useful canonical intent pages, synonyms asaliases, sourced answers and routing evaluation. Do not publish one thin page per query.

## 12. Books and strategy already available

All three project PDFs are attached: $100M Offers, $100M Leads and $100M Money Models. No need to request upload again. Relevant sections read and applied: value/effort/time/risk; useful leadmagnet and targeted outreach; clear attraction→paidoffer, smaller quantity afterinventoryreview, continuity only afterrepeatvalueproven. Do not copy book text into outbound or train model weights from PDFs.

The business is broader than selling lists: problem-first service matching, supplier/quote sourcing, concierge, provider acquisition and productized businessresearch. Original Koerner inspiration is retained in BUSINESS_MODEL.md. Narrow launch does not mean deleting the broader plan or research.

## 13. Workspace and Git instructions

Root cwd /workspace/scratch/720a8e748278. Reuse existing worktrees; don't reset unrelated modifications.

- bmc-template-coverage: branch feat/service-template-coverage, localHEAD0415f02ffc118af2ca500694006507819162b50e; production-copy+coverage tool. Tree603893c55d710b85a560e4ac738ca1534787d92c matches remote finalhead594afb...
- bmc-recovery-research: branch feat/recovery-service-plan-20261102; docs only, latesteebb4f0.
- bmc-local-question-research: branch feat/local-question-research-20261101, localHEAD36fb76b, tree matches merged7dfb4a34; preserves untracked portfolio/data/.assistant-research-bootstrap-2026-10-26-tucson-official-businesses-06.json.94bOAT. Do NOT stage/delete it.
- bmc-territory: old local27ed5df PR25 tree.
- bmc-content-research and bmc-nevada-launch preserve older states.
- old bmc-luminary-site clone has pre-existing tracked edits; do not reset it.

Use rg/rg--files. Public git fetch works; git push lacks CLI credentials. GitHub tools perform writes. Parent commits differ between local and remote but treeSHAs were verified identical.

GitHub fetch:
- REST JSON usually structuredContent.content JSONstring;
- contents file tool often returns FILETEXT directly, not base64REST wrapper;
- inspect isError/missingstructuredContent before parsing.
- workflowlogs: github_fetch_workflow_job_logs({repo_full_name,job_id}).
Writes: create_tree/base tree, create_commit/parent, update_ref/expected_sha lease. Compare remote treeSHA to localtree before refupdate. Preserve CRLF via open(newline='') or base64blob. Do not dump app.py/HANDOFF in chat; stream bounded chunks privately.

No Docker/Postgres locally. Transient deps /tmp/bmc-nv-test-deps; real Postgres/HTTP validation is GitHub CI. Never claim skipped local DB tests passed.

VPS: ubuntu@148.113.151.47 / vps-5675821a. No new SSH login attempted. Private operator monitor127.0.0.1:8765; old tunnel bind-address-in-use issue was resolved. Don't kill an existing listener blindly or expose admin ports.

## 14. VPS GitOps relay

Branch vps-relay, separate from master. Requests/results:
portfolio/automation/vps-relay/requests/<id>.json
portfolio/automation/vps-relay/results/<id>.json

Request shape:
    {version:1,request_id:"b-unique-UTC-id",action:"operator_snapshot",
     created_at:ISO,expires_at:ISO+1or2h,allow_external_actions:false,args:{}}

deploy_update additionally requires exact greenmaster required_ci_sha. Read-only actions:operator_snapshot,growth_launch_audit,growth_inventory_audit,nevada_status,runtime_doctor,scheduler_status,proof_readout. No arbitrary shell. Don't enqueue externalmail/launch actions without explicit authorization. Prefixb- avoids crowdedindex issues. Poll actualresult; queuedrequest is not completion.

Fresh-ref→committree→create_tree→create_commit→leaseupdate_ref; relay may concurrentlyadvance. Re-read onleasefailure, neverforceoverwrite.

Deployment backs up and restorechecks database, applies additive migrations, recreatesAPI/scheduler/gateway/tunnel, runsdoctor, reloads ownedmonitor. Require actualsuccessSHA and freshproofs. Existing masterCI checks include validate and payment-postgres jobs. Pagesgreen alone is insufficient.

## 15. Automations / durable handoff

Existing:
- Arizona Monday launch check:6ae7b9ca36788191abfdc76249433148, Nov2 06:00America/Phoenix.
- BMC Revenue Watch:6adfa09139708191a3b81e13e9fbabba, hourly.

Both were updated with flood/recovery priorities and strict no-send/reviewconditions; no duplicate task. A scheduled check reports blockers and continues authorized work; it does not grant launchpermission. Promptcallsout postfloodcapacityreview, no pressurewashingtemplate reuse, no claims of confirmedjobs/provideravailability, keep originalseven. Currenttaskmayrunaroundhandofftime; inspectlastresult ifneeded ratherthancreatingduplicates.

Read these repository files after thishandoff:
CURRENT_HANDOFF.md, latest HANDOFF.md sections, LAUNCH_REVIEW_2026-11-02.md, GROWTH_TERRITORY_OFFERS.md, CUSTOMER_JOB_MODEL.md, BUSINESS_MODEL.md, EMAIL_TEMPLATE_REVIEW.md, SEVEN_CONTACT_RECOVERY.md, PAYMENT_INTEGRITY_REVIEW.md, plus vps-relayLATEST/floodoverride. Historical “pending” paragraphs are dated checkpoints, not currentstate.

## 16. Immediate next steps — execute, don't just narrate

1. Check finalreleaseaddendum below and actual master/VPSstate; finish exact33ab2d... CI→helddeploy→proof ifpending.
2. Preserve new human servicecopy, HTML/plain parity, durable provider sendclaim, reviewgaps and all original safety/payment/territorychecks.
3. Give Brett an actual service-specific preview and its real clickjourney for review; do not send another owner email without permission. The screenshot rejected oldcopy.
4. Verify provider identity/contact/servicearea/capacity and appropriatequalifications for chosenrecoverycohort. Fencegap remains explicit. Do not clear businessavailability from oldresearch.
5. Only on preciseownerreview/release, enable ONLYtheapprovedlane/cohort. No automaticfirst10Growthwave or massrecoveryblast. Provider/buyerenable is not covered by Growth-onlyaction.
6. Keep emailreplies/optouts, payments, fulfillment and exceptionsmonitored; no feesforunconfirmedwarmleads. Pursue firstsaleASAP/byNov13, latestNov30 withoutfabricatingdemandorprofit.
7. Keep thishandoff and repositorynotes current at substantial milestones. If nextthreadstarts, carry workforward; don'tresendtests/restartresearchoraskforbooks.


## Final release addendum — November2, 06:07 MST

PR27 exact-master CI41449254171 and Pages41449254015 succeeded. **b-service-copy-held-release-20261102T130456Z completed successfully at13:07:36UTC on33ab2d7618022eb4575688f7f17c134a4a9e5dc2**, exit0, core runtime0failures/0warnings, monitor reloaded. Updated copy is deployed. No messages sent, no new approvalSHA, no campaign enable or charge. Customer outreach is still NOT launched. Live-intake gate still needs a verified/accepting provider. Final actual Gmail/button approval remains necessary. All prior pending-deployment instructions are superseded; read actualresult and don't queue another deploy. The owner-requested6AMoutreach deadline was missed; do not describe website uptime as successful outreach launch.


## Fresh postdeployment proof — 06:10 MST

Both final read-only proofs succeeded on33ab2d7618022eb4575688f7f17c134a4a9e5dc2: b-final-copy-proof-operator_snapshot-20261102T131028Z (13:10:51UTC) and b-final-copy-proof-growth_launch_audit-20261102T131028Z (13:10:49UTC). Runtime/API/scheduler healthy; ownerholdtrue; allthreeoutreachfalse;11staged/sevenhistoricalsends; zero replies/samples/orders/revenue/openGrowthExceptions; oneactivecustomerrequestneedsreview, zeroconfirmed. Growth configuration audit has exactly2blockers/0warnings: ownerhold and no exact-SHA approval. Neither blocker was bypassed. Newcopy deployment and postdeployverification are DONE; nextconversation must concentrate on actual owner-preview approval, appropriate recoverycohort/provider qualification and remaining service gaps, not redeployment or resend loops.


## Continuation verification and reversible work — November 2, 2026, 06:50 MST

This addendum supersedes older production/checkpoint instructions. Master and VPS remain **33ab2d7618022eb4575688f7f17c134a4a9e5dc2**. No deployment was queued.

Fresh independent relay requests (created 13:38:07 UTC):
- b-continuation-growth_launch_audit-20261102T133807Z — succeeded 13:39:17 UTC; 2 blockers/0 warnings: owner hold and absent exact-SHA approval.
- b-continuation-operator_snapshot-20261102T133807Z — succeeded 13:39:19 UTC; API/runtime/scheduler healthy; owner hold true; all three outreach false.
- b-continuation-runtime_doctor-20261102T133807Z — succeeded 13:39:23 UTC; zero core failures/warnings; live intake still blocked pending verified/accepting provider.
- b-continuation-scheduler_status-20261102T133807Z — succeeded 13:39:25 UTC; scheduler up.
Exact-master Portfolio CI41449254171 jobs validate/payment-postgres and Pages41449254015 independently checked success.

Actual Growth ledger at 06:39 MST: 11 staged, 7 historic submissions, 0 replies, samples, paid orders, gross recorded receipts and open Growth exceptions. 1 active customer request needs review, 0 confirmed. These are readings, not launch approval.

### New code — BRANCH ONLY, NOT LIVE
Draft PR28 https://github.com/bmcgarybot/bmc-luminary-site/pull/28
Remote head 384fd3e6c9deccabd9ee50c3a2dea7c35185cc69; tree 7e92ad1a91e3846f18dd56582f1a9bf6b1ab7d18.
Current deployed Growth worker still uses direct send_mail for first-touch/follow-up. PR28 uses stable send_mail_once key growth-outreach:{outreach_id}:{step}. Uncertain/changed claims preserve history and enter review with a critical exception; no blind retry. Provider durable sends were already completed in PR27 and were not rebuilt.
14 helper/worker tests passed, including concurrency, business rollback, SMTP/DB crash ambiguity, changed body, separate follow-up keys and hold no-op. Existing copy4/hold4/reply3 suites plus compilation passed. Exact branch CI41455675127 validate AND payment-postgres both SUCCESS.
Do not call PR28 deployed. Do not advance master/deploy until the separate review decision; all holds persist.

Local worktree /workspace/scratch/627ca3a7afe5/bmc-launch-review, branch fix/growth-durable-review-20261102, local commit9dabfce7. Its tree matches remote PR28 exactly, though parent history differs. Other prior worktrees were untouched.

### Current official evidence, no blanket access clearance
NWS Flagstaff feed accessed today: 06:23 MST bulletin said Agua Fria warning would expire06:30; elevated flow and remaining closures persist. Oak Creek05:39 bulletin through noon; BigChino/UpperVerde05:29 through14:30. Recheck latest before any action:
https://www.weather.gov/wwamap/wwatxtget.php?cwa=fgz&wwa=all
AZ51105:41 alert lists SR89A375–397, SR73357–351, SR238, SR288271–302, SR377northbound1–13 closed. SR179 no longer appears in this revised list; that alone does not prove a route safe.
https://az511.gov/List/Alerts
No automatic storm checkout gate was implemented. Sales/fulfillment in affected areas still require manual review.

### Recovery evidence and review draft, no contact performed
Public source verification updated the EXISTING six-candidate shortlist, without restarting census:
- Copper State: direct site supplies junk@copperstatejunkremoval.com /928-224-9381; ChinoValley and wider claimed territory; ordinary junk/yard-waste scope supported. Current capacity, insurance, material/disposal limits and route access unknown.
- Rocky's: direct site supports Prescott/PrescottValley/ChinoValley landscaping and phone928-445-3346; no verified public email. One-time cleanup/haul-away scope and capacity still questions.
- Licensed Handyman: direct service-area supports Dewey/Humboldt and phone928-239-3640; publishesROC349772 and insurance/license images, not fresh independent validity. No verified public email.
- Davis Fence: direct contact page supports repair/gates, Prescott and surrounding cities, DavisFence1010@gmail.com /928-708-0036; publishesROC233707. BBB associates company/LLC names. Website ZIP conflict is unresolved; current credential/insurance/capacity unknown.
- Your Own Retreat: third-party listing and old HOA contact evidence only; hold, no verified fresh direct recipient.
- R&R: do NOT attach similarly named rrfencingllc.com to the PrescottValleyROC303844 record without identity proof. Hold.

Source/evidence record and proposed messages are in RECOVERY_CANDIDATE_REVIEW_2026-11-02.json on vps-relay. All remain uncontacted research candidates; no accepting/qualified provider, confirmed job or safe route is claimed. Dedicated fence key/intake/matching gap remains. No unrelated service receives pressure-washing checkout/copy. Recovery Growth checkout support is not implemented. Provider pilot remains free.

Review HTML BMC_Launch_Review_2026-11-02.html contains recipient/service/city-specific proposed HTML/plaintext for four priorities; direct email recipients only where actually verified. Recovery drafts use a capacity reply request; no provider signed invitation exists and no dummy button was substituted.
Footer address430SouthMontezumaStreet/Prescott86301 has historical Oct27 Gmail MIME evidence, NOT fresh production envelope/config proof. Current From/Reply-To/address and actual Gmail rendering remain unverified. Connected Gmail exposed the historical bmcquantumneuroshift account; it did not establish receipt/rendering in Brett's owner inbox. No browser fallback to Gmail, send or resend was performed.

### Actual existing signed owner journey checked without mail
Reused landing_url from b-owner-2-signed-route-20261101T232750Z (already issued owner-preview token). It opens read-only preview=1 and currently displays five Sedona records with no repeated form and no new sample/email/payment. Sedona-only reserve does NOT enable a100-pack, so no checkout appeared. Miiamo category remains flagged; these five were not independently reverified as post-storm operating prospects. This is historical TLC pressure-washing recipient evidence, NOT a recommended recovery campaign or permission to requeue one of the original seven.
Current deployed Growth copy rendered offline with that real existing owner-only token is in the review HTML. It is not a current-release Gmail capture or approval. No new owner preview has been sent.

### Carry forward
All four owner/campaign holds unchanged. No live charge, SMTP send, resend, approvalSHA, provider promotion or campaign release. Eight prior owner previews and seven original contacts retain their separate history.
Actual receipts remain $0; targets Nov13 first sale /Nov30 latest, initial300gross /8333monthly.
Next work must preserve current branch/live distinction, finish correct-service signed provider journeys and dedicated fence manual-review workflow, verify actual provider capacity/qualifications/access through authorized contact, and obtain exact Gmail/click-path approval followed by explicit release. Generic continue is not that permission. Do not reuse the historical signed pressure-washing route for a recovery service.
