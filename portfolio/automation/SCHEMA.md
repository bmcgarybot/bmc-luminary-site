# BMC Automation Contract

## Lead record
Every public form must normalize to a lead record with these core keys:

- lead_id
- submitted_at
- form_type
- market
- service_type
- service_key
- customer_name
- business_name (optional)
- email (optional by niche)
- phone (optional by niche)
- preferred_contact
- scope
- timing / urgency
- source_page
- consent
- lead_score
- status
- assigned_vendor_id
- exception_reason

Recommended statuses:
`received -> qualified -> routed -> accepted -> contacted -> estimate -> won/lost`

## Vendor record
- vendor_id
- business_name
- contact_name
- email
- phone
- services[]
- markets[]
- radius / territory_notes
- minimum_job
- capacity
- after_hours
- license_notes
- insurance_notes
- status
- pricing_model
- lead_price
- quality_score
- last_routed_at

## Safety / operational rule
AI may help classify free text, but the final routing and billing rules should be deterministic. No automatic payment, refund, licensing decision, or dispute resolution until that workflow has been manually proven.

## Required external wiring
To become actually autonomous:
1. publish the n8n webhook over HTTPS,
2. configure a persistent record store (Sheet/Postgres/SQLite/API),
3. configure outbound email,
4. populate verified vendor records,
5. replace `REPLACE_ME` webhook meta values in site pages,
6. add an exception notification channel.
