# BMC Search / AI Discovery Checklist

## Google
- Add property in Google Search Console.
- Submit /sitemap.xml.
- Verify index coverage and inspect priority URLs.
- Keep each city/service page materially different and useful; do not mass-produce thin doorway pages.
- Add Organization structured data for BMC and service-specific schema only where it accurately represents the page.
- Build real citations/backlinks through local associations, vendor partners, chambers, directories, local publications, sponsorships, and useful resources.
- Do not create fake Google Business Profiles for virtual lead-gen fronts. Use GBP only for a real eligible business/location.


## First indexing launch
Use the normal Search Console path for BMC's service pages. Google's Indexing API is not a general-purpose submission API for ordinary local-service pages.

1. In Google Search Console, add a **Domain** property for `bmcservicenetwork.com`.
2. Verify ownership with the TXT record in **Cloudflare DNS**, which is authoritative for the domain.
3. Submit `https://bmcservicenetwork.com/sitemap.xml`.
4. Confirm the sitemap is accepted, then use URL Inspection on a small launch set rather than manually requesting every URL at once.
5. Request indexing only after the inspected URL reports that Google can fetch it and indexing is allowed.
6. Recheck coverage after Google has had time to crawl; do not create duplicate/thin pages merely to force faster discovery.

Initial URL Inspection set:
- `https://bmcservicenetwork.com/`
- `https://bmcservicenetwork.com/services/`
- `https://bmcservicenetwork.com/providers/`
- `https://bmcservicenetwork.com/markets/prescott/`
- `https://bmcservicenetwork.com/markets/phoenix/`
- `https://bmcservicenetwork.com/facility-maintenance/`
- `https://bmcservicenetwork.com/restaurant-equipment-repair/`
- `https://bmcservicenetwork.com/auto-repair-shop/`
- `https://bmcservicenetwork.com/growth-packs/`
- `https://bmcservicenetwork.com/growth-packs/pressure-washing/` — first live Growth Intelligence niche
- `https://bmcservicenetwork.com/growth-packs/commercial-cleaning/` — staged fallback/challenger niche
- `https://bmcservicenetwork.com/market-expansion-pack/`

The sitemap remains the discovery mechanism for the rest of the public pages. Keep private provider workflows, payment confirmations, synthetic tests, and other noindex pages out of it.

## Bing / Microsoft ecosystem
- Add domain to Bing Webmaster Tools.
- Submit sitemap.
- Enable IndexNow so new and changed URLs are discovered quickly.

## ChatGPT search
- Allow OAI-SearchBot in robots.txt.
- Do not block OpenAI's published crawler IPs at CDN/WAF level.
- GPTBot is a separate training-control crawler; search eligibility does not require opting into GPTBot.
- Publish clear public facts: what the service does, exact markets served, how requests work, who operates the platform, and contact information.
- Earn independent mentions/citations; inclusion and ranking are not guaranteed.

## Gemini / AI Overviews
There is no separate guaranteed Gemini-ranking switch. Build for normal Google crawling/indexing, strong entity clarity, useful content, and trustworthy external references.

## Local SEO content requirements
Every market/service page should eventually include:
- actual service scope
- market-specific conditions and common jobs
- neighborhoods/coverage only when truly served
- FAQs based on real customer/vendor questions
- transparent explanation of matching/referral model
- unique title/meta description
- internal links to related services and city hub
- canonical URL
- breadcrumbs
- fast/mobile layout
- visible operator/contact identity

## Measurement
Track per URL:
- indexed?
- impressions
- clicks
- queries
- leads
- lead conversion rate
- vendor acceptance
- revenue


## Growth Intelligence SEO launch rule
- The Growth hub is the canonical research-sales entry point.
- Each live niche page must have a unique title, meta description, canonical URL, service-specific structured data, one clear free-sample CTA, and plain-language qualification disclosure.
- Do not create hundreds of thin niche/city Growth pages. Open a niche page only when the qualification engine can honestly support the product.
- First live niche: commercial pressure washing / exterior cleaning.
- Search traffic is supplemental during the November revenue sprint; controlled B2B outreach is the primary acquisition channel.
- Track the Growth funnel separately: landing visits -> free-five submissions -> samples delivered -> checkout -> paid order -> fulfillment -> repeat/refresh.
