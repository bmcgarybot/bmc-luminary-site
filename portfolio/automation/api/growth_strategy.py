"""Compile owner strategy drafts from dated reviewed facts and qualified accounts."""
from datetime import datetime,timezone,timedelta
from urllib.parse import urlsplit
import re

FOCUS={
 'medical':('medical','health','clinic'), 'dental':('dental','dentist'),
 'education':('school','education'), 'faith':('church','faith'),
 'industrial':('industrial','warehouse'), 'hospitality':('hotel','hospitality'),
 'retail':('retail','store'), 'fitness':('fitness','gym'),
 'property':('property','real estate'), 'office':('office','professional')}
def tags(text):return {k for k,words in FOCUS.items() if any(w in text.lower() for w in words)}
def checked(value,now):
    when=datetime.fromisoformat(str(value).replace('Z','+00:00'))
    if when.tzinfo is None:when=when.replace(tzinfo=timezone.utc)
    if not -timedelta(minutes=5)<=now-when<=timedelta(days=90):raise ValueError('Competitor source needs a fresh review')
    return str(value)

def build_owner_strategy(target,accounts,profiles,opener,now=None):
    now=now or datetime.now(timezone.utc)
    if target['market']!='Phoenix' or target['service_key']!='commercial_cleaning':
        raise ValueError('Three reviewed local competitor observations are required for this market and service')
    if len(accounts)!=100 or len({(r['business_name'].casefold(),r['market']) for r in accounts})!=100:
        raise ValueError('A complete qualified 100-pack is required for this owner strategy review')
    if not opener or any(r['market']!='Phoenix' for r in accounts):raise ValueError('Recipient scope requires review')
    focus=tags(opener)
    broad=any(x in opener.lower() for x in ('commercial janitorial','commercial cleaning'))
    baseline={'office'} if broad or not focus else set()
    starting_focus=focus|baseline
    ranked=sorted(enumerate(accounts),key=lambda pair:(-(2*len(tags(pair[1].get('category',''))&focus)+len(tags(pair[1].get('category',''))&baseline)),pair[0]))
    chosen=[r for _,r in ranked if tags(r.get('category',''))&starting_focus][:3]
    if len(chosen)<3:raise ValueError('The pack needs three accounts matching the researched focus')
    competitors=[];seen=set()
    candidates=sorted(profiles.values(),key=lambda p:(-len(tags(p.get('opener',''))&starting_focus),p['business']))
    for p in candidates:
        if p['business'].casefold()==target['business_name'].casefold():continue
        source=p['source_url'];domain=urlsplit(source).hostname
        if urlsplit(source).scheme!='https' or not domain or domain in seen:continue
        date=checked(p['checked_at'],now);seen.add(domain)
        observation=re.sub(r'^Your\b','Their',p['opener'])
        competitors.append({'name':p['business'],'source_url':source,'checked_at':date,'observed_offer':observation,
          'implication':'Make your own published service scope concrete for '+chosen[len(competitors)%len(chosen)]['business_name']+'. Ask what the facility requires from an outside cleaning vendor before proposing a walkthrough or quote.'})
        if len(competitors)==3:break
    if len(competitors)<3:raise ValueError('Three distinct reviewed competitors are required')
    business=target['business_name'];first=chosen[0]
    priorities='\n\n'.join(f"{i}. {r['business_name']} — {r.get('category','Commercial account')}\nEvidence: "+((r.get('presentation') or {}).get('fit_points') or ['Published Phoenix business information.'])[0]+f"\nSource: {r['website_url']}\nFirst question: Who coordinates outside cleaning vendors, and what is the process for considering a new provider?" for i,r in enumerate(chosen,1))
    if baseline-focus:
        priorities='Accounts matching your published facility focus lead this shortlist. General-office selections are secondary segment hypotheses for your broad commercial janitorial work; confirm that scope before using them.\n\n'+priorities
    strategy={'competitors':competitors,
      'positioning':'Published business focus: '+opener+'\n\nTest a concise introduction built around the facility types you already describe, a written scope, cleaning frequency and the process for arranging a walkthrough. Confirm your current coverage, capacity and any facility requirements before using the scripts. These are positioning hypotheses for owner review.',
      'priorities':priorities,
      'first_email':f"Example for {first['business_name']}\nSubject: Cleaning-vendor contact for your Phoenix location\n\nHello {first['business_name']} team,\n\nI’m [your name] with {business}. We provide commercial cleaning in Phoenix. Who coordinates outside cleaning vendors for your location, and is there a process for introducing a new provider? I can send a short service summary and discuss a walkthrough if useful.\n\nThank you,\n[your name]\n{business}\n[your business contact details]",
      'follow_up':f"One follow-up, when appropriate, after five to seven business days:\n\nHello {first['business_name']} team,\n\nFollowing up on the cleaning-vendor contact question from {business}. If another public business contact handles this, I’d appreciate the direction. If it isn’t relevant, no response is needed and I’ll close the loop.\n\nThank you,\n[your name]",
      'phone_opener':f"Hello, I’m [your name] with {business}. Who handles outside cleaning vendors for the Phoenix location? I’m looking for the correct business contact and the process for sending a short introduction. Is there an email or vendor-onboarding page you prefer?",
      'reply_handling':'Interested: confirm the location, cleaning scope, frequency, vendor requirements and permission to arrange a walkthrough.\nExisting provider: thank them; ask about backup coverage only if they invite that discussion.\nNot now: ask permission before setting a later reminder.\nWrong contact: use the public routing information they provide.\nDecline or opt-out: stop and record the suppression.\nSpecialized facility: confirm your team meets the facility’s requirements before proposing work.',
      'four_week_plan':f"Week 1 — Review the three priority accounts above. Confirm current public contact routes and your own service fit. Prepare a short company summary and written-scope checklist.\n\nWeek 2 — Introduce {business} individually through those business routes. Ask the routing question; record who replied and the next permitted step.\n\nWeek 3 — Use one follow-up where appropriate. Arrange walkthroughs only when invited, and document the requested scope before quoting.\n\nWeek 4 — Review contacts, replies, walkthroughs, quotes, accepted work and actual revenue. Correct bad-fit records and choose the next three accounts using the same evidence standard."}
    return {'business':business,'territory':['Phoenix'],'strategy':strategy,'review':True,
      'source_provenance':'Public competitor observations previously reviewed on the listed dates; VPS compiled the strategy and priorities from the current qualified pack.',
      'priority_accounts':[r['business_name'] for r in chosen]}
