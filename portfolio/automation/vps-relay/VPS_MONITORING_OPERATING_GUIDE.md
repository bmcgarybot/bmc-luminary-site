# BMC VPS monitoring and recovery operating guide

Implementation: PR47. This guide describes the reviewed design; verify deployment/timer/alert evidence in LATEST_LAUNCH_HANDOFF.md before treating it as installed.

## What runs without this chat

The host watchdog runs every five minutes under a persistent timer. It is independent of the API container, database and local language model. The private operator monitor separately retains aggregate/resource history. The application retains durable business/mail evidence in PostgreSQL.

The local operator agent continues its bounded classification and internal task/research work. It does not gain authority to launch campaigns or make financial decisions.

## What is measured

- Every API SMTP attempt: a durable observation is written before transmission. Outcomes distinguish SMTP acceptance from unresolved/uncertain transmission. A missing audit prevents customer SMTP.
- New inbound mailbox messages: a UID cursor tracks new mail regardless of read/unread flags. First activation records the current position and does not replay historic mail. Changed mailbox identity creates a review item.
- Replies, opt-outs, delivery-failure messages, existing outreach statuses and durable delivery claims.
- Sample requests, recorded sample delivery/conversion, inventory exceptions and owner-review gates.
- Core orders, paid/complete amounts by currency, fulfillment states and refund-related records. These are operational database observations, not bank settlement, profit or independent Stripe reconciliation.
- API route totals, failures, mean duration and successful worker timestamps. Only framework route templates are retained, never raw query tokens or bodies.
- Active provider database records and research prospects, with no claim that a listing proves acceptance, current crew capacity or market coverage.
- Open/high-priority/aged exceptions, live service/container checks, disk space and backup freshness.
- An actual signed owner-only Phoenix sample journey rotates through the nine reviewed IDs. It verifies five saved prospects, PDF response and owner-bound checkout. It never emails the sample or pays.

Private metrics endpoint: /api/admin/business-metrics, local admin authentication required. The public gateway does not expose it.

## What it can repair

Only explicitly known application services may be restarted. One service per cycle, a 15-minute cooldown, maximum two attempts per service per hour. The attempt is saved before touching the service. Recovery checks health afterward.

Unknown campaign configuration or API/configuration drift blocks automatic repairs. Database or low-disk failures also require review. The watchdog never edits code, drops/restores the production database, changes credentials, approves providers, activates payment links, charges/refunds money, releases owner hold, broadens recipient scope or resends uncertain customer mail.

A worker heartbeat remains failed until a real successful worker cycle, even if its container restarts.

## How it asks for help

Operational email goes only to the owner-designated private recipient in VPS configuration. No private address is committed here. Configuration is encrypted for a private key held only by the VPS.

Alerts cover failed checks, unresolved mail, stale/failed workers, overdue paid research fulfillment and high-priority business exceptions. They include observed problems and attempted repairs. Stable issue identities prevent changing counts from causing mail every five minutes. Failed submissions remain pending with a 15-minute retry cooldown. Unchanged unresolved issues receive a daily reminder after an accepted alert; recovery receives a notice.

Operational SMTP attempts are separately recorded in a private host audit, independent of the application database. The one test-alert action is claimed before transmission and cannot automatically duplicate an uncertain prior attempt.

SMTP acceptance is NOT inbox delivery. Verify the first alert in the designated mailbox. Replies to operational mail are not campaign authorization.

## Important limits

No tracking pixel or claimed human-read signal is added. Inbox placement, email opens and human reads remain unknown unless separately evidenced. API requests and sample requests are not unique people or confirmed demand.

Mailbox history before the new cursor baseline is not backfilled as observed. Old evidence stays separate. Public static page views, bank settlement and every third-party failure outside this VPS are not magically observable.

A completely unavailable VPS, network or SMTP provider cannot send its own email. Independent off-host monitoring and an independent alert channel remain necessary to cover total host/mail outages. A successful local timer or SMTP test does not prove that outside layer.

## Maintenance checks

- python3 ops-watchdog.py --report: observation only, no repair/email.
- python3 ops-watchdog.py --json: sanitized observation, no repair/email.
- python3 ops-watchdog.py --status: saved configuration/last result, no recipient disclosure.
- Private host state: ~/.local/state/bmc-watchdog (restricted permissions).
- Existing owner hold and exact Phoenix cohort remain unchanged by monitoring.

Do not deliberately stop production services merely to demonstrate recovery. Failure drills run with disposable/mocked dependencies; production verification should confirm actual timer, current metrics, safe probes and authorized alert submission.
