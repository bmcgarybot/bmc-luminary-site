# BMC read-only operator console (safe development branch)
This console is a **prototype**. Snapshot collection is implemented on this safety branch but is not deployed to the VPS. It consumes sanitized JSON or a successful `operator_snapshot` relay envelope; it cannot change configuration, launch email, or mutate records.

Run: `python3 portfolio/automation/operator-console.py /path/to/sanitized-snapshot.json`
Machine-readable: add `--json`.
Tests: `python3 portfolio/automation/test-operator-console.py`.

The relay/snapshot integration below must pass CI and production verification before activation. Never expose VPS credentials, email addresses, raw business records, access tokens, webhooks or private keys in a snapshot; only aggregate metrics and booleans. Never place raw snapshots in a public GitHub repository.

Expected sanitized shape:
```json
{
  "observed_at": "2026-10-28T18:45:00Z",
  "deployed_sha": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
  "owner_launch_hold_active": true,
  "runtime_healthy": true,
  "scheduler_healthy": true,
  "api_healthy": true,
  "outreach_switches": {
    "OUTREACH_ENABLED": false,
    "BUYER_OUTREACH_ENABLED": false,
    "GROWTH_OUTREACH_ENABLED": false
  },
  "growth": {
    "paid_orders": 0,
    "revenue_cents": 0,
    "samples_requested": 0,
    "samples_delivered": 0,
    "replies": 0,
    "open_growth_exceptions": 0,
    "staged_active": 0
  }
}
```

The values above are synthetic examples **not live production data**. Missing flags, stale evidence (>90 minutes), missing metrics and unhealthy runtime produce REVIEW rather than green. A green operator status never means permission to send customer outreach. The actual deployment commit still requires a separate exact-SHA owner Gmail review and explicit approval.

Before a live dashboard: integrate the existing read-only GitHub/VPS relay with an authenticated private view; prove scheduler health, backup/restore, fulfillment idempotency, no duplicate forms, daily queue limits, saturation controls, payment-to-order correlation and alerts; test a complete synthetic purchase without live checkout or external mail. Keep all outbound disabled.

Do not merge PR #5, turn on outbound, or deploy on behalf of this console prototype.


## Live relay implementation (in safety branch, not deployed)
A new `operator_snapshot` **read-only** action is registered in `vps-gitops-relay.py`. The VPS obtains its current deployed SHA, the exact three outbound switches, running service names, local API health, and a whitelisted collection of Growth metrics from its private API. It returns only a sanitized aggregate JSON object in `stdout` of an ordinary relay result. The console now accepts that result envelope, verifies that the action succeeded with external actions disabled, and checks the reported deployed SHA agrees with the relay envelope. Tests run in BMC Portfolio CI.

Example request for the existing authenticated/private relay workflow (not a public endpoint):
```json
{
  "version":1,
  "request_id":"operator-snapshot-20261028-001",
  "action":"operator_snapshot",
  "args":{},
  "allow_external_actions":false,
  "created_at":"2026-10-28T19:00:00Z"
}
```
Actual requests require current timestamps and the existing relay request transport. Never publish raw status results that might contain identifying information. The branch has **not yet been deployed** to the VPS, so the live relay does not yet support this new action. For now, the owner console can read any genuine successful `operator_snapshot` result file exported from the private relay; no new terminal commands for the owner are required.

Before owner-facing activation, review the existing `growth-status` private API schema: missing fields are deliberately shown as unavailable, not zero. Build authenticated private UI only after the schema mapping and incident response gates are verified.

## Local dashboard rendering
The same read-only console can produce a static, script-free HTML dashboard using `python3 portfolio/automation/operator-console.py <sanitized-result.json> --html /private/path/bmc-status.html`. The HTML escapes all displayed data and never embeds private raw records. This is local output, not a public site or live auto-refreshing dashboard. Only use private storage. Missing/unverified data stays visibly unknown.


