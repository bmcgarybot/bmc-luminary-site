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
