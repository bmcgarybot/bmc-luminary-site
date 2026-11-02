# Question research → useful search and content

The corpus records observed query suggestions, not confirmed customer requests, verified local search volumes, or factual answers. Country-level United States research must not be relabeled Phoenix, Arizona, Las Vegas or Henderson demand.

## Implementation in this branch

- `collect-question-research.py`: uses KeywordTool's documented no-auth guest MCP. Saves each response and original parameters; checkpoints a manifest; stops on errors or limits; avoids repeating collected seeds. No proxy/account rotation or paid upgrade.
- `service-seeds.json`: 67 service profiles, 74 distinct seeds, shared seeds reused and multi-service categories split into main needs.
- `build-question-corpus.py`: deduplicates observed suggestions while preserving service mappings and every source observation. The JSONL corpus is suitable for research/retrieval review; it is not an answer knowledge base or a weight-training dataset.
- `service-question-map.json`: explicit collected/pending service coverage and geographic scope. Unreviewed phrases never silently become production routing rules.
- `FINDQUESTIONS_SEARCH_LIST.md`: 101 concrete manual prompts and the owner's chosen email. Also saved as a directly accessible user file because a scratch download failed in the chat interface.

Run the builder after each collection batch. Keep provider metric fields absent when unavailable; a displayed 0–10 range stays a range, not zero or a precise count. Record pagination/first-page limits. A provider's keyword volume is an estimate, not a count of BMC's customers.

## Page and site-search design

1. Cluster by audience and distinct intent: provider business growth; customer pricing/quote comparison; service suitability; recurring maintenance; commercial purchasing. A provider searching how to get customers needs a different route from a homeowner asking to hire someone.
2. Give each useful distinct topic a canonical page. Rephrased questions become aliases or FAQ headings on that page. Do not create a separate thin page for every word order, neighborhood or keyword.
3. A location page needs actual local value: service area, coverage/availability, local constraints supported by sources, suitable next steps and verified provider information where available. Do not claim a provider exists just because its city page exists.
4. Keep Arizona and Nevada indexes, offers and prompts separate. Nevada staffing/personal-care research must not route into enabled hiring, worker placement, payments or customer job distribution.
5. Search improvement: reviewed aliases → canonical intent and service key → honest availability and next step. Keep uncertain or mixed-service searches in a clarification path. Existing rule/local-LLM fallback remains a fallback, not authority to invent fulfillment.
6. Retrieval improvement: publish reviewed answers with source URL, retrieval date, geography, canonical page and content revision. Feed those answers into retrieval; keep raw query suggestions in the research collection. Fine-tuning model weights is a separate decision requiring reviewed examples and evaluation.
7. Build evaluation queries for paraphrases, multi-service requests, missing locality, provider-vs-customer intent, wrong-state requests, and regulated Nevada categories. Measure correct route and false-positive rate before replacing current search rules.

## First two content briefs from observed pressure-washing questions

### Customer brief: What to include in a pressure-washing quote request

Observed question cluster includes `how much does pressure washing cost`, `what are pressure washing prices`, and `how much should pressure washing a driveway cost` (KeywordTool US English; exact raw response retained).

Answer first: a useful quote needs the surface, approximate size, condition, access and desired scope. Ask the provider for a written scope and total price rather than presenting an invented statewide rate.

Draft structure:
- Name the surface and what needs cleaning. Provide approximate dimensions and clear photos.
- Identify property type, town, access restrictions and preferred dates. Mention business hours and whether customer/public access needs to remain open.
- Ask what is included, any exclusions, setup/minimum charges, and whether spot treatment or repeat visits are a separate item.
- Ask the provider to explain its proposed method and suitability for the actual material; do not prescribe a pressure setting from an unsourced generic answer.
- Compare like-for-like scopes. A lower quoted total can reflect a smaller scope.
- Next step: submit a request for review; describe provider availability truthfully. No guaranteed quote, job acceptance or emergency response.

Editorial status: draft brief; requires service-specific primary sourcing and actual coverage checks before publication. No fabricated Arizona price table.

### Business-owner brief: Prospect lists versus customers requesting a job

Observed business-facing question `are pressure washing businesses profitable` appears in KeywordTool's pressure-washing result. Use it as a research clue, not a claim that our product makes a business profitable.

Answer first: a prospect list identifies possible customers; a customer introduction starts with an actual confirmed request. Explain what the Growth Pack delivers, how to judge the free-five sample, and why a fit score does not prove buying intent. Separately explain the proposed customer-job pilot and its current disabled payment status. Never title a researched list “live jobs”.

Next step: the existing free-five researched commercial sample, subject to exact-market inventory gates. Explain the $499/100 total prospect offer only when the market has the required reserve.

## Measurement

Track Search Console indexed/canonical pages, impressions, clicks and query/page combinations when connected; site search query → route → request conversion; content → qualified request → accepted introduction → collected payment; and outreach → reply → sample → paid Growth delivery. Do not treat being indexed, collecting suggestions or generating pages as revenue. $300 November receipts and $8,333/month remain targets.

## Primary guidance

- Helpful content: https://developers.google.com/search/docs/fundamentals/creating-helpful-content
- Scaled-content and doorway policies: https://developers.google.com/search/docs/essentials/spam-policies
- Trends interpretation: https://support.google.com/trends/answer/4365533?hl=en
- KeywordTool guest documentation: https://keywordtool.io/mcp/guest
- FindQuestions' AI-topic disclaimer: https://findquestions.com/
