# BMC read-only operator console (safe development branch)
This console is a **prototype**, not yet wired into the live VPS relay. It consumes a **sanitized snapshot JSON**; it cannot connect to the VPS, change configuration, launch email, or mutate records.

Run: `python3 portfolio/automation/operator-console.py /path/to/sanitized-snapshot.json`
Machine-readable: add `--json`.
Tests: `python3 portfolio/automation/test-operator-console.py`.

The relay/snapshot integration must be added in a separate reviewed change. Never expose VPS credentials, email addresses, raw business records, access tokens, webhooks or private keys in a snapshot; only aggregate metrics and booleans. Never place raw snapshots in a public GitHub repository.

Expected sanitized shape:
```json
{
  "observed_at": "2026-10-28T18:45:00Z",
  "deployed_sha": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
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
