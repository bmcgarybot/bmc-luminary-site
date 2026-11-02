# Recovery service research plan — 2026-11-02

Prepared from repository evidence at `7dfb4a34fdda179dee9add53d73d4f8fa39001ab`. Priorities: landscaping, trash/junk hauling, handyman repairs, and fence repair. This is a research and intake plan, not a dispatch roster. Outreach remains held; this document does not release a hold, assert an active customer job, enable charges, or approve paid introductions. Existing operational flags and owner approval govern execution. No new external research or provider contact was performed for this plan.

## Existing service capability and gaps

Registry: `portfolio/data/services.json`. Paths below are registry routes; source pages exist. Source presence and a registry status are not proof of a working live submission or accepting provider.

| Priority | Actual service key / route | Existing scope | Gap before use |
|---|---|---|---|
| Landscaping | `landscaping` / `/portfolio/landscaping/` | Yard cleanup, trimming, regular care, overgrowth; source page describes brush and property cleanup | Confirm safe access, precise debris scope, crew/equipment and current service area; no assumed tree-hazard, grading, drainage-engineering or restoration capability |
| Trash hauling | `junk_hauling` / `/portfolio/junk-hauling/` | Junk, furniture, debris, cleanouts; source page includes household junk and light property/project debris | Confirm accepted materials, loading limits, legal disposal plan and capacity; contaminated waste, chemicals and hazardous material acceptance are unverified |
| Handyman | `handyman_repairs` / `/portfolio/handyman-repairs/` | Small repairs, drywall, doors, mounting, fixtures, punch lists | Confirm specific repair and qualifications; structural, electrical, gas, major plumbing, contaminated interiors and water-damage work are not established capabilities |
| Fence repair | **No dedicated key or route found** | Saved fence-trade records use `facility_maintenance` / `/portfolio/facility-maintenance/`; registry describes cleaning, repairs and ongoing building work | That institutional intake uses `facility_split` and is not evidence of a homeowner fence workflow. Record fence requests for manual scope review; do not invent `fence_repair`, silently relabel as handyman, or promise automated matching |

The first three entries have `intake_status=built`, `automation_status=backend_ready_not_connected`, `launch_gate=needs_live_webhook_and_coverage`, and `fulfillment_mode=provider_match`. Facility maintenance has the same connectivity/coverage gate, `seo_status=hold_noindex`, and `fulfillment_mode=facility_split`. These registry values do not establish current backend runtime health. No flood-restoration service or qualification is established by these four priorities.

## Real request taxonomy and intake

Use these as manual classification labels, not new database service keys. Existing first-three forms collect `scope`, `market`, `timing`, `contact_name`, `email`, optional `phone`, and consent. Put missing task detail in scope; do not claim these are existing structured fields.

| Service | Useful request types | Details needed before a provider sees a request |
|---|---|---|
| Landscaping | Loose yard-debris pickup; brush/overgrowth clearing; routine trimming; yard cleanup with separate haul-away option | City, approximate area, material/vegetation, photos if safely available, haul-away needed, gate width/access, slopes, timing, anything unstable or unknown |
| Junk hauling | Furniture/household pickup; garage/property cleanout; green-waste hauling; light project debris | Item list, rough load size, stairs/loading distance, heavy items, material condition, hazardous/unknown material exclusions, pickup access and disposal requirements |
| Handyman | Door/hardware repair; minor drywall patch; mounting/fixtures; small nonstructural punch list | Exact defect and affected area, photos if safe, ownership/permission, materials, access, known utilities or water exposure, desired timing; escalate unclear trade work for qualified assessment |
| Fence repair | Gate/latch repair; detached panel/picket; damaged post; fence section replacement | Fence material, approximate length/height, failed parts, boundary/ownership approval, gates/animals, access and utilities; unstable posts, retaining walls or undermined ground require qualified assessment before a repair commitment |

