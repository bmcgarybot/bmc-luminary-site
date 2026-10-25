# BMC Service Network Domain / Hosting

Updated: 2026-10-25

## Current verified problem

The permanent customer-facing domain is:

`https://bmcservicenetwork.com`

The intended automation ingress is:

`https://hooks.bmcservicenetwork.com`

Owner testing on 2026-10-25 showed:
- `www.bmcservicenetwork.com` -> `ERR_NAME_NOT_RESOLVED`;
- a public customer request could not reach automated intake and fell into the now-removed email-client fallback.

GitHub Pages logs also proved that the current automatic branch Pages build is publishing the **repository root** and its successful deployment environment is still:

`http://mycosmicsoulmap.com/bmc-luminary-site/`

That is not the intended BMC Service Network production URL.

The BMC Service Network static site itself lives under `portfolio/`.

Therefore, do **not** fix only the `www` record and call the domain launch complete.

## Correct public-site architecture

The clean target is:

- GitHub Pages publishes **`portfolio/` as the site root**;
- repository Pages custom domain is **`bmcservicenetwork.com`**;
- apex `bmcservicenetwork.com` resolves to GitHub Pages;
- `www.bmcservicenetwork.com` resolves to GitHub Pages and redirects to the canonical apex;
- `hooks.bmcservicenetwork.com` remains a separate Cloudflare Tunnel hostname for the restricted intake/webhook gateway;
- email MX/TXT/SPF/DKIM/DMARC records are preserved.

A manual-only workflow is prepared at:

`.github/workflows/bmc-service-network-pages.yml`

It uploads `./portfolio` as the Pages artifact so the Service Network homepage becomes `/`, not `/portfolio/`.

Do not run that workflow until GitHub Pages is switched from branch publishing to **GitHub Actions**.

## GitHub Pages switch

In GitHub:

1. Open `bmcgarybot/bmc-luminary-site`.
2. Open **Settings -> Pages**.
3. Under **Build and deployment / Source**, switch to **GitHub Actions**.
4. Set **Custom domain** to:
   `bmcservicenetwork.com`
5. Save.
6. After DNS is configured, enable **Enforce HTTPS** when GitHub makes the option available.
7. Run the **BMC Service Network Pages** workflow once from Actions.

After the first verified custom deployment, the workflow can be changed from manual-only to automatic deploy-on-master.

## Namecheap DNS target

Preserve all existing mail records.

For the apex, use the GitHub Pages A records:

- `A @ -> 185.199.108.153`
- `A @ -> 185.199.109.153`
- `A @ -> 185.199.110.153`
- `A @ -> 185.199.111.153`

For `www`:

- `CNAME www -> bmcgarybot.github.io`

Do not point `www` at `bmcservicenetwork.com`; GitHub specifically recommends pointing the CNAME directly at the account's `<user>.github.io` default Pages domain.

Do not add wildcard DNS.

The GitHub documentation for this setup is:
- https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site

## Hooks hostname

`hooks.bmcservicenetwork.com` is **not** the static website.

It must continue to route only to the Cloudflare Tunnel / webhook gateway.

The public gateway exposes only:
- `/api/intake`
- `/api/stripe-webhook`
- approved n8n `/webhook/*` routes

Private admin, Postgres, n8n editor, SearXNG, Ollama and direct Ops API routes stay private.

After DNS + VPS deployment:

```bash
cd ~/bmc-luminary-site/portfolio/automation
bash ./verify-public-ingress.sh
```

## Search launch

Do not submit Search Console until:
- apex domain resolves;
- `www` resolves and redirects correctly;
- HTTPS works;
- `/robots.txt` returns 200;
- `/sitemap.xml` returns 200;
- `/services/` and `/request/` return 200;
- priority market/service pages return 200;
- customer intake can reach `hooks.bmcservicenetwork.com/api/intake`.

Then:
1. Add a **Domain property** in Google Search Console for `bmcservicenetwork.com`.
2. Complete Google's DNS TXT verification.
3. Submit `https://bmcservicenetwork.com/sitemap.xml`.
4. Inspect/request indexing for the homepage, services, request page, Growth Packs, major market pages and priority service fronts.

Google indexing is not instant and is not guaranteed merely because a sitemap is submitted.

## Canonical policy

The public JS now writes canonical URLs using the non-www origin:

`https://bmcservicenetwork.com`

The sitemap also uses only that origin.

Once DNS is correct, `www` should be treated as a redirect/accessibility variant, not a second canonical site.

## What requires a VPS update

Static Pages/domain work and the rebuilt Growth Pack sample do **not** require the VPS.

The customer intake backend and current automation/research changes **do** require a VPS pull/rebuild because GitHub master is ahead of the last independently verified production deployment.

Use the safe deploy block from the authoritative handoff, then verify public ingress.

## Do not disturb email

Namecheap Private Email is part of production.

Before editing DNS:
- preserve MX;
- preserve SPF;
- preserve DKIM;
- preserve DMARC if present;
- preserve any mail verification TXT/CNAME records.

Only remove/replace records that actually conflict with the apex website or `www` website record.
