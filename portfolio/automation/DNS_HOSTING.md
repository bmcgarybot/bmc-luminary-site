# BMC Service Network Domain / Hosting

Updated: 2026-10-25

## Authoritative DNS — IMPORTANT

**Cloudflare is the authoritative DNS provider for `bmcservicenetwork.com`.**

The domain is registered at Namecheap, but its nameservers are delegated to Cloudflare:
- `iris.ns.cloudflare.com`
- `will.ns.cloudflare.com`

Therefore:

- **Do not manage BMC website DNS records in Namecheap Advanced DNS.**
- **Do not change the Namecheap nameservers back to BasicDNS.**
- Namecheap remains the registrar and Private Email vendor.
- All active DNS records for the BMC domain must be reviewed/changed in **Cloudflare -> DNS -> Records**.
- Preserve the existing Cloudflare records that support Namecheap Private Email, the Cloudflare Tunnel, and any verification records.

This supersedes any older handoff text that says to add the GitHub Pages A/CNAME records in Namecheap.

## Existing infrastructure already configured

Before the current Pages/custom-domain cleanup, the following were already configured and verified:

- `contact@bmcservicenetwork.com` via Namecheap Private Email;
- SMTP + IMAP verified;
- SPF/DKIM configured;
- Cloudflare Tunnel configured on the VPS;
- `hooks.bmcservicenetwork.com` published through Cloudflare Tunnel to the restricted webhook gateway;
- public ingress verifier confirmed intended webhook routes were reachable while private admin routes remained blocked.

Do not rebuild these from scratch unless a live verification proves they are broken.

## Public website target

Canonical customer-facing site:
- `https://bmcservicenetwork.com`

Secondary hostname:
- `https://www.bmcservicenetwork.com`
- should resolve and redirect to the canonical apex through GitHub Pages behavior.

Static site source:
- repo: `bmcgarybot/bmc-luminary-site`
- published artifact: `portfolio/`
- Pages workflow: `.github/workflows/bmc-service-network-pages.yml`
- Pages source: GitHub Actions
- GitHub custom domain: `bmcservicenetwork.com`

The BMC Pages workflow has already been run successfully with `portfolio/` as the site root.

## Cloudflare DNS work still needed for GitHub Pages

Before changing records, inspect the **existing Cloudflare DNS record list** for `bmcservicenetwork.com`.

The intended GitHub Pages DNS target is:

Apex `@` A records:
- `185.199.108.153`
- `185.199.109.153`
- `185.199.110.153`
- `185.199.111.153`

`www`:
- CNAME -> `bmcgarybot.github.io`

For GitHub Pages validation/HTTPS troubleshooting, these website records should generally be **DNS only** rather than Cloudflare-proxied unless a deliberate Cloudflare proxy design is chosen and tested.

Do not touch:
- `hooks` / Cloudflare Tunnel records;
- MX records;
- SPF;
- DKIM;
- DMARC;
- Private Email verification records;
- unrelated TXT/CNAME records.

Do not add wildcard DNS.

GitHub reference:
- https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site

## Hooks hostname

`hooks.bmcservicenetwork.com` is not the static website.

It must continue to route only through the existing Cloudflare Tunnel to:
- `http://webhook_proxy:8080`

The public gateway exposes only approved intake/webhook routes such as:
- `/api/intake`
- `/api/stripe-webhook`
- approved n8n `/webhook/*`

Private admin, Postgres, n8n editor, SearXNG, Ollama and direct Ops API routes stay private.

Verify from the VPS with:

```bash
cd ~/bmc-luminary-site/portfolio/automation
bash ./verify-public-ingress.sh
```

## Search launch

Do not submit Search Console until:
- apex domain resolves to the BMC Pages site;
- `www` resolves and redirects correctly;
- HTTPS works;
- `/robots.txt` returns 200;
- `/sitemap.xml` returns 200;
- `/services/` and `/request/` return 200;
- priority service/market pages return 200;
- customer intake reaches the existing hooks gateway successfully.

Then:
1. Add a Google Search Console **Domain property** for `bmcservicenetwork.com`.
2. Add Google's TXT verification record in **Cloudflare DNS**, not Namecheap DNS.
3. Submit `https://bmcservicenetwork.com/sitemap.xml`.
4. Request indexing for priority pages.

## Canonical policy

Canonical origin:
- `https://bmcservicenetwork.com`

The sitemap and public canonical tags use the non-www origin.

## Registrar / email warning

Namecheap is still important:
- domain registration;
- Private Email subscription.

But with Cloudflare nameservers active, DNS changes happen in Cloudflare.

Do not change nameservers merely to make Namecheap Advanced DNS editable.