Only label a request a real job after the customer has actually submitted it, consented to sharing it, and confirmed its scope/contact details. Record requested timing separately from promised timing. Do not solicit residents to enter an unsafe area or photograph hazards. Do not dispatch while access or suitability is unresolved; this service network is not emergency response.

## Provider qualification and capacity record

For each candidate, verify the business identity and direct contact first. Record the service actually offered, precise cities/radius, job types accepted and excluded, current qualifications appropriate to the work, insurance evidence, crew/equipment, loading/disposal capability where relevant, minimum job/travel charges, quote process, and current next assessment/work slots. Ask whether contact details may be retained and whether the provider wants to receive scoped requests. Date and source every answer. A directory's license number is a lead for checking credentials, not a current verification result.

Service-specific questions:

- Landscaping: cleanup versus recurring care; brush and green waste limits; haul-away included; tree-height/equipment limits; ground/access constraints.
- Hauling: accepted and prohibited waste, trailer/truck capacity, lifting/loading limits, disposal destination/fees and any material restrictions.
- Handyman: precise small-repair scope, exclusions requiring a licensed trade, materials procurement, visit minimum and assessment availability.
- Fence repair: wood/vinyl/chain-link/metal capabilities, post versus panel versus gate work, temporary stabilization capability if qualified, utility/permit and boundary review, lead time for materials.

Keep statuses separate: `research candidate` → identity/contact checked → scope/credentials checked → capacity confirmed with date → interested in scoped requests. These are proposed manual workflow labels. None is automatically an approved/available provider. Customer suitability, safe access, consent, owner release and any existing operational approvals remain separate gates. No fee or introduction charge is proposed here.

## Small existing-evidence shortlist

Six entries only; selected for coverage of the four priorities and nearby source markets, not quality ranking. All are **research candidates, uncontacted, availability unknown**. No candidate has been promoted to provider. The two landscaping and two fence census files contain 31 + 46 + 6 + 10 = **93 raw records**; that is not a deduplicated or verified provider count. One hauling record and one direct-site handyman record below supplement those files. Do not infer statewide coverage from this local subset.

