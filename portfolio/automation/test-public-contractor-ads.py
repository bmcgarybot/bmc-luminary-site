import sys,unittest
from pathlib import Path
from types import SimpleNamespace
from datetime import datetime,timezone
sys.path.insert(0,str(Path(__file__).parent/'api'))
from public_contractor_ads import extract_ad,allowed_ad_url

class Tests(unittest.TestCase):
    def receipt(self,body):return SimpleNamespace(final_url='https://phoenix.craigslist.org/evl/d/test/1234567890.html',document=body,content_sha256='a'*64,fetched_at='2026-11-05T17:00:00+00:00')
    def test_phone_only_individual_without_website_or_license(self):
        r=extract_ad(self.receipt('<section id="postingbody">I do handyman repairs in Phoenix. Call me (602) 555-1234. Ask for Joe.</section>'),'Phoenix','handyman_repairs')
        self.assertEqual(r['public_phones'],['6025551234']);self.assertEqual(r['public_emails'],[])
        self.assertFalse(r['website_required']);self.assertFalse(r['accepted_provider']);self.assertFalse(r['business_identity_verified'])
    def test_navigation_contacts_do_not_become_ad_contacts(self):
        with self.assertRaisesRegex(ValueError,'contact_unavailable'):
            extract_ad(self.receipt('<nav>Call 6025551234</nav><section id="postingbody">I do handyman repairs in Phoenix. Free estimates.</section>'),'Phoenix','handyman_repairs')
    def test_request_or_wrong_territory_is_not_advertiser(self):
        for body,reason in [('Need handyman in Phoenix. Someone recommend a person? 6025551234','self_advertised'),('I do handyman repairs in Tucson. Call 6025551234','territory')]:
            with self.assertRaisesRegex(ValueError,reason):extract_ad(self.receipt('<section id="postingbody">'+body+'</section>'),'Phoenix','handyman_repairs')
    def test_login_page_and_stale_ad_not_qualified(self):
        with self.assertRaisesRegex(ValueError,'body_unavailable'):extract_ad(self.receipt('<p>Log in</p>'),'Phoenix','handyman_repairs')
        with self.assertRaisesRegex(ValueError,'stale'):extract_ad(self.receipt('<time datetime="2024-01-01T00:00:00Z"></time><article>I do handyman in Phoenix. Call 6025551234</article>'),'Phoenix','handyman_repairs',now=datetime(2026,11,5,tzinfo=timezone.utc))
    def test_no_private_or_login_fetch_paths(self):
        for url in ('https://127.0.0.1/d/a/123.html','https://facebook.com/login','https://facebook.com.evil.example/posts/123','https://user@facebook.com/posts/123'):
            self.assertFalse(allowed_ad_url(url))
        self.assertTrue(allowed_ad_url('https://www.facebook.com/someone/posts/123'))
if __name__=='__main__':unittest.main()
