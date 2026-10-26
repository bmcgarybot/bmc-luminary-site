# BMC VPS Relay

This directory is the mailbox for the production VPS relay.

- `requests/`: immutable JSON requests created by the operator/chat.
- `results/`: immutable JSON results uploaded by the VPS.
- Branch: `vps-relay` only.

The production agent executes only an explicit allowlist of BMC maintenance/research actions.
It does not accept arbitrary shell commands and it never enables outreach, sends prospecting,
approves providers, changes payment credentials, or edits secrets.
