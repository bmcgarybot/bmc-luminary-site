# BMC Ops API

Small deterministic transaction API for the BMC managed-service portfolio.

It exists so basic marketplace operations do not depend on an LLM.

Endpoints:
- GET /health
- POST /api/intake
- POST /api/process-expired (admin key required)

Form types:
- normal service forms -> lead
- universal_request -> lead, possibly needs classification
- vendor_partner -> vendor application + review exception
- vendor_response -> secure accept/decline using response token

The API writes Postgres first. n8n remains the orchestration layer for sheet mirroring, scheduled jobs, outreach, AI classification, reporting, and richer integrations.
