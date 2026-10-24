# BMC Autonomous Operator

Updated: 2026-10-24

## What this is

The BMC autonomous operator is a bounded internal business-operations agent layered on top of the deterministic FastAPI/Postgres marketplace core.

It is intentionally not allowed to become a free-form agent that can send email, approve providers, change credential decisions, or move money without explicit BMC controls.

The deterministic system remains authoritative for:
- lead validation
- provider eligibility
- routing rules
- accept/decline state
- outreach enable/disable switches
- provider approval
- payments and refunds
- suppression/opt-out

## V1 status

Implemented in the Ops API and scheduled every 15 minutes.

Endpoint:
- `POST /api/agent-cycle` — private/admin-key only

Status:
- `GET /api/admin/agent-status` — private/admin-key only

Each cycle can:
1. inspect open `classification_needed` leads;
2. ask the optional local Ollama model to classify them;
3. auto-apply only a catalog-valid classification at or above the configured confidence threshold;
4. route the newly classified lead through the existing deterministic matcher;
5. create a `human_classification` task when AI is unavailable or below threshold;
6. turn unresolved operational exceptions into owned `resolve_exception` tasks;
7. assign the highest-priority queued coverage gaps to `research_agent` tasks;
8. record every run and its actions in `agent_runs` and `events`.

Default guardrails:
- `AGENT_ENABLED=true`
- `AGENT_MIN_CONFIDENCE=0.82`
- `AGENT_CYCLE_LIMIT=10`
- `AGENT_RESEARCH_TASK_LIMIT=5`
- `AGENT_ALLOW_EXTERNAL_ACTIONS=false`

The V1 implementation always reports `external_actions_allowed=false` and performs zero external actions even if somebody changes the environment flag.

## What V1 cannot do yet

The research queue assignment is real, but the agent does not yet have a browser/search worker capable of independently discovering and verifying new public vendors/buyers.

It also does not yet:
- browse the public web for prospects;
- enrich/verify candidate contact data from multiple sources;
- write newly discovered candidates into a staging/review table;
- sync operator actions back to the Google Sheet automatically;
- generate a daily owner digest;
- call ENVY/Bonsai automatically for difficult reasoning;
- draft or send external communications from agent decisions;
- execute paid-product fulfillment end-to-end.

Those are separate workers and integrations, not reasons to weaken the V1 safety boundary.

## Agent roadmap

### Phase 1 — bounded operator
Status: BUILT, pending CI + HP deployment verification.

Goal:
Keep the operating system moving safely without Brett manually checking every queue.

### Phase 2 — research/enrichment worker
Status: NOT BUILT.

Add a search provider/browser adapter and a staging model for evidence-backed candidates.

Required behavior:
- consume `research_agent` tasks;
- search by market + service + vendor/buyer side;
- collect public business identity, source URL, public contact channels, service/market evidence and credential evidence where relevant;
- deduplicate against existing vendors/buyers;
- store candidates as reviewable research, never directly as active/pilot providers;
- preserve source URLs/evidence;
- mark the research backlog with attempts/results;
- require human/provider confirmation for license/insurance and pilot activation.

### Phase 3 — owner digest + escalation
Status: NOT BUILT.

Add:
- daily operations digest;
- unresolved exception summary;
- coverage movement;
- revenue/orders;
- provider activation queue;
- failed/low-confidence AI work;
- escalation endpoint for ENVY/Mac/Bonsai.

The escalation worker should receive a tightly scoped task plus evidence, not unrestricted database credentials.

### Phase 4 — communications copilot
Status: BLOCKED ON SMTP/IMAP + explicit launch approval.

The agent may prepare drafts and classify replies.
Actual prospecting remains controlled by the existing outreach switches and campaign wave gates.

No automatic provider approval, credential decision, refund, charge or dispute resolution.

### Phase 5 — internal product fulfillment
Status: PARTIAL BACKEND ONLY.

Paid BMC Growth / Competitor / Expansion products already create internal tasks and can be linked to Stripe orders.
A future fulfillment worker can execute research/drafting steps and move deliverables through review.

## Deployment

The operator lives inside `ops_api`; no extra public service is exposed.

The scheduler invokes it every 15 minutes.

`runtime-doctor.sh` checks the private agent status endpoint and reports:
- whether the agent is enabled;
- mode;
- external-action lock;
- open agent tasks;
- queued and assigned research work.

The agent endpoint is not exposed by the public nginx webhook gateway.

## Safety rule

Autonomy should increase by adding narrowly-scoped tools and review states, not by giving one model unrestricted access to email, money, provider approval and the database.

The goal is an operator that can run BMC continuously while leaving consequential decisions auditable and reversible.