## Private continuously refreshed view (release candidate; not installed)

`operator-monitor.py` now connects local collection to the console. Every 60 seconds it invokes only the constant read-only `operator_snapshot` executor locally. It never polls the relay mailbox, uploads results, sends mail, or runs a launch action. Only whitelisted assessment data remains in memory.

- HTTP binds exclusively to `127.0.0.1:8765`; only local Host headers are accepted. There is no public tunnel/gateway route.
- GET `/` renders the escaped dashboard; GET `/status.json` returns sanitized assessment data. Responses disable caching; the browser refreshes every 30 seconds.
- Startup, collection failures, unhealthy services and data older than five minutes show REVIEW. After a collection failure, prior metrics remain visibly last-known rather than silently becoming zero. Recovery clears the collection alert only after successful collection.
- POST/DELETE and all other routes have no operational handlers. No configuration controls or customer data are exposed.
- `--once` produces terminal JSON and exits nonzero on review.

The access boundary is an authenticated SSH port forward, not an unauthenticated public website. An operator with existing VPS SSH access can forward local port 8765 to VPS loopback port 8765 and open `http://127.0.0.1:8765`. Do not create a public Cloudflare route for this service.

`install-operator-monitor.sh` prepares an unprivileged systemd service with automatic process restart, read-only filesystem protection, a 256 MB memory limit and 25% CPU quota. Installation has NOT been performed; those limits are intended bounds, not measured production capacity. Do not install before release approval.

Tests: `python3 portfolio/automation/test-operator-monitor.py`. Seven tests cover startup, healthy data, secret filtering, failed collection and recovery, stale collection, unhealthy scheduler, the constant local read-only action, and actual loopback HTTP access/method/header/route behavior. No real Docker, production API, email, payments or GitHub writes occur in these tests.

Still unverified in production: systemd restart behavior, SSH access, collection latency/resource use under load, backup/restore freshness and payment reconciliation. Synthetic fulfillment CI is distinct from a live Stripe payment.


## Effective runtime safety
The owner hold is enforced inside all four campaign workers (provider, buyer, Growth outreach and Growth nurture), not just the relay launch action. Missing or malformed hold configuration blocks campaigns. Growth status reports effective running API flags; the snapshot requires agreement with local configuration before confirming a switch. An old API or a container with configuration drift requires REVIEW. This does not block transactional requested receipts/fulfillment or grant permission to send previews.


## Graphical operations dashboard
The private monitor now renders an ivory/forest-green operations workspace with revenue/order/sample/reply cards, revenue history, an SMTP-to-order funnel, host resource gauges and CPU history, container CPU/memory readings, attention checks and owner-hold/campaign state. It remains script-free, read-only and bound to loopback. Browser refresh is 30 seconds; collection remains 60 seconds.

Range filters on the overview accept only 1, 6, 24 or 168 hours. /status.json remains current sanitized metrics only (no history payload), and rejects arbitrary query parameters. Missing values show an em dash/awaiting measurement. Zero is plotted only when actually measured. SMTP submissions are explicitly not called verified deliveries.

Persistent history requires rerunning bash ./install-operator-monitor.sh in the normal VPS terminal. The system unit uses StateDirectory=bmc-operator-monitor with mode 0700 and /var/lib/bmc-operator-monitor/history.sqlite3 mode 0600. It retains only whitelisted aggregate counts/resource measurements for 14 days. No credentials, messages, names, email addresses, customer records or launch capabilities are stored. Without --history the monitor labels history as session-only. A restarted monitor never restores old healthy status from history; it waits for a fresh collection.

The installer restarts the service to load the new renderer and private history unit configuration. The existing SSH forward still works. Host CPU needs two collections for its first percentage; no older values are invented. Chart downsampling preserves window endpoints and outage gaps. Resources are measured from /proc, disk statistics and bounded read-only Docker stats. Container CPU uses Docker's per-core scale; 100% means one core.
