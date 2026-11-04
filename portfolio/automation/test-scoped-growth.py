"""Scope signatures cannot release drafts, widen territory or replace reviewed five."""
import copy,json,sys,unittest,uuid
from pathlib import Path
from datetime import datetime,timedelta,timezone
sys.path.insert(0,str(Path(__file__).parent/'api'))
from scoped_growth import prepare_profile,profile_for_target,public_offer_fields
from official_research import parse_record

class Tests(unittest.TestCase):
    def setup(self):
        recipient=dict(candidate_id=str(uuid.uuid4()),side='vendor',market='Phoenix',category_key='commercial_cleaning',category_label='Commercial cleaning',business_name='Synthetic Commercial Cleaning',public_phone='6025550100')
        entity={'@type':'CleaningService','name':recipient['business_name'],'url':'https://synthetic.example/','telephone':'6025550100','email':'info@synthetic.example','description':'Commercial cleaning','address':{'streetAddress':'100 Main Street','addressLocality':'Phoenix','addressRegion':'AZ','postalCode':'85004'}}
        parsed=parse_record(recipient,entity['url'],'<script type="application/ld+json">'+json.dumps(entity)+'</script>','a'*64,'secret');recipient.update(parsed)
        rows=[{'business_name':'Office '+str(i)} for i in range(25)];ids=[str(uuid.uuid4()) for i in rows]
        self.packet=dict(status='held_packet_compiled',pack_count=25,outreach_held=True,offer_ready=False,recipient=recipient,binding={'scope':{'source_url':entity['url'],'category_keys':['insurance_professional'],'observed_sector_phrases':['office cleaning']},'candidate_ids':ids},artifacts={25:{'rows':rows},5:{'rows':rows[:5]}})
        self.target=dict(target_id='inventory:'+recipient['candidate_id'],business_name=recipient['business_name'],public_email=recipient['public_email'],market='Phoenix',service_key='commercial_cleaning',source_url=entity['url'])
        self.profile=prepare_profile(self.packet,self.target['target_id'],'secret');self.target['source_data']={'scoped_offer':self.profile}
    def test_owner_review_of25_does_not_release_customer_or_advertise100(self):
        self.setup();value=profile_for_target(self.target,'secret')
        self.assertEqual(value['signature'],self.profile['signature'])
        self.assertEqual(public_offer_fields(value)['offer_count'],25);self.assertFalse(public_offer_fields(value)['upgrade_available'])
        with self.assertRaises(ValueError):profile_for_target(self.target,'secret',customer=True)
    def test_tamper_target_change_and_expiry_rejected(self):
        self.setup()
        for field,value in [('public_email','other@example.com'),('market','Prescott'),('source_url','https://other.example/'),('business_name','Another Company')]:
            with self.assertRaises(ValueError):profile_for_target(dict(self.target,**{field:value}),'secret')
        changed=copy.deepcopy(self.target);changed['source_data']['scoped_offer']['pack_count']=100
        with self.assertRaises(ValueError):profile_for_target(changed,'secret')
        with self.assertRaises(ValueError):profile_for_target(self.target,'secret',now=datetime.now(timezone.utc)+timedelta(days=8))
    def test_forged_source_and_replaced_originals_fail_before_profile(self):
        self.setup();self.packet['recipient']['public_email']='fake@example.com'
        with self.assertRaises(ValueError):prepare_profile(self.packet,self.target['target_id'],'secret')
        self.setup();self.packet['artifacts'][5]['rows']=[{'business_name':'Changed'}]*5
        with self.assertRaises(ValueError):prepare_profile(self.packet,self.target['target_id'],'secret')
    def test_admin_readonly_packets_cannot_mint_staged_profiles_even_when_held(self):
        for flags in ({'private_not_for_dispatch':True},{'administrative_read_only':True},{'private_not_for_dispatch':True,'administrative_read_only':True,'outreach_held':False}):
            self.setup();self.packet.update(flags)
            with self.assertRaises(ValueError):prepare_profile(self.packet,self.target['target_id'],'secret')
    def test_legacy_targets_stay_on_existing100_offer(self):
        self.assertIsNone(profile_for_target({'source_data':{}},'secret'))
        self.assertEqual(public_offer_fields(None)['offer_count'],100)

if __name__=='__main__':unittest.main()