| Candidate | Recorded city / service | Saved source and observation | Evidence limits |
|---|---|---|---|
| Rocky's Landscaping | Prescott / `landscaping` | [Homversa Prescott landscaping](https://homversa.com/az/prescott/landscaping); file A; researched 2026-10-26 17:55 -07:00 | Third-party registry-derived listing; ROC 083488; source claims credential date 2026-09-21. Saved phone/email null. No present verification |
| Your Own Retreat Inc. | Prescott Valley / `landscaping` | [Homversa Prescott Valley landscaping](https://homversa.com/az/prescott-valley/landscaping); file B; researched 2026-10-26 17:55 -07:00 | Third-party listing; ROC 149864; source claims credential date 2026-09-21. Saved phone/email null. No present verification |
| Copper State Junk Removal & Hauling | Chino Valley / `junk_hauling` | [Chino Valley Chamber category listing](https://business.chinovalley.org/list/ql/business-professional-services-5); file C; generated 2026-10-26 23:52Z | Discovery listing, not direct business site; saved phone (928) 224-9381, no email. Materials, range, license needs and capacity unknown |
| Licensed Handyman, Inc. | Dewey-Humboldt / `handyman_repairs` | [Saved direct service-area URL](https://www.licensedhandyman.biz/service-area); file D; generated 2026-10-26 21:14Z | Artifact says direct page explicitly lists Dewey and Humboldt; saved phone (928) 239-3640, no email. Name does not establish current licensing or repair capability |
| Davis Fence LLC | Prescott / trade `fence-contractors`, stored key `facility_maintenance` | [Homversa Prescott fence contractors](https://homversa.com/az/prescott/fence-contractors); file E; researched 2026-10-26 17:55 -07:00 | Third-party listing; ROC 233707; source claims credential date 2026-09-21. Saved phone/email null. Residential repair and current credentials unverified |
| R & R Fencing | Prescott Valley / trade `fence-contractors`, stored key `facility_maintenance` | [Homversa Prescott Valley fence contractors](https://homversa.com/az/prescott-valley/fence-contractors); file F; researched 2026-10-26 17:55 -07:00 | Third-party listing; ROC 303844; source claims credential date 2026-09-21. Saved phone/email null. Residential repair and current credentials unverified |

Artifact paths, all relative to repository root:

- A: `portfolio/data/assistant-research-bootstrap-2026-10-26-prescott-licensed-full-landscaping.json`
- B: `portfolio/data/assistant-research-bootstrap-2026-10-26-prescott-valley-licensed-full-landscaping.json`
- C: `portfolio/data/assistant-research-bootstrap-2026-10-26-chino-valley-batch-02.json` (61 raw records across categories; only the identified hauling record used)
- D: `portfolio/data/assistant-research-bootstrap-2026-10-26-rural-batch-01.json` (49 raw records across categories; only the identified handyman record used)
- E: `portfolio/data/assistant-research-bootstrap-2026-10-26-prescott-licensed-full-fence-contractors.json`
- F: `portfolio/data/assistant-research-bootstrap-2026-10-26-prescott-valley-licensed-full-fence-contractors.json`

Generated/researched timestamps are artifact observations, not fresh visits today. Source `verified_date` is an inherited claim, not BMC verification. Saved links were not re-opened for this bounded task.

## Service-specific draft copy — held, not sent

Use only after identity/contact checks and explicit operational release. Replace bracketed city with a confirmed service area; do not mass-send placeholders. These are capacity questions, not an offer of active jobs. Do not mention a customer, provider availability or a promised start date without evidence.

### Landscaping provider

Hi [business name], Do you handle one-time yard cleanup, brush removal or green-waste haul-away in [city]? BMC Service Network is building a local referral network. You can review a customer's request before deciding whether to take it. Joining is free. What kinds of cleanup jobs are worth the trip for your crew?

Brett
BMC Service Network

### Hauling provider

Hi [business name], Are you taking household junk, yard debris or property cleanout pickups in [city]? BMC Service Network is building a local referral network. You see the items and location before accepting a request. Joining is free. What kinds of loads do you want, and which materials do you leave behind?

Brett
BMC Service Network

### Handyman provider

Hi [business name], Do you take small door, drywall, fixture or punch-list repairs in [city]? BMC Service Network is building a local referral network. You see the repair details before accepting a request, and joining is free. Which small jobs are a good fit for you?

Brett
BMC Service Network

### Fence provider

Hi [business name], Do you repair existing fences and gates in [city], including posts, panels or latches? BMC Service Network is checking which local businesses handle this work. Do you take small repairs, and which fence materials do you work with?

Brett
BMC Service Network

### Customer help wording

- Landscaping: “Need yard cleanup, brush removal or green-waste haul-away? Tell us the city, approximate area, material and access. We can review the request and check whether a suitable provider is interested. Availability and timing are not confirmed.”
- Hauling: “Need furniture, household junk or yard debris removed? List the items, rough load size, access and any unknown or hazardous materials. We can review the scope and check provider interest. Pickup and accepted materials must be confirmed.”
- Handyman: “Need a door, drywall, fixture or small repair handled? Describe the exact problem, city and desired timing. We can check whether the work fits an interested provider. Specialist trade work and availability require separate confirmation.”
- Fence repair: “Need an existing fence or gate repaired? Tell us the city, fence material, damaged parts and approximate size. This needs manual review; we do not currently have a dedicated fence-repair matching route or confirmed provider availability.”

These drafts do not replace live-site copy, create a product, promise restoration, or release outreach. Immediate useful next work is qualification and manual scope preparation under the existing hold; any live template/backend change belongs to its separately authorized implementation owner.
