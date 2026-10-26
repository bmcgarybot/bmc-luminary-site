import os, json, uuid, re, imaplib, email, asyncio, urllib.request, urllib.parse, urllib.error, hmac, hashlib, time, html, random, csv, io
from datetime import datetime, timedelta, timezone
from email.message import EmailMessage
from email.utils import parseaddr
import asyncpg
import aiosmtplib
from fastapi import FastAPI, Request, Header, HTTPException

def env_int(name,default):
    raw=os.getenv(name)
    try:
        return int(raw) if raw is not None and str(raw).strip()!="" else int(default)
    except (TypeError,ValueError):
        return int(default)

def env_float(name,default):
    raw=os.getenv(name)
    try:
        return float(raw) if raw is not None and str(raw).strip()!="" else float(default)
    except (TypeError,ValueError):
        return float(default)
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import HTMLResponse

DB_DSN=os.getenv("DATABASE_URL","postgresql://bmc_automation:change@postgres:5432/bmc_portfolio")
PUBLIC_SITE_URL=os.getenv("PUBLIC_SITE_URL","https://bmcservicenetwork.com").rstrip("/")
WEBHOOK_URL=os.getenv("WEBHOOK_URL","").strip()
CLOUDFLARE_TUNNEL_TOKEN=os.getenv("CLOUDFLARE_TUNNEL_TOKEN","").strip()
ADMIN_KEY=os.getenv("BMC_ADMIN_KEY","")
OFFER_HOURS=env_int("OFFER_HOURS",2)
SMTP_HOST=os.getenv("SMTP_HOST","")
SMTP_PORT=env_int("SMTP_PORT",587)
SMTP_USER=os.getenv("SMTP_USER","")
SMTP_PASSWORD=os.getenv("SMTP_PASSWORD","")
SMTP_FROM=os.getenv("SMTP_FROM",SMTP_USER or "contact@bmcservicenetwork.com")
SMTP_STARTTLS=os.getenv("SMTP_STARTTLS","true").lower()=="true"
SMTP_DRY_RUN=os.getenv("SMTP_DRY_RUN","false").lower()=="true"
OUTREACH_ENABLED=os.getenv("OUTREACH_ENABLED","false").lower()=="true"
OUTREACH_DAILY_LIMIT=env_int("OUTREACH_DAILY_LIMIT",25)
OUTREACH_WAVE=os.getenv("OUTREACH_WAVE","pilot1").strip() or "pilot1"
BUYER_OUTREACH_ENABLED=os.getenv("BUYER_OUTREACH_ENABLED","false").lower()=="true"
BUYER_OUTREACH_DAILY_LIMIT=env_int("BUYER_OUTREACH_DAILY_LIMIT",15)
BUYER_OUTREACH_WAVE=os.getenv("BUYER_OUTREACH_WAVE","pilot1").strip() or "pilot1"
GROWTH_OUTREACH_ENABLED=os.getenv("GROWTH_OUTREACH_ENABLED","false").lower()=="true"
GROWTH_OUTREACH_DAILY_LIMIT=env_int("GROWTH_OUTREACH_DAILY_LIMIT",10)
GROWTH_OUTREACH_WAVE=os.getenv("GROWTH_OUTREACH_WAVE","growth1").strip() or "growth1"
BUSINESS_POSTAL_ADDRESS=os.getenv("BUSINESS_POSTAL_ADDRESS","").strip()
PARTNER_URL=f"{PUBLIC_SITE_URL}/providers/"
PILOT_ACTIVATION_URL=f"{PUBLIC_SITE_URL}/provider-pilot-activate/"
IMAP_ENABLED=os.getenv("IMAP_ENABLED","false").lower()=="true"
IMAP_HOST=os.getenv("IMAP_HOST","")
IMAP_PORT=env_int("IMAP_PORT",993)
IMAP_USER=os.getenv("IMAP_USER","")
IMAP_PASSWORD=os.getenv("IMAP_PASSWORD","")
IMAP_FOLDER=os.getenv("IMAP_FOLDER","INBOX")
LOCAL_AI_URL=os.getenv("LOCAL_AI_URL","").rstrip("/")
LOCAL_AI_MODEL=os.getenv("LOCAL_AI_MODEL","qwen3:1.7b")
LOCAL_AI_ENABLED=os.getenv("LOCAL_AI_ENABLED","true").lower()=="true"
STRIPE_WEBHOOK_SECRET=os.getenv("STRIPE_WEBHOOK_SECRET","").strip()
AGENT_ENABLED=os.getenv("AGENT_ENABLED","true").lower()=="true"
AGENT_MIN_CONFIDENCE=env_float("AGENT_MIN_CONFIDENCE",0.82)
AGENT_CYCLE_LIMIT=max(1,env_int("AGENT_CYCLE_LIMIT",10))
AGENT_RESEARCH_TASK_LIMIT=max(0,env_int("AGENT_RESEARCH_TASK_LIMIT",5))
AGENT_ALLOW_EXTERNAL_ACTIONS=os.getenv("AGENT_ALLOW_EXTERNAL_ACTIONS","false").lower()=="true"
RESEARCH_SEARCH_ENABLED=os.getenv("RESEARCH_SEARCH_ENABLED","true").lower()=="true"
RESEARCH_SEARCH_URL=os.getenv("RESEARCH_SEARCH_URL","http://searxng:8080/search").strip()
RESEARCH_SEARCH_RESULTS=max(1,min(20,env_int("RESEARCH_SEARCH_RESULTS",8)))
RESEARCH_WORKER_BATCH=max(1,min(5,env_int("RESEARCH_WORKER_BATCH",1)))
RESEARCH_MAX_PASSES=max(1,min(8,env_int("RESEARCH_MAX_PASSES",4)))
RESEARCH_AUTO_PROMOTE_CONTACTS=os.getenv("RESEARCH_AUTO_PROMOTE_CONTACTS","true").lower()=="true"
SOURCE_NATIVE_RESEARCH_ENABLED=os.getenv("SOURCE_NATIVE_RESEARCH_ENABLED","true").lower()=="true"
ADHS_FACILITIES_URL=os.getenv("ADHS_FACILITIES_URL","https://services1.arcgis.com/mpVYz37anSdrK4d8/ArcGIS/rest/services/All_State_Licensed_Facilities_in_Arizona/FeatureServer/18/query").strip()
ADHS_SOURCE_NATIVE_PAGE_SIZE=max(10,min(500,env_int("ADHS_SOURCE_NATIVE_PAGE_SIZE",100)))
CMS_SOURCE_NATIVE_ENABLED=os.getenv("CMS_SOURCE_NATIVE_ENABLED","true").lower()=="true"
CMS_SOURCE_NATIVE_PAGE_SIZE=max(10,min(500,env_int("CMS_SOURCE_NATIVE_PAGE_SIZE",100)))
CMS_HOSPITALS_URL=os.getenv("CMS_HOSPITALS_URL","https://data.cms.gov/provider-data/api/1/datastore/query/xubh-q36u/0").strip()
CMS_NURSING_HOMES_URL=os.getenv("CMS_NURSING_HOMES_URL","https://data.cms.gov/provider-data/api/1/datastore/query/4pq5-n9py/0").strip()
CMS_HOME_HEALTH_URL=os.getenv("CMS_HOME_HEALTH_URL","https://data.cms.gov/provider-data/api/1/datastore/query/6jpm-sxkc/0").strip()
CMS_HOSPICE_URL=os.getenv("CMS_HOSPICE_URL","https://data.cms.gov/provider-data/api/1/datastore/query/yc9t-dgbk/0").strip()
CMS_BULK_DOWNLOAD_ENABLED=os.getenv("CMS_BULK_DOWNLOAD_ENABLED","true").lower()=="true"
CMS_METADATA_BASE=os.getenv(
    "CMS_METADATA_BASE",
    "https://data.cms.gov/provider-data/api/1/metastore/schemas/dataset/items"
).rstrip("/")
CMS_BULK_CACHE_TTL_SECONDS=max(300,env_int("CMS_BULK_CACHE_TTL_SECONDS",21600))
SOURCE_NATIVE_CHECK_BATCH=max(1,min(50,env_int("SOURCE_NATIVE_CHECK_BATCH",10)))

BUYER_RESEARCH_HINTS={
    "commercial_cleaning":'"hospital" OR "clinic" OR "dental" OR "therapy" OR "pharmacy" OR "grocery" OR "retail" OR "insurance office" OR "school" OR "church" OR "hotel" OR "apartment" OR "restaurant"',
    "floor_carpet":'"hospital" OR "clinic" OR "dental" OR "therapy" OR "hotel" OR "school" OR "church" OR "theater" OR "office" OR "retail" OR "grocery" OR "property manager"',
    "window_cleaning":'"hospital" OR "clinic" OR "dental" OR "hotel" OR "school" OR "church" OR "office" OR "retail" OR "grocery" OR "property manager"',
    "hvac_heat":'"hospital" OR "clinic" OR "dental" OR "pharmacy" OR "grocery" OR "retail" OR "hotel" OR "school" OR "church" OR "office" OR "property manager"',
    "pest_control":'"restaurant" OR "grocery" OR "pharmacy" OR "hotel" OR "school" OR "daycare" OR "senior living" OR "clinic" OR "property manager" OR "warehouse"',
    "parking_lot":'"grocery" OR "retail" OR "pharmacy" OR "hotel" OR "school" OR "church" OR "medical office" OR "apartment" OR "auto dealer" OR "warehouse"',
    "fire_safety":'"hospital" OR "clinic" OR "dental" OR "school" OR "church" OR "hotel" OR "restaurant" OR "grocery" OR "retail" OR "warehouse"',
    "sign_lighting":'"retail" OR "grocery" OR "pharmacy" OR "restaurant" OR "hotel" OR "auto dealer" OR "office" OR "property manager"',
    "locksmith_access":'"hospital" OR "clinic" OR "dental" OR "pharmacy" OR "retail" OR "grocery" OR "school" OR "church" OR "office" OR "property manager" OR "apartment"',
    "backflow_plumbing":'"hospital" OR "clinic" OR "school" OR "restaurant" OR "hotel" OR "grocery" OR "property manager" OR "public facility"',
    "landscaping":'"hospital" OR "clinic" OR "hotel" OR "school" OR "church" OR "property manager" OR "apartment" OR "retail" OR "public facility"',
    "tree_service":'"hotel" OR "school" OR "church" OR "property manager" OR "apartment" OR "public facility"',
    "junk_hauling":'"property manager" OR "apartment" OR "hotel" OR "school" OR "church" OR "retail" OR "office" OR "restaurant" OR "public facility"',
    "restaurant_equipment":'"restaurant" OR "hotel" OR "hospital" OR "school" OR "senior living" OR "institutional kitchen"',
    "hood_exhaust":'"restaurant" OR "hotel" OR "hospital" OR "school" OR "senior living" OR "institutional kitchen"',
    "ice_machine":'"restaurant" OR "hotel" OR "hospital" OR "school" OR "senior living" OR "grocery" OR "convenience store"',
    "linen_laundry":'"hotel" OR "hospital" OR "senior living" OR "restaurant" OR "spa" OR "clinic" OR "public facility"',
    "facility_maintenance":'"hospital" OR "clinic" OR "dental" OR "therapy" OR "pharmacy" OR "grocery" OR "retail" OR "insurance office" OR "school" OR "church" OR "hotel" OR "apartment" OR "restaurant" OR "warehouse" OR "public facility"',
    "auto_repair_shop":'"fleet" OR "delivery company" OR "rental car" OR "service company" OR "contractor fleet" OR "property maintenance" OR "rideshare fleet" OR "auto dealer"'
}

MARKET_RESEARCH_CONTEXT={
    "Prescott":'"high desert" OR "defensible space" OR "wildfire" OR "septic" OR "well"',
    "Prescott Valley":'"high desert" OR "defensible space" OR "wildfire" OR "septic" OR "well"',
    "Chino Valley":'"acreage" OR "grading" OR "septic" OR "well" OR "land clearing"',
    "Camp Verde":'"acreage" OR "irrigation" OR "septic" OR "well" OR "brush clearing"',
    "Cottonwood":'"Verde Valley" OR "irrigation" OR "septic" OR "tree care"',
    "Sedona":'"vacation rental" OR "hospitality" OR "desert landscape" OR "pool"',
    "Flagstaff":'"snow" OR "ice" OR "freeze" OR "heating" OR "tree care"',
    "Winslow":'"wind" OR "dust" OR "towing" OR "heating" OR "cooling"',
    "Kingman":'"desert heat" OR "septic" OR "well" OR "water" OR "cooling"',
    "Phoenix":'"extreme heat" OR "pool" OR "cooling" OR "pest" OR "desert landscape"',
    "Scottsdale":'"extreme heat" OR "pool" OR "cooling" OR "pest" OR "desert landscape"',
    "Tucson":'"extreme heat" OR "pool" OR "cooling" OR "pest" OR "desert landscape"'
}
ENVIRONMENT_SENSITIVE_SERVICES={"tree_service","landscaping","rural_property","snow_service","pool_desert_property","hvac_heat","pest_control","towing_roadside"}

DEFAULT_SOURCE_NATIVE_MARKETS=("Prescott","Prescott Valley","Chino Valley","Dewey-Humboldt","Mayer","Cordes Lakes","Williamson Valley","Ash Fork","Seligman","Skull Valley","Camp Verde","Cottonwood","Sedona","Flagstaff","Winslow","Kingman","Golden Valley","Bullhead City","Phoenix","Scottsdale","Tucson")
SOURCE_NATIVE_MARKETS=tuple(
    x.strip() for x in os.getenv("SOURCE_NATIVE_MARKETS",",".join(DEFAULT_SOURCE_NATIVE_MARKETS)).split(",")
    if x.strip()
) or DEFAULT_SOURCE_NATIVE_MARKETS
ADHS_FACILITY_CORE_SERVICES=(
    "commercial_cleaning","floor_carpet","window_cleaning","hvac_heat","pest_control",
    "fire_safety","locksmith_access","backflow_plumbing","facility_maintenance",
    "electrical_service","duct_vent","pressure_washing"
)
CMS_FACILITY_CORE_SERVICES=(
    "commercial_cleaning","floor_carpet","window_cleaning","hvac_heat","pest_control",
    "parking_lot","fire_safety","locksmith_access","backflow_plumbing","facility_maintenance",
    "electrical_service","duct_vent","pressure_washing","linen_laundry","restaurant_equipment",
    "ice_machine","landscaping","junk_hauling","waste_audit","coffee_water"
)
CMS_HEALTH_OFFICE_SERVICES=(
    "commercial_cleaning","floor_carpet","window_cleaning","hvac_heat","pest_control",
    "parking_lot","fire_safety","locksmith_access","backflow_plumbing","facility_maintenance",
    "electrical_service","duct_vent","pressure_washing","waste_audit","coffee_water"
)
ADHS_SOURCE_KEY="adhs_facilities_arcgis"
ADHS_SOURCE_NAME="Arizona Department of Health Services Licensed Facilities"
ADHS_LAYER_PAGE="https://services1.arcgis.com/mpVYz37anSdrK4d8/ArcGIS/rest/services/All_State_Licensed_Facilities_in_Arizona/FeatureServer/18"
CMS_SOURCE_DATASETS=(
    {
      "source_key":"cms_hospitals",
      "source_name":"CMS Hospital General Information",
      "dataset_id":"xubh-q36u",
      "dataset_page":"https://data.cms.gov/provider-data/dataset/xubh-q36u",
      "url":CMS_HOSPITALS_URL,
      "kind":"hospital",
      "services":CMS_FACILITY_CORE_SERVICES
    },
    {
      "source_key":"cms_nursing_homes",
      "source_name":"CMS Nursing Home Provider Information",
      "dataset_id":"4pq5-n9py",
      "dataset_page":"https://data.cms.gov/provider-data/dataset/4pq5-n9py",
      "url":CMS_NURSING_HOMES_URL,
      "kind":"nursing_home",
      "services":CMS_FACILITY_CORE_SERVICES
    },
    {
      "source_key":"cms_home_health",
      "source_name":"CMS Home Health Care Agencies",
      "dataset_id":"6jpm-sxkc",
      "dataset_page":"https://data.cms.gov/provider-data/dataset/6jpm-sxkc",
      "url":CMS_HOME_HEALTH_URL,
      "kind":"home_health",
      "services":CMS_HEALTH_OFFICE_SERVICES
    },
    {
      "source_key":"cms_hospice",
      "source_name":"CMS Hospice General Information",
      "dataset_id":"yc9t-dgbk",
      "dataset_page":"https://data.cms.gov/provider-data/dataset/yc9t-dgbk",
      "url":CMS_HOSPICE_URL,
      "kind":"hospice",
      "services":CMS_HEALTH_OFFICE_SERVICES
    }
)

_CMS_BULK_CACHE={}
_CMS_BULK_CACHE_AT={}

def expected_source_native_keys():
    keys=[ADHS_SOURCE_KEY]
    if CMS_SOURCE_NATIVE_ENABLED:
        keys.extend(source["source_key"] for source in CMS_SOURCE_DATASETS)
    return tuple(keys)

async def initialize_source_native_state(pool):
    expected_keys=expected_source_native_keys()
    async with pool.acquire() as conn:
      async with conn.transaction():
        await conn.execute("""update source_native_state
          set metadata=jsonb_set(coalesce(metadata,'{}'::jsonb),'{expected}','false'::jsonb,true),
              updated_at=now()
          where coalesce((metadata->>'expected')::boolean,false)=true""")
        for source_key in expected_keys:
          for market in SOURCE_NATIVE_MARKETS:
            await conn.execute("""insert into source_native_state(source_key,market,metadata)
              values($1,$2,$3::jsonb)
              on conflict(source_key,market) do update set
                metadata=jsonb_set(coalesce(source_native_state.metadata,'{}'::jsonb),
                  '{expected}','true'::jsonb,true),
                updated_at=now()""",
              source_key,market,json.dumps({"expected":True}))


ROC_RESEARCH_SERVICES={
    "electrical_service","hvac_heat","backflow_plumbing","landscaping",
    "pool_desert_property","garage_door","epoxy_flooring","sign_lighting","fire_safety"
}
FACILITY_BUYER_RESEARCH_SERVICES={
    "commercial_cleaning","floor_carpet","window_cleaning","hvac_heat","pest_control",
    "parking_lot","fire_safety","sign_lighting","locksmith_access","backflow_plumbing",
    "landscaping","tree_service","junk_hauling","restaurant_equipment","hood_exhaust",
    "ice_machine","linen_laundry","facility_maintenance","electrical_service","duct_vent",
    "pressure_washing","grease_drain","turnover_cleaning","residential_cleaning",
    "handyman_repairs","coffee_water","waste_audit"
}
FOOD_FACILITY_BUYER_RESEARCH_SERVICES=FACILITY_BUYER_RESEARCH_SERVICES | {
    "used_equipment","equipment_quotes","restaurant_maintenance"
}


PUBLIC_OPPORTUNITY_SOURCES=(
    {"key":"prescott","name":"City of Prescott","market":"Prescott","domain":"prescott-az.gov",
     "query":'site:prescott-az.gov (bid OR RFP OR solicitation OR contract) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR "facility maintenance" OR "parking lot" OR pest OR "fire extinguisher" OR lighting OR electrical OR laundry OR septic)'},
    {"key":"yavapai_county","name":"Yavapai County","market":"Yavapai County","domain":"yavapaiaz.gov",
     "query":'site:yavapaiaz.gov (bid OR RFP OR solicitation OR contract) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR facilities OR parking OR pest OR fire OR lighting OR electrical)'},
    {"key":"arizona_state","name":"State of Arizona","market":"Arizona","domain":"spo.az.gov",
     "query":'site:spo.az.gov (solicitation OR bid OR contract) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR facilities OR parking OR pest OR fire OR lighting OR electrical OR laundry)'},
    {"key":"phoenix","name":"City of Phoenix","market":"Phoenix","domain":"procurement.opengov.com",
     "query":'site:procurement.opengov.com/portal/phoenix (Open OR solicitation OR RFQ OR RFP OR IFB) (locksmith OR laundry OR janitorial OR cleaning OR landscaping OR HVAC OR plumbing OR facilities OR septic OR parking OR electrical)'},
    {"key":"cottonwood","name":"City of Cottonwood","market":"Cottonwood","domain":"cottonwoodaz.gov",
     "query":'site:cottonwoodaz.gov (bid OR RFP OR solicitation) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical)'},
    {"key":"flagstaff","name":"City of Flagstaff","market":"Flagstaff","domain":"flagstaff.az.gov",
     "query":'site:flagstaff.az.gov (bid OR RFP OR solicitation) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical)'},
    {"key":"sedona","name":"City of Sedona","market":"Sedona","domain":"sedonaaz.gov",
     "query":'site:sedonaaz.gov (bid OR RFP OR solicitation) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical)'},
    {"key":"tucson","name":"City of Tucson","market":"Tucson","domain":"tucsonaz.gov",
     "query":'site:tucsonaz.gov (bid OR RFP OR solicitation) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical OR laundry)'},
    {"key":"scottsdale","name":"City of Scottsdale","market":"Scottsdale","domain":"scottsdaleaz.gov",
     "query":'site:scottsdaleaz.gov (bid OR RFP OR solicitation) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical)'},
    {"key":"chino_valley","name":"Town of Chino Valley","market":"Chino Valley","domain":"chinoaz.net",
     "query":'site:chinoaz.net (bid OR RFP OR solicitation) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical)'},
    {"key":"winslow","name":"City of Winslow","market":"Winslow","domain":"winslowaz.gov",
     "query":'site:winslowaz.gov (bid OR RFP OR solicitation) (janitorial OR cleaning OR landscaping OR locksmith OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical)'},
    {"key":"prescott_valley","name":"Town of Prescott Valley","market":"Prescott Valley","domain":"prescottvalley-az.gov",
     "query":'site:prescottvalley-az.gov (bid OR RFP OR RFQ OR solicitation OR contract) (janitorial OR cleaning OR landscaping OR locksmith OR "access control" OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical OR "vehicle maintenance" OR "auto repair")'},
    {"key":"camp_verde","name":"Town of Camp Verde","market":"Camp Verde","domain":"campverde.az.gov",
     "query":'site:campverde.az.gov (bid OR RFP OR RFQ OR solicitation OR contract) (janitorial OR cleaning OR landscaping OR locksmith OR "access control" OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical OR "vehicle maintenance" OR "auto repair")'},
    {"key":"kingman","name":"City of Kingman","market":"Kingman","domain":"cityofkingman.gov",
     "query":'site:cityofkingman.gov (bid OR RFP OR RFQ OR solicitation OR contract) (janitorial OR cleaning OR landscaping OR locksmith OR "access control" OR HVAC OR plumbing OR facilities OR parking OR pest OR electrical OR "vehicle maintenance" OR "auto repair")'},
    {"key":"prescott_schools","name":"Prescott Unified School District","market":"Prescott","domain":"prescottschools.com",
     "query":'site:prescottschools.com (bid OR RFP OR RFQ OR solicitation OR purchasing) (janitorial OR custodial OR cleaning OR landscaping OR locksmith OR "access control" OR HVAC OR plumbing OR facilities OR pest OR electrical OR "vehicle maintenance" OR "kitchen equipment")'},
    {"key":"humboldt_schools","name":"Humboldt Unified School District","market":"Prescott Valley","domain":"humboldtunified.com",
     "query":'site:humboldtunified.com (bid OR RFP OR RFQ OR solicitation OR purchasing) (janitorial OR custodial OR cleaning OR landscaping OR locksmith OR "access control" OR HVAC OR plumbing OR facilities OR pest OR electrical OR "vehicle maintenance" OR "kitchen equipment")'},
    {"key":"sam_federal","name":"SAM.gov Federal Opportunities","market":"Arizona","domain":"sam.gov",
     "query":'site:sam.gov/opportunities Arizona (janitorial OR cleaning OR landscaping OR locksmith OR "access control" OR HVAC OR plumbing OR facility OR parking OR pest OR electrical OR laundry OR "vehicle maintenance" OR "auto repair")'}
)

LOCAL_SIGNAL_MARKETS=(
    "Prescott","Prescott Valley","Chino Valley","Dewey-Humboldt","Mayer","Cordes Lakes",
    "Williamson Valley","Ash Fork","Seligman","Skull Valley","Camp Verde","Cottonwood",
    "Sedona","Flagstaff","Winslow","Kingman","Golden Valley","Bullhead City",
    "Phoenix","Scottsdale","Tucson"
)
LOCAL_SIGNAL_SOURCES=(
    {"key":"nextdoor_public","name":"Publicly indexed Nextdoor","domain":"nextdoor.com"},
    {"key":"facebook_public","name":"Publicly indexed Facebook","domain":"facebook.com"},
    {"key":"craigslist_public","name":"Publicly indexed Craigslist","domain":"craigslist.org"}
)
LOCAL_SIGNAL_GROUPS=(
    {"key":"home_property","label":"Home & property services",
     "terms":'"plumber" OR "electrician" OR "locksmith" OR "HVAC" OR "heating" OR "air conditioning" OR "handyman" OR "garage door" OR "pest control"'},
    {"key":"outdoor_land","label":"Outdoor & land services",
     "terms":'"tree service" OR "tree removal" OR "landscaping" OR "yard cleanup" OR "junk removal" OR "hauling" OR "septic" OR "grading" OR "well"'},
    {"key":"cleaning_property","label":"Cleaning & property care",
     "terms":'"house cleaning" OR "commercial cleaning" OR "window cleaning" OR "carpet cleaning" OR "pressure washing" OR "move out cleaning"'},
    {"key":"vehicle","label":"Vehicle services",
     "terms":'"towing" OR "roadside" OR "mechanic" OR "auto repair" OR "brake repair" OR "mobile tire" OR "battery" OR "windshield" OR "auto glass"'},
    {"key":"restaurant_facility","label":"Restaurant & facility services",
     "terms":'"restaurant equipment" OR "ice machine" OR "hood cleaning" OR "grease trap" OR "fire extinguisher" OR "parking lot" OR "sign repair" OR "access control"'}
)
LOCAL_SIGNAL_INTENT_TERMS='"looking for" OR "recommend" OR "recommendation" OR "need a" OR "need an" OR "anyone know" OR "seeking" OR "looking to hire" OR "who can"'

MARKET_INVENTORY_MARKETS=LOCAL_SIGNAL_MARKETS
BUYER_INVENTORY_CATEGORIES=(
    {"key":"restaurants","label":"restaurants"},
    {"key":"hotels_motels","label":"hotels motels lodging"},
    {"key":"schools","label":"schools charter schools private schools"},
    {"key":"churches","label":"churches worship centers"},
    {"key":"medical_centers","label":"hospitals medical centers clinics"},
    {"key":"dental","label":"dentists dental offices orthodontists"},
    {"key":"therapy_behavioral","label":"therapy counseling behavioral health clinics"},
    {"key":"pharmacies","label":"pharmacies drug stores"},
    {"key":"grocery","label":"grocery stores supermarkets markets"},
    {"key":"retail","label":"retail stores shopping stores"},
    {"key":"insurance_professional","label":"insurance agents professional offices"},
    {"key":"property_management","label":"property management companies apartment communities"},
    {"key":"senior_daycare","label":"senior living assisted living daycare childcare"},
    {"key":"gyms_fitness","label":"gyms fitness centers recreation centers"},
    {"key":"auto_dealers","label":"auto dealers car dealerships"},
    {"key":"warehouses_industrial","label":"warehouses industrial businesses distribution centers"},
    {"key":"theaters_entertainment","label":"theaters cinemas entertainment venues"},
    {"key":"public_facilities","label":"government public facilities municipal buildings"}
)

BUYER_INVENTORY_TARGETS={
    "restaurants":(150,50,20),"hotels_motels":(60,20,8),"schools":(80,20,8),
    "churches":(100,25,8),"medical_centers":(100,30,10),"dental":(100,30,8),
    "therapy_behavioral":(100,25,8),"pharmacies":(40,12,4),"grocery":(50,15,5),
    "retail":(150,50,15),"insurance_professional":(150,50,15),
    "property_management":(100,30,10),"senior_daycare":(80,20,8),
    "gyms_fitness":(80,20,6),"auto_dealers":(50,15,5),
    "warehouses_industrial":(100,25,8),"theaters_entertainment":(40,10,3),
    "public_facilities":(100,25,8)
}
INVENTORY_MAJOR_MARKETS={"Phoenix","Scottsdale","Tucson"}
INVENTORY_REGIONAL_MARKETS={"Prescott","Prescott Valley","Flagstaff","Kingman","Bullhead City","Cottonwood","Sedona"}
INVENTORY_BLOCKED_DOMAINS={
    "facebook.com","nextdoor.com","linkedin.com","yelp.com","yellowpages.com","angi.com",
    "thumbtack.com","bbb.org","mapquest.com","tripadvisor.com","doordash.com","grubhub.com"
}

def inventory_target(market,side,category_key):
    tier=0 if market in INVENTORY_MAJOR_MARKETS else (1 if market in INVENTORY_REGIONAL_MARKETS else 2)
    if side=="buyer":
        return BUYER_INVENTORY_TARGETS.get(category_key,(100,30,10))[tier]
    return (40,20,10)[tier]

def inventory_query(side,market,category_label,variant):
    place=clean(market).replace('"'," ")
    label=clean(category_label).replace('"'," ")
    v=int(variant or 0)%3
    if side=="buyer":
        variants=(
          f'"{place}" Arizona "{label}"',
          f'"{place}" Arizona {label} business',
          f'"{place}" Arizona {label} directory local'
        )
    else:
        variants=(
          f'"{label}" "{place}" Arizona',
          f'"{place}" Arizona "{label}" company contractor',
          f'"{place}" Arizona local "{label}" service'
        )
    return variants[v]

def inventory_official_site(domain):
    host=clean(domain).lower().removeprefix("www.")
    return bool(host and not any(host==d or host.endswith("."+d) for d in INVENTORY_BLOCKED_DOMAINS))

def build_local_signal_query(market,domain,terms):
    return f'site:{domain} "{clean(market)}" Arizona ({LOCAL_SIGNAL_INTENT_TERMS}) ({terms})'

def classify_local_signal_service(text):
    t=clean(text).lower()
    intent=("looking for","recommend","recommendation","need a ","need an ","anyone know","seeking","looking to hire","who can")
    if not any(x in t for x in intent):
        return None
    rules=(
      (("locksmith","rekey","locked out","lock out","access control"),"locksmith_access"),
      (("electrician","electrical","breaker","outlet","panel"),"electrical_service"),
      (("plumber","plumbing","water leak","pipe leak","backflow"),"backflow_plumbing"),
      (("hvac","air conditioning","a/c","ac repair","heating","furnace"),"hvac_heat"),
      (("tree service","tree removal","tree trimming","arborist","brush clearing"),"tree_service"),
      (("landscap","yard cleanup","yard work"),"landscaping"),
      (("junk removal","haul away","hauling","dump run"),"junk_hauling"),
      (("handyman","handy man","small repairs"),"handyman_repairs"),
      (("house cleaning","home cleaning","cleaner","maid service"),"residential_cleaning"),
      (("garage door","garage opener"),"garage_door"),
      (("pest control","exterminator","termites","rodent"),"pest_control"),
      (("tow truck","towing","roadside assistance"),"towing_roadside"),
      (("mechanic","auto repair","brake repair","check engine","transmission","oil change","alignment"),"auto_repair_shop")
    )
    for needles,key in rules:
        if any(n in t for n in needles):
            return key
    return None

async def initialize_local_demand_scan_state(pool):
    async with pool.acquire() as conn:
        for source in LOCAL_SIGNAL_SOURCES:
            for market in LOCAL_SIGNAL_MARKETS:
                for group in LOCAL_SIGNAL_GROUPS:
                    await conn.execute("""insert into local_demand_scan_state(
                        source_key,source_name,source_domain,market,group_key,group_label)
                      values($1,$2,$3,$4,$5,$6)
                      on conflict(source_key,market,group_key) do update set
                        source_name=excluded.source_name,
                        source_domain=excluded.source_domain,
                        group_label=excluded.group_label,
                        updated_at=now()""",
                        source["key"],source["name"],source["domain"],market,group["key"],group["label"])


async def initialize_market_inventory_state(pool):
    async with pool.acquire() as conn:
        provider_services=await conn.fetch("""select service_key,display_name from services
          where is_active=true and fulfillment_mode='provider_match'
          order by service_key""")
        for market in MARKET_INVENTORY_MARKETS:
            for row in provider_services:
                target=inventory_target(market,"vendor",row["service_key"])
                await conn.execute("""insert into market_inventory_progress(
                    side,market,category_key,category_label,target)
                  values('vendor',$1,$2,$3,$4)
                  on conflict(side,market,category_key) do update set
                    category_label=excluded.category_label,
                    target=excluded.target,
                    updated_at=now()""",
                    market,row["service_key"],row["display_name"],target)
            for category in BUYER_INVENTORY_CATEGORIES:
                target=inventory_target(market,"buyer",category["key"])
                await conn.execute("""insert into market_inventory_progress(
                    side,market,category_key,category_label,target)
                  values('buyer',$1,$2,$3,$4)
                  on conflict(side,market,category_key) do update set
                    category_label=excluded.category_label,
                    target=excluded.target,
                    updated_at=now()""",
                    market,category["key"],category["label"],target)

app=FastAPI(title="BMC Portfolio Ops API",version="0.1.0")
app.add_middleware(CORSMiddleware,allow_origins=[
    "https://bmcservicenetwork.com","https://www.bmcservicenetwork.com"
],allow_credentials=False,allow_methods=["POST","GET"],allow_headers=["*"])

@app.on_event("startup")
async def startup():
    app.state.pool=await asyncpg.create_pool(DB_DSN,min_size=1,max_size=5)
    await initialize_source_native_state(app.state.pool)
    await initialize_local_demand_scan_state(app.state.pool)
    await initialize_market_inventory_state(app.state.pool)

@app.on_event("shutdown")
async def shutdown():
    await app.state.pool.close()

async def send_mail(to,subject,body,html_body=None):
    if not to: return False
    if SMTP_DRY_RUN: return True
    if not SMTP_HOST or "CHANGE_ME" in SMTP_HOST: return False
    try:
        msg=EmailMessage(); msg["From"]=SMTP_FROM; msg["To"]=to; msg["Subject"]=subject; msg.set_content(body)
        if html_body:
            msg.add_alternative(html_body,subtype="html")
        await aiosmtplib.send(msg,hostname=SMTP_HOST,port=SMTP_PORT,username=SMTP_USER or None,
            password=SMTP_PASSWORD or None,start_tls=SMTP_STARTTLS)
        return True
    except Exception:
        return False

def clean(v): return str(v or "").strip()
def slug(v): return re.sub(r"[^a-z0-9]+","-",clean(v).lower()).strip("-")[:40] or "vendor"

def extract_public_contact(text):
    raw=clean(text)
    email_match=re.search(r"\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,63}\b",raw,re.I)
    phone_match=re.search(r"(?<!\d)(?:\+?1[\s.\-]?)?(?:\(\d{3}\)|\d{3})[\s.\-]\d{3}[\s.\-]\d{4}(?!\d)",raw)
    return {
      "public_email":clean(email_match.group(0)).lower() if email_match else None,
      "public_phone":clean(phone_match.group(0)) if phone_match else None
    }

def json_dict(value):
    if isinstance(value,dict):
        return value
    if isinstance(value,str):
        try:
            parsed=json.loads(value)
            return parsed if isinstance(parsed,dict) else {}
        except Exception:
            return {}
    return {}

AUTO_PROMOTE_BLOCKED_DOMAINS=(
    "facebook.com","nextdoor.com","linkedin.com","yelp.com","yellowpages.com",
    "angi.com","thumbtack.com","bbb.org","mapquest.com"
)
AUTO_PROMOTE_BAD_PATH_PARTS={"blog","blogs","news","article","articles","directory","directories","search","category","categories","tag","tags"}

def research_auto_promote_eligible(result,contact,authoritative_source,rank):
    if not RESEARCH_AUTO_PROMOTE_CONTACTS or authoritative_source or int(rank or 0)>3:
        return False
    email=clean((contact or {}).get("public_email")).lower()
    host=clean((result or {}).get("domain")).lower().removeprefix("www.")
    if not email or "@" not in email or not host:
        return False
    if any(host==d or host.endswith("."+d) for d in AUTO_PROMOTE_BLOCKED_DOMAINS):
        return False
    email_domain=email.rsplit("@",1)[-1].removeprefix("www.")
    if not (host==email_domain or host.endswith("."+email_domain) or email_domain.endswith("."+host)):
        return False
    try:
        parts=[p.lower() for p in urllib.parse.urlparse(clean(result.get("url"))).path.split("/") if p]
    except Exception:
        return False
    if len(parts)>2 or any(p in AUTO_PROMOTE_BAD_PATH_PARTS for p in parts):
        return False
    return True

def workflow_email_html(title,body_lines,button_label=None,button_url=None):
    rows="".join(f"<p style='margin:0 0 14px;line-height:1.55'>{html.escape(clean(line)).replace(chr(10),'<br>')}</p>" for line in body_lines if clean(line))
    button=""
    fallback=""
    if button_label and button_url:
        safe_url=html.escape(clean(button_url),quote=True)
        button=f"<p style='margin:24px 0'><a href='{safe_url}' style='display:inline-block;background:#1557d6;color:#fff;text-decoration:none;font-weight:700;padding:12px 18px;border-radius:8px'>{html.escape(clean(button_label))}</a></p>"
        fallback=f"<p style='margin:18px 0 0;font-size:12px;color:#666;line-height:1.45'>If the button does not work, copy and paste this link:<br><span style='word-break:break-all'>{safe_url}</span></p>"
    return f"""<!doctype html><html><body style='margin:0;background:#f5f7fa;font-family:Arial,sans-serif;color:#1f2937'><div style='max-width:620px;margin:0 auto;padding:28px 16px'><div style='background:#fff;border:1px solid #e5e7eb;border-radius:12px;padding:28px'><h1 style='font-size:24px;margin:0 0 22px'>{html.escape(clean(title))}</h1>{rows}{button}{fallback}<p style='margin:28px 0 0;font-size:12px;color:#6b7280'>BMC Service Network · BMC Luminary Ventures LLC</p></div></div></body></html>"""

async def service_display_name(conn,service_key):
    row=await conn.fetchrow("select display_name from services where service_key=$1",service_key)
    if row and clean(row["display_name"]): return clean(row["display_name"])
    return clean(service_key).replace("_"," ").title() or "Service"

async def event(conn,etype,eid,kind,payload=None,actor="system"):
    await conn.execute("insert into events(entity_type,entity_id,event_type,actor,payload) values($1,$2,$3,$4,$5::jsonb)",
                       etype,str(eid),kind,actor,json.dumps(payload or {}))


def portal_token_hash(token):
    return hashlib.sha256(clean(token).encode("utf-8")).hexdigest()

async def issue_vendor_portal_token(conn,vendor_id,days=30):
    token=uuid.uuid4().hex+uuid.uuid4().hex
    token_hash=portal_token_hash(token)
    expires=datetime.now(timezone.utc)+timedelta(days=days)
    await conn.execute("""insert into vendor_portal_tokens(vendor_id,token_hash,expires_at)
      values($1,$2,$3)""",vendor_id,token_hash,expires)
    await conn.execute("""update vendor_portal_tokens set revoked_at=now()
      where vendor_id=$1 and token_hash<>$2 and revoked_at is null and expires_at>now()""",vendor_id,token_hash)
    return token,expires

async def vendor_from_portal_token(conn,token):
    token=clean(token)
    if len(token)<40:
        return None
    row=await conn.fetchrow("""select v.*,pt.token_id,pt.expires_at
      from vendor_portal_tokens pt join vendors v on v.vendor_id=pt.vendor_id
      where pt.token_hash=$1 and pt.revoked_at is null and pt.expires_at>now()
        and v.status in ('pilot','active','paused')
      limit 1""",portal_token_hash(token))
    if row:
        await conn.execute("update vendor_portal_tokens set last_used_at=now() where token_id=$1",row["token_id"])
    return row

def provider_dashboard_url(token):
    return f"{PUBLIC_SITE_URL}/provider-dashboard/?token={urllib.parse.quote(clean(token))}"


def classify_with_rules(text):
    t=clean(text).lower()
    rules=[
      ("electrical_service",["electrician","electrical","breaker","outlet","wiring","panel","ev charger","240v","220v"]),
      ("hvac_heat",["heating","air conditioning","air conditioner","a/c"," ac ","furnace","heat pump","mini split","hvac","no heat","no cool"]),
      ("handyman_repairs",["handyman","drywall","mount tv","mounting","punch list","small repair","door repair","assemble","assembly"]),
      ("residential_cleaning",["house cleaning","house cleaner","maid","housekeeping","deep clean","home cleaning"]),
      ("home_staging",["home staging","stager","staging consultation","vacant staging","listing styling"]),
      ("realtor_listing_prep",["realtor","real estate","realestate","listing prep","pre-listing","pre listing","listing ready","listing photos","brokerage","sell my house","sell my home","home sale"]),
      ("tree_service",["tree removal","tree trimming","dead tree","hazard tree","defensible space","brush clearing","fuel reduction","chipping"]),
      ("landscaping",["landscaping","landscape","yard cleanup","weed removal","irrigation","xeriscape"]),
      ("junk_hauling",["junk removal","haul away","hauling","cleanout","clean out","debris removal","furniture removal","appliance removal"]),
      ("commercial_cleaning",["commercial cleaning","janitorial","office cleaning","church cleaning","school cleaning","theater cleaning","facility cleaning"]),
      ("facility_maintenance",["facility maintenance","school maintenance","church maintenance","theater maintenance","building maintenance"]),
      ("restaurant_repair",["restaurant repair","commercial refrigeration","walk-in cooler","walk in cooler","reach-in cooler","reach in cooler"]),
      ("restaurant_equipment",["restaurant equipment","commercial oven","oven","fryer","deep fryer","commercial fryer","griddle","charbroiler","steamer","steam table","dish machine","dishwasher repair"]),
      ("ice_machine",["ice machine","ice maker"]),
      ("hood_exhaust",["hood cleaning","exhaust cleaning","kitchen hood"]),
      ("grease_drain",["grease trap","commercial drain","restaurant drain"]),
      ("towing_roadside",["tow truck","towing","roadside","lockout","jump start"]),
      ("mobile_tire_battery",["mobile tire","flat tire","battery replacement","car battery"]),
      ("auto_glass",["windshield","auto glass"]),
      ("vehicle_services",["mobile mechanic","mechanic comes to me","mobile car repair","on site mechanic","fleet mobile repair"]),
      ("auto_repair_shop",["auto repair","auto shop","repair shop","car repair","mechanic shop","brake repair","brakes","check engine","diagnostic","oil change","tune up","transmission","alignment","suspension","steering repair","exhaust repair","alternator","starter","engine repair","radiator","overheating"]),
      ("pet_waste",["pet waste","dog poop","pooper scooper"]),
      ("pet_sitting",["dog walking","dog walker","pet sitting","pet sitter"]),
      ("mobile_pet_grooming",["pet grooming","dog grooming","mobile groomer"]),
      ("garage_door",["garage door"]),
      ("pest_control",["pest control","exterminator","termites","rodent"]),
      ("pressure_washing",["pressure washing","power washing"]),
      ("window_cleaning",["window cleaning","window washer"]),
      ("floor_carpet",["carpet cleaning","floor cleaning","strip and wax","floor care"]),
      ("parking_lot",["parking lot","striping","parking lot sweeping"]),
      ("locksmith_access",["locksmith","rekey","access control"]),
      ("fire_safety",["fire extinguisher","fire suppression"]),
      ("backflow_plumbing",["backflow","commercial plumbing"]),
      ("rural_property",["septic","excavation","grading","water hauling","well pump","well service"]),
      ("pool_desert_property",["pool service","pool repair","pool cleaning","spa repair"]),
      ("str_property_care",["short term rental","short-term rental","airbnb","vrbo","rental turnover"]),
      ("snow_service",["snow removal","snow plow","plowing"])
    ]
    for key,terms in rules:
        if any(term in t for term in terms):
            return {"service_key":key,"confidence":0.86,"reason":"plain-language rule match"}
    return None

async def classify_with_local_ai(conn,market,scope):
    if not LOCAL_AI_ENABLED or not LOCAL_AI_URL or not scope:
        return None
    services=await conn.fetch("select service_key,display_name,category,monetization from services where is_active=true order by priority,display_name")
    allowed={r["service_key"] for r in services}
    catalog="\n".join(f'{r["service_key"]}: {r["display_name"]} — {r["category"] or ""} — {r["monetization"] or ""}' for r in services)
    prompt=f"""Classify this Arizona service request into exactly one service_key from the catalog.

Market: {market}
Request: {scope}

Catalog:
{catalog}

Return JSON only:
{{"service_key":"one_key","confidence":0.0,"reason":"short reason"}}

If no catalog item fits reliably, return service_key "unclassified". Do not invent keys."""
    payload=json.dumps({
        "model":LOCAL_AI_MODEL,
        "messages":[{"role":"user","content":prompt}],
        "stream":False,
        "format":"json",
        "options":{"temperature":0.1,"num_ctx":4096}
    }).encode()
    def call():
        req=urllib.request.Request(LOCAL_AI_URL+"/api/chat",data=payload,headers={"Content-Type":"application/json"},method="POST")
        with urllib.request.urlopen(req,timeout=15) as resp:
            return json.loads(resp.read().decode("utf-8"))
    try:
        raw=await asyncio.to_thread(call)
        content=raw.get("message",{}).get("content","")
        parsed=json.loads(content)
        key=clean(parsed.get("service_key"))
        confidence=float(parsed.get("confidence") or 0)
        if key in allowed and confidence>=0.70:
            return {"service_key":key,"confidence":confidence,"reason":clean(parsed.get("reason"))[:300]}
    except Exception:
        return None
    return None


async def local_ai_status():
    status={
      "enabled":LOCAL_AI_ENABLED,
      "url_configured":bool(LOCAL_AI_URL),
      "url":LOCAL_AI_URL or None,
      "model":LOCAL_AI_MODEL,
      "reachable":False,
      "model_available":False
    }
    if not LOCAL_AI_ENABLED or not LOCAL_AI_URL:
        return status
    def call():
        req=urllib.request.Request(LOCAL_AI_URL+"/api/tags",headers={"Accept":"application/json"})
        with urllib.request.urlopen(req,timeout=4) as resp:
            return json.loads(resp.read().decode("utf-8"))
    try:
        raw=await asyncio.to_thread(call)
        status["reachable"]=True
        names=[]
        for item in raw.get("models") or []:
            names.append(clean(item.get("name") or item.get("model")))
        status["available_models"]=names[:20]
        status["model_available"]=LOCAL_AI_MODEL in names
    except Exception as exc:
        status["error"]=str(exc)[:250]
    return status


def authoritative_source_allowed(source,side,service_key):
    key=clean(source.get("source_key") if isinstance(source,dict) else source["source_key"])
    source_type=clean(source.get("source_type") if isinstance(source,dict) else source["source_type"])
    sk=clean(service_key)
    if source_type=="verification" or key=="az_acc_entities":
        return False
    if side=="vendor":
        if key=="az_opm_registry":
            return sk=="pest_control"
        if key in ("az_roc_active","az_roc_search"):
            return sk in ROC_RESEARCH_SERVICES
        return False
    if side=="buyer":
        if key in ("adhs_facilities","adhs_gis"):
            return sk in FACILITY_BUYER_RESEARCH_SERVICES
        if key in ("maricopa_food","pima_food","yavapai_food","coconino_food","mohave_food","navajo_food"):
            return sk in FOOD_FACILITY_BUYER_RESEARCH_SERVICES
    return False

def choose_authoritative_source(sources,side,service_key,research_pass):
    p=max(0,int(research_pass or 0))
    if p%2==0:
        return None
    eligible=[dict(s) for s in sources if authoritative_source_allowed(s,side,service_key)]
    if not eligible:
        return None
    return eligible[(p//2)%len(eligible)]

def build_research_query(side,market,service_name,research_method="",service_key="",research_pass=0,authoritative_source=None):
    service=clean(service_name).replace('"'," ")
    place=clean(market).replace('"'," ")
    method=clean(research_method).upper()
    p=max(0,int(research_pass or 0))
    variant=min(p,3)
    if authoritative_source:
        domain=clean(authoritative_source.get("source_domain"))
        hint=clean(authoritative_source.get("query_hint")).replace('"'," ")
        if side=="vendor":
            return f'site:{domain} "{place}" "{service}" {hint} -jobs -careers'.strip()
        return f'site:{domain} "{place}" {hint}'.strip()
    if side=="vendor":
        context=MARKET_RESEARCH_CONTEXT.get(place,"") if clean(service_key) in ENVIRONMENT_SENSITIVE_SERVICES else ""
        variants=(
          f'"{service}" "{place}" Arizona company service contractor',
          f'"{service}" "{place}" Arizona repair maintenance provider',
          f'"{service}" "{place}" Arizona local business services',
          f'"{service}" "{place}" Arizona commercial residential contractor'
        )
        return f'{variants[variant]} {context} -jobs -careers'.strip()
    if "PROCUREMENT" in method or "PUBLIC BID" in method:
        variants=(
          f'"{place}" Arizona bid RFP solicitation contract "{service}"',
          f'"{place}" Arizona purchasing procurement RFQ "{service}"',
          f'"{place}" Arizona vendor bid opportunity "{service}"',
          f'"{place}" Arizona facilities contract solicitation "{service}"'
        )
        return variants[variant]
    if "B2B" in method:
        hints=BUYER_RESEARCH_HINTS.get(clean(service_key),BUYER_RESEARCH_HINTS["facility_maintenance"])
        variants=(
          f'"{place}" Arizona ({hints}) "{service}"',
          f'"{place}" Arizona ({hints}) facilities "{service}"',
          f'"{place}" Arizona ({hints}) operations "{service}"',
          f'"{place}" Arizona ({hints}) management "{service}"'
        )
        return variants[variant]
    variants=(
      f'"{place}" Arizona business organization "{service}"',
      f'"{place}" Arizona company facilities "{service}"',
      f'"{place}" Arizona organization operations "{service}"',
      f'"{place}" Arizona business management "{service}"'
    )
    return variants[variant]

def classify_public_opportunity_service(text):
    t=clean(text).lower()
    rules=(
      (("locksmith","rekey","access control"),"locksmith_access"),
      (("janitorial","custodial","commercial cleaning","cleaning services"),"commercial_cleaning"),
      (("landscap","grounds maintenance","irrigation maintenance"),"landscaping"),
      (("tree service","tree trimming","arborist","vegetation management"),"tree_service"),
      (("hvac","heating","cooling","air conditioning"),"hvac_heat"),
      (("backflow","plumbing","plumber"),"backflow_plumbing"),
      (("pest control","exterminat"),"pest_control"),
      (("parking lot","striping","parking maintenance","pavement marking","sweeping"),"parking_lot"),
      (("fire extinguisher","fire suppression","fire safety"),"fire_safety"),
      (("sign repair","signage","lighting repair","street lighting"),"sign_lighting"),
      (("window cleaning","window washing"),"window_cleaning"),
      (("carpet cleaning","floor care","flooring maintenance"),"floor_carpet"),
      (("duct cleaning","dryer vent","air duct"),"duct_vent"),
      (("ice machine","ice maker"),"ice_machine"),
      (("hood cleaning","kitchen exhaust","exhaust cleaning"),"hood_exhaust"),
      (("restaurant equipment","commercial kitchen equipment","foodservice equipment"),"restaurant_equipment"),
      (("laundry","linen rental","linen service"),"linen_laundry"),
      (("septic","wastewater pumping"),"rural_property"),
      (("junk removal","solid waste hauling","hauling services"),"junk_hauling"),
      (("garage door",),"garage_door"),
      (("fleet maintenance","vehicle maintenance","automotive repair","auto repair","vehicle repair"),"auto_repair_shop"),
      (("towing service","tow truck","roadside assistance"),"towing_roadside"),
      (("electrical service","electrical maintenance","electrician"),"electrical_service"),
      (("facility maintenance","facilities maintenance","building maintenance","job order contracting","citywide construction"),"facility_maintenance")
    )
    for needles,key in rules:
        if any(n in t for n in needles):
            return key
    return None

def public_source_host_allowed(host,domain):
    h=clean(host).lower()
    d=clean(domain).lower()
    return bool(h and d and (h==d or h.endswith("."+d)))

async def search_research_web(query,pageno=1,result_limit=None):
    if not RESEARCH_SEARCH_ENABLED or not RESEARCH_SEARCH_URL:
        return []
    limit=max(1,min(20,int(result_limit or RESEARCH_SEARCH_RESULTS)))
    params=urllib.parse.urlencode({
        "q":query,
        "format":"json",
        "language":"en-US",
        "safesearch":"1",
        "pageno":max(1,int(pageno or 1))
    })
    url=RESEARCH_SEARCH_URL+("&" if "?" in RESEARCH_SEARCH_URL else "?")+params
    def call():
        req=urllib.request.Request(url,headers={
            "User-Agent":"BMC-Luminary-Research/1.0",
            "Accept":"application/json"
        })
        with urllib.request.urlopen(req,timeout=25) as resp:
            return json.loads(resp.read(2_000_000).decode("utf-8","replace"))
    raw=await asyncio.to_thread(call)
    out=[]
    for item in (raw.get("results") or [])[:limit]:
        source_url=clean(item.get("url"))
        try:
            parsed=urllib.parse.urlparse(source_url)
        except Exception:
            continue
        if parsed.scheme not in ("http","https") or not parsed.netloc:
            continue
        host=(parsed.hostname or "").lower()
        if host.startswith("www."): host=host[4:]
        out.append({
            "title":clean(item.get("title"))[:500],
            "url":source_url[:3000],
            "domain":host[:255],
            "snippet":clean(item.get("content") or item.get("snippet"))[:3000],
            "engine":clean(item.get("engine"))[:100],
            "score":item.get("score")
        })
    return out

async def fetch_json_url(url,params=None,timeout=30,max_bytes=8_000_000):
    target=url
    if params:
        encoded=urllib.parse.urlencode(params)
        target=url+("&" if "?" in url else "?")+encoded

    def call_once():
        req=urllib.request.Request(target,headers={
            "User-Agent":"BMC-Luminary-Research/1.0",
            "Accept":"application/json"
        })
        with urllib.request.urlopen(req,timeout=timeout) as resp:
            return json.loads(resp.read(max_bytes).decode("utf-8","replace"))

    # Public data APIs can throttle or transiently fail during batch research.
    # Retry only transient transport/server failures; do not hide permanent 4xx errors.
    delays=(3,8,18,35,60)
    for attempt in range(len(delays)+1):
        try:
            return await asyncio.to_thread(call_once)
        except urllib.error.HTTPError as exc:
            transient=(exc.code==429 or 500<=exc.code<=599)
            if not transient or attempt>=len(delays):
                raise
            retry_after=clean(exc.headers.get("Retry-After")) if exc.headers else ""
            base=delays[attempt]
            try:
                if retry_after:
                    base=max(base,min(90,int(float(retry_after))))
            except (TypeError,ValueError):
                pass
            # CMS explicitly recommends incremental and randomized back-off.
            await asyncio.sleep(base+random.uniform(0.5,3.0))
        except (urllib.error.URLError,TimeoutError,OSError):
            if attempt>=len(delays):
                raise
            await asyncio.sleep(delays[attempt]+random.uniform(0.5,3.0))
    raise RuntimeError("JSON fetch retry loop exhausted")

def arcgis_date(value):
    if isinstance(value,(int,float)) and value>0:
        try:
            return datetime.fromtimestamp(value/1000,tz=timezone.utc).date().isoformat()
        except Exception:
            pass
    return clean(value) or None

def adhs_facility_services(attrs):
    return list(ADHS_FACILITY_CORE_SERVICES)

def adhs_facility_record_url(attrs):
    facid=clean(attrs.get("FACID"))
    license_number=clean(attrs.get("LICENSE_NUMBER"))
    if facid:
        where="FACID='"+facid.replace("'","''")+"'"
    elif license_number:
        where="LICENSE_NUMBER='"+license_number.replace("'","''")+"'"
    else:
        where="OBJECTID="+str(int(attrs.get("OBJECTID") or 0))
    return ADHS_FACILITIES_URL+"?"+urllib.parse.urlencode({
      "where":where,"outFields":"*","returnGeometry":"false","f":"json"
    })

def merge_source_evidence(existing,source_key,evidence):
    current=json_dict(existing)
    sources=json_dict(current.get("sources"))
    sources[clean(source_key)]=evidence
    merged=dict(current)
    merged.update(evidence)
    merged["sources"]=sources
    merged["source_key"]=clean(source_key)
    return merged

async def fetch_adhs_facility_page(market,cursor):
    place=clean(market).upper().replace("'","''")
    where=f"OPERATION_STATUS='ACTIVE' AND (UPPER(N_CITY)='{place}' OR UPPER(CITY)='{place}')"
    raw=await fetch_json_url(ADHS_FACILITIES_URL,{
      "where":where,
      "outFields":"OBJECTID,RUN_DATE,FACID,FACILITY_NAME,LICENSE_NUMBER,Telephone,TYPE,SUBTYPE,Category,ADDRESS,CITY,ZIP,COUNTY,OPERATION_STATUS,N_ADDRESS,N_CITY,N_COUNTY,N_FULLADDR,N_ZIP",
      "returnGeometry":"false",
      "orderByFields":"OBJECTID",
      "resultOffset":max(0,int(cursor or 0)),
      "resultRecordCount":ADHS_SOURCE_NATIVE_PAGE_SIZE,
      "f":"json"
    })
    if raw.get("error"):
        raise RuntimeError("ADHS ArcGIS error: "+clean(raw["error"])[:400])
    return raw

async def fetch_text_url(url,timeout=90,max_bytes=100_000_000):
    def call_once():
        req=urllib.request.Request(url,headers={
            "User-Agent":"BMC-Luminary-Research/1.0",
            "Accept":"text/csv,text/plain;q=0.9,*/*;q=0.1"
        })
        with urllib.request.urlopen(req,timeout=timeout) as resp:
            return resp.read(max_bytes).decode("utf-8-sig","replace")

    delays=(3,8,18,35,60)
    for attempt in range(len(delays)+1):
        try:
            return await asyncio.to_thread(call_once)
        except urllib.error.HTTPError as exc:
            transient=(exc.code==429 or 500<=exc.code<=599)
            if not transient or attempt>=len(delays):
                raise
            retry_after=clean(exc.headers.get("Retry-After")) if exc.headers else ""
            base=delays[attempt]
            try:
                if retry_after:
                    base=max(base,min(90,int(float(retry_after))))
            except (TypeError,ValueError):
                pass
            await asyncio.sleep(base+random.uniform(0.5,3.0))
        except (urllib.error.URLError,TimeoutError,OSError):
            if attempt>=len(delays):
                raise
            await asyncio.sleep(delays[attempt]+random.uniform(0.5,3.0))
    raise RuntimeError("Text fetch retry loop exhausted")

def normalize_cms_csv_row(row):
    out={}
    for key,value in (row or {}).items():
        normalized=re.sub(r"[^a-z0-9]+","_",clean(key).lower()).strip("_")
        if normalized:
            out[normalized]=clean(value)
    if "city_town" in out and "citytown" not in out:
        out["citytown"]=out["city_town"]
    if "county_parish" in out and "countyparish" not in out:
        out["countyparish"]=out["county_parish"]
    return out

def cms_metadata_distribution(metadata):
    for item in (metadata.get("distribution") or []):
        if not isinstance(item,dict):
            continue
        data=item.get("data") if isinstance(item.get("data"),dict) else item
        media=clean(data.get("mediaType")).lower()
        url=clean(data.get("downloadURL"))
        if url and (media=="text/csv" or url.lower().endswith(".csv")):
            return {
                "download_url":url,
                "modified":clean(metadata.get("modified")) or None,
                "released":clean(metadata.get("released")) or None
            }
    raise RuntimeError("CMS metadata did not include a CSV download URL")

async def fetch_cms_bulk_dataset(source):
    dataset_id=clean(source.get("dataset_id"))
    now=time.time()
    cached=_CMS_BULK_CACHE.get(dataset_id)
    cached_at=float(_CMS_BULK_CACHE_AT.get(dataset_id) or 0)
    if cached is not None and now-cached_at<CMS_BULK_CACHE_TTL_SECONDS:
        return cached

    metadata_url=f"{CMS_METADATA_BASE}/{urllib.parse.quote(dataset_id)}?show-reference-ids"
    metadata=await fetch_json_url(metadata_url,timeout=45,max_bytes=4_000_000)
    if not isinstance(metadata,dict):
        raise RuntimeError("CMS dataset metadata returned a non-object response")
    distribution=cms_metadata_distribution(metadata)

    csv_text=await fetch_text_url(distribution["download_url"])
    rows_by_market={}
    total_rows=0
    arizona_rows=0
    for raw_row in csv.DictReader(io.StringIO(csv_text)):
        total_rows+=1
        row=normalize_cms_csv_row(raw_row)
        if clean(row.get("state")).upper()!="AZ":
            continue
        arizona_rows+=1
        city=clean(row.get("citytown") or row.get("city_town")).upper()
        if city:
            rows_by_market.setdefault(city,[]).append(row)

    payload={
        "rows_by_market":rows_by_market,
        "download_url":distribution["download_url"],
        "dataset_modified":distribution["modified"],
        "dataset_released":distribution["released"],
        "total_rows":total_rows,
        "arizona_rows":arizona_rows
    }
    _CMS_BULK_CACHE[dataset_id]=payload
    _CMS_BULK_CACHE_AT[dataset_id]=now
    return payload

async def fetch_cms_provider_page(source,market,cursor):
    # CI and explicit non-CMS overrides retain the old query behavior.
    host=(urllib.parse.urlparse(clean(source.get("url"))).hostname or "").lower()
    use_bulk=CMS_BULK_DOWNLOAD_ENABLED and host in ("data.cms.gov","www.data.cms.gov")
    if use_bulk:
        bulk=await fetch_cms_bulk_dataset(source)
        market_rows=bulk["rows_by_market"].get(clean(market).upper(),[])
        offset=max(0,int(cursor or 0))
        results=market_rows[offset:offset+CMS_SOURCE_NATIVE_PAGE_SIZE]
        return {
            "results":results,
            "_bmc_bulk":True,
            "_bmc_download_url":bulk["download_url"],
            "_bmc_dataset_modified":bulk["dataset_modified"],
            "_bmc_total_rows":bulk["total_rows"],
            "_bmc_arizona_rows":bulk["arizona_rows"]
        }

    params={
      "offset":max(0,int(cursor or 0)),
      "limit":CMS_SOURCE_NATIVE_PAGE_SIZE,
      "conditions[0][property]":"state",
      "conditions[0][value]":"AZ",
      "conditions[0][operator]":"=",
      "conditions[1][property]":"citytown",
      "conditions[1][value]":clean(market).upper(),
      "conditions[1][operator]":"="
    }
    raw=await fetch_json_url(source["url"],params)
    if not isinstance(raw,dict):
        raise RuntimeError("CMS Provider Data returned a non-object response")
    if raw.get("error") or raw.get("errors"):
        raise RuntimeError("CMS Provider Data error: "+clean(raw.get("error") or raw.get("errors"))[:400])
    results=raw.get("results")
    if not isinstance(results,list):
        raise RuntimeError("CMS Provider Data response did not include a results list")
    return raw

def cms_buyer_record(source,row,market):
    kind=source["kind"]
    if kind=="hospital":
        identity=clean(row.get("facility_id"))
        name=clean(row.get("facility_name"))
        address=clean(row.get("address"))
        city=clean(row.get("citytown")) or market
        zip_code=clean(row.get("zip_code"))
        county=clean(row.get("countyparish"))
        phone=clean(row.get("telephone_number"))
        facility_type=clean(row.get("hospital_type")) or "Hospital"
        ownership=clean(row.get("hospital_ownership"))
        processing_date=None
    elif kind=="nursing_home":
        identity=clean(row.get("cms_certification_number_ccn"))
        name=clean(row.get("provider_name"))
        address=clean(row.get("provider_address"))
        city=clean(row.get("citytown")) or market
        zip_code=clean(row.get("zip_code"))
        county=clean(row.get("countyparish"))
        phone=clean(row.get("telephone_number"))
        facility_type=clean(row.get("provider_type")) or "Nursing Home"
        ownership=clean(row.get("ownership_type"))
        processing_date=clean(row.get("processing_date")) or None
    elif kind=="home_health":
        identity=clean(row.get("cms_certification_number_ccn"))
        name=clean(row.get("provider_name"))
        address=clean(row.get("address"))
        city=clean(row.get("citytown")) or market
        zip_code=clean(row.get("zip_code"))
        county=clean(row.get("countyparish"))
        phone=clean(row.get("telephone_number"))
        facility_type="Home Health Agency"
        ownership=clean(row.get("type_of_ownership"))
        processing_date=None
    else:
        identity=clean(row.get("cms_certification_number_ccn"))
        name=clean(row.get("facility_name"))
        address=" ".join(x for x in (
          clean(row.get("address_line_1")),clean(row.get("address_line_2"))) if x)
        city=clean(row.get("citytown")) or market
        zip_code=clean(row.get("zip_code"))
        county=clean(row.get("countyparish"))
        phone=clean(row.get("telephone_number"))
        facility_type="Hospice"
        ownership=clean(row.get("ownership_type"))
        processing_date=None
    if not identity or not name:
        return None
    evidence={
      "source_key":source["source_key"],
      "source_name":source["source_name"],
      "dataset_id":source["dataset_id"],
      "dataset_page":source["dataset_page"],
      "provider_id":identity,
      "facility_type":facility_type,
      "ownership":ownership or None,
      "address":address or None,
      "city":city or None,
      "zip_code":zip_code or None,
      "county":county or None,
      "processing_date":processing_date,
      "certification_date":clean(row.get("certification_date")) or None,
      "general_reference_only":True,
      "current_organization_contact_requires_verification":True
    }
    return {
      "identity":identity,"name":name,"phone":phone,"facility_type":facility_type,
      "evidence":evidence,"source_url":source["dataset_page"]
    }

async def next_vendor(conn,lead_id,market,service_key):
    return await conn.fetchrow("""
      select v.vendor_id,v.business_name,v.public_email,v.public_phone
      from vendors v
      join vendor_services vs on vs.vendor_id=v.vendor_id
      join vendor_markets vm on vm.vendor_id=v.vendor_id
      where vs.service_key=$1 and vm.market=$2 and v.status in ('pilot','active')
        and v.public_email is not null and v.public_email<>''
        and not exists(select 1 from lead_matches lm where lm.lead_id=$3 and lm.vendor_id=v.vendor_id)
      order by v.quality_score desc nulls last, v.updated_at asc
      limit 1
    """,service_key,market,lead_id)

async def offer_next(conn,lead):
    vendor=await next_vendor(conn,lead["lead_id"],lead["market"],lead["service_key"])
    if not vendor:
        await conn.execute("update leads set status='exception',exception_reason='no_vendor_match',updated_at=now() where lead_id=$1",lead["lead_id"])
        await conn.execute("insert into exceptions(type,lead_id,severity,summary,recommended_action) values('no_vendor_match',$1,'high',$2,$3)",
            lead["lead_id"],f"No active vendor for {lead['service_key']} in {lead['market']}","Recruit/activate vendor or manually route")
        await event(conn,"lead",lead["lead_id"],"no_vendor_match",{"market":lead["market"],"service_key":lead["service_key"]})
        return None
    token=str(uuid.uuid4())
    expiry=datetime.now(timezone.utc)+timedelta(hours=OFFER_HOURS)
    await conn.execute("""insert into lead_matches(lead_id,vendor_id,rank,status,expires_at,response_token)
      values($1,$2,1,'offered',$3,$4)""",lead["lead_id"],vendor["vendor_id"],expiry,token)
    await conn.execute("update leads set status='provider_offered',updated_at=now() where lead_id=$1",lead["lead_id"])
    link=f"{PUBLIC_SITE_URL}/provider-response/?lead_id={lead['lead_id']}&vendor_id={vendor['vendor_id']}&token={token}"
    summary=clean(lead.get("scope"))[:1200]
    service_name=await service_display_name(conn,lead["service_key"])
    body=f"""New BMC service request

Market: {lead['market']}
Service: {service_name}
Timing: {clean(lead.get('urgency')) or 'Not specified'}
Scope: {summary}

Accept or decline securely:
{link}

Only accept if this fits your territory and current capacity.
"""
    offer_html=workflow_email_html(
      f"New {service_name} request in {lead['market']}",
      [
        f"Market: {lead['market']}",
        f"Service: {service_name}",
        f"Timing: {clean(lead.get('urgency')) or 'Not specified'}",
        f"Scope: {summary}",
        "Only accept if this fits your territory and current capacity."
      ],
      "Accept or decline request",
      link
    )
    delivered=await send_mail(vendor["public_email"],f"New {service_name} request in {lead['market']}",body,offer_html)
    if not delivered:
        await conn.execute("update lead_matches set status='delivery_failed',responded_at=now() where lead_id=$1 and vendor_id=$2",lead["lead_id"],vendor["vendor_id"])
        await conn.execute("update leads set status='exception',exception_reason='provider_offer_delivery_failure',updated_at=now() where lead_id=$1",lead["lead_id"])
        await conn.execute("""insert into exceptions(type,lead_id,vendor_id,severity,summary,recommended_action)
          values('provider_offer_delivery_failure',$1,$2,'high',$3,$4)""",
          lead["lead_id"],vendor["vendor_id"],f"Could not deliver provider offer to {vendor['business_name']}","Verify outbound mail and provider email before rerouting")
        await event(conn,"lead",lead["lead_id"],"provider_offer_delivery_failed",{"vendor_id":vendor["vendor_id"]})
        return None
    await event(conn,"lead",lead["lead_id"],"provider_offered",{"vendor_id":vendor["vendor_id"]})
    return vendor

async def handle_vendor_response(conn,p):
    lead_id=clean(p.get("lead_id")); vendor_id=clean(p.get("vendor_id")); token=clean(p.get("token")); response=clean(p.get("response"))
    if not all([lead_id,vendor_id,token,response]): raise HTTPException(400,"Missing response fields")
    row=await conn.fetchrow("""select lm.*,l.market,l.service_key,l.email,l.phone,l.customer_name,l.business_name,
      l.preferred_contact,l.scope,l.urgency
      from lead_matches lm join leads l on l.lead_id=lm.lead_id
      where lm.lead_id=$1::uuid and lm.vendor_id=$2 and lm.response_token=$3 and lm.status='offered'""",lead_id,vendor_id,token)
    if not row: raise HTTPException(409,"Offer is invalid, expired, or already answered")
    if response=="accept":
        service_name=await service_display_name(conn,row["service_key"])
        vendor=await conn.fetchrow("""select vendor_id,business_name,public_email,public_phone,website
          from vendors where vendor_id=$1""",vendor_id)
        if not vendor: raise HTTPException(409,"Provider record is unavailable")
        await conn.execute("update lead_matches set status='accepted',responded_at=now() where match_id=$1",row["match_id"])
        await conn.execute("update leads set status='provider_accepted',updated_at=now() where lead_id=$1",row["lead_id"])
        await event(conn,"lead",row["lead_id"],"provider_accepted",{"vendor_id":vendor_id},vendor_id)

        job_link=f"{PUBLIC_SITE_URL}/provider-job-update/?lead_id={row['lead_id']}&vendor_id={vendor_id}&token={token}"
        customer_name=clean(row["customer_name"]) or "Customer"
        customer_business=clean(row["business_name"])
        customer_email=clean(row["email"])
        customer_phone=clean(row["phone"])
        preferred=clean(row["preferred_contact"])
        scope=clean(row["scope"])
        urgency=clean(row["urgency"])

        provider_body=f"""You accepted this BMC request. Here are the customer details you need to follow up.

Market: {row['market']}
Service: {service_name}
Customer: {customer_name}
Business / property: {customer_business or 'Not provided'}
Email: {customer_email or 'Not provided'}
Phone: {customer_phone or 'Not provided'}
Preferred contact: {preferred or 'Not specified'}
Timing: {urgency or 'Not specified'}

Scope:
{scope}

Please contact the customer promptly. After contact/estimate, close the loop here:
{job_link}

Customer information is provided only for this service request and should not be sold or used for unrelated marketing.

BMC Luminary Ventures LLC
"""
        provider_html=workflow_email_html(
          f"Customer details for your {service_name} request",
          [
            f"Market: {row['market']}",
            f"Customer: {customer_name}",
            f"Business / property: {customer_business or 'Not provided'}",
            f"Email: {customer_email or 'Not provided'}",
            f"Phone: {customer_phone or 'Not provided'}",
            f"Preferred contact: {preferred or 'Not specified'}",
            f"Timing: {urgency or 'Not specified'}",
            f"Scope: {scope}",
            "Please contact the customer promptly, then update the outcome."
          ],
          "Update job status",
          job_link
        )
        await send_mail(vendor["public_email"],f"Customer details: {service_name} in {row['market']}",provider_body,provider_html)

        provider_contact=[]
        if clean(vendor["public_phone"]): provider_contact.append(f"Phone: {clean(vendor['public_phone'])}")
        if clean(vendor["public_email"]): provider_contact.append(f"Email: {clean(vendor['public_email'])}")
        if clean(vendor["website"]): provider_contact.append(f"Website: {clean(vendor['website'])}")
        contact_block="\n".join(provider_contact) or "The provider will contact you using the details in your request."
        if customer_email:
            customer_body=f"""A provider accepted your BMC service request. Here is who will be following up with you.

Provider: {vendor['business_name']}
Market: {row['market']}
Service: {service_name}

{contact_block}

The provider is an independent business and will communicate its own pricing, scope, scheduling, warranties, and job terms directly with you. BMC will follow the request through the estimate/outcome stage.

Reference: {row['lead_id']}
BMC Luminary Ventures LLC
"""
            customer_html=workflow_email_html(
              f"Provider matched for your {service_name} request",
              [
                f"Provider: {vendor['business_name']}",
                f"Market: {row['market']}",
                f"Service: {service_name}",
                contact_block,
                "This provider is an independent business. They will give you their own pricing, scheduling, warranty, and job terms directly.",
                f"Reference: {row['lead_id']}"
              ]
            )
            await send_mail(customer_email,f"Provider matched for your {service_name} request",customer_body,customer_html)

        await event(conn,"lead",row["lead_id"],"contact_released",{
          "vendor_id":vendor_id,
          "customer_email_released":bool(customer_email),
          "customer_phone_released":bool(customer_phone)
        },"system")
        return {"ok":True,"status":"accepted","message":f"Accepted. Contact: {customer_name}; email: {customer_email or 'not provided'}; phone: {customer_phone or 'not provided'}. BMC will continue outcome follow-up."}

    await conn.execute("update lead_matches set status='declined',responded_at=now(),decline_reason=$2 where match_id=$1",row["match_id"],clean(p.get("notes")))
    await event(conn,"lead",row["lead_id"],"provider_declined",{"vendor_id":vendor_id,"reason":clean(p.get("notes"))},vendor_id)
    lead=await conn.fetchrow("select * from leads where lead_id=$1",row["lead_id"])
    await offer_next(conn,lead)
    return {"ok":True,"status":"declined","message":"Declined. BMC recorded your response and is rerouting the request."}


async def handle_vendor_pilot_activation(conn,p):
    vendor_id=clean(p.get("vendor_id"))
    if not vendor_id: raise HTTPException(400,"Vendor ID is required")
    if clean(p.get("pilot_terms")).lower()!="accepted":
        raise HTTPException(400,"Provider pilot terms must be acknowledged")
    vendor=await conn.fetchrow("select * from vendors where vendor_id=$1",vendor_id)
    if not vendor: raise HTTPException(404,"Vendor record not found")
    email=clean(p.get("email")) or clean(vendor["public_email"])
    phone=clean(p.get("phone")) or clean(vendor["public_phone"])
    website=clean(p.get("business_url")) or clean(vendor["website"])
    await conn.execute("""update vendors set
      public_email=$2,public_phone=$3,website=$4,status='pilot_pending_review',
      territory_notes=coalesce(nullif($5,''),territory_notes),
      minimum_job=coalesce(nullif($6,''),minimum_job),
      capacity=coalesce(nullif($7,''),capacity),
      license_notes=coalesce(nullif($8,''),license_notes),
      insurance_notes=coalesce(nullif($9,''),insurance_notes),
      notes=concat_ws(E'\n',nullif(notes,''),$10::text),
      updated_at=now()
      where vendor_id=$1""",
      vendor_id,email,phone,website,clean(p.get("territory")),clean(p.get("minimum_job")),
      clean(p.get("capacity")),clean(p.get("credentials")),clean(p.get("insurance")),
      "Pilot activation submitted: "+json.dumps({k:v for k,v in p.items() if k not in ("website",)}))
    await conn.execute("""insert into exceptions(type,vendor_id,severity,summary,recommended_action)
      values('pilot_activation_review',$1,'high',$2,$3)""",
      vendor_id,f"Review pilot activation: {vendor['business_name']}",
      "Verify pilot terms, territory, capacity, licensing/insurance where applicable; then move vendor to pilot if approved")
    await event(conn,"vendor",vendor_id,"pilot_activation_submitted",p,vendor_id)
    return {"ok":True,"status":"pilot_pending_review","vendor_id":vendor_id,
      "message":"Pilot details received. BMC will review the service, territory, capacity, and credentials before activating routing."}

async def handle_vendor_application(conn,p):
    business=clean(p.get("business_name")); market=clean(p.get("market"))
    if not business or not market: raise HTTPException(400,"Business name and market required")
    if clean(p.get("pilot_terms")).lower()!="accepted": raise HTTPException(400,"Provider pilot terms must be acknowledged")
    vid=f"app_{slug(business)}_{uuid.uuid4().hex[:8]}"
    await conn.execute("""insert into vendors(vendor_id,business_name,public_email,public_phone,website,status,territory_notes,minimum_job,capacity,license_notes,insurance_notes,notes)
      values($1,$2,$3,$4,$5,'applicant',$6,$7,$8,$9,$10,$11)""",
      vid,business,clean(p.get("email")),clean(p.get("phone")),clean(p.get("business_url")),
      clean(p.get("territory")),clean(p.get("minimum_job")),clean(p.get("capacity")),
      clean(p.get("credentials")),clean(p.get("insurance")),json.dumps(p))
    await conn.execute("insert into vendor_markets(vendor_id,market) values($1,$2) on conflict do nothing",vid,market)
    await conn.execute("insert into exceptions(type,vendor_id,severity,summary,recommended_action) values('vendor_application_review',$1,'normal',$2,$3)",
                       vid,f"Review vendor application: {business}","Verify services, territory, licensing/insurance where applicable")
    await event(conn,"vendor",vid,"application_received",p)
    applicant_email=clean(p.get("email"))
    if applicant_email:
        body=f"""Hi {clean(p.get("contact_name")) or business},

We received your BMC provider application for {market}.

What happens next:
1. We review the jobs and area you want.
2. We check license or insurance details when the trade requires it.
3. If the pilot is a fit, we confirm your provider status and you can start receiving matching requests.

When a request comes in, you see the job details first. You can accept it or pass. Joining the pilot is free, and any future paid lead or territory terms will be shown before they apply.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}
"""
        html_body=workflow_email_html(
          "We got your BMC provider application",
          [
            f"We received your application for {market}.",
            "Next, we review the jobs and area you want and check license or insurance details when the trade requires it.",
            "If the pilot is a fit, we confirm your provider status and you can start receiving matching requests.",
            "When a request comes in, you see the job details first. You can accept it or pass.",
            "Joining the pilot is free. Any future paid lead or territory terms will be shown before they apply."
          ],
          "Review the provider pilot terms",
          f"{PUBLIC_SITE_URL}/provider-pilot/"
        )
        await send_mail(applicant_email,"We got your BMC provider application",body,html_body)
    return {"ok":True,"status":"application_received","vendor_id":vid,"message":"Application received. We’ll review the work and area you selected, then contact you if the pilot is a fit."}



FACILITY_SERVICE_FIELDS={
    "need_commercial_cleaning":"commercial_cleaning",
    "need_floor_carpet":"floor_carpet",
    "need_window_cleaning":"window_cleaning",
    "need_landscaping":"landscaping",
    "need_tree_service":"tree_service",
    "need_junk_hauling":"junk_hauling",
    "need_pest_control":"pest_control",
    "need_hvac_heat":"hvac_heat",
    "need_electrical":"electrical_service",
    "need_handyman":"handyman_repairs",
    "need_pressure_washing":"pressure_washing",
    "need_duct_vent":"duct_vent",
    "need_parking_lot":"parking_lot",
    "need_fire_safety":"fire_safety",
    "need_sign_lighting":"sign_lighting",
    "need_locksmith_access":"locksmith_access",
    "need_backflow_plumbing":"backflow_plumbing"
}

async def handle_facility_lead(conn,p):
    market=clean(p.get("market")); consent=clean(p.get("consent")).lower()=="yes"
    if not market or not consent: raise HTTPException(400,"Market and consent are required")
    requested=[sk for field,sk in FACILITY_SERVICE_FIELDS.items() if clean(p.get(field)).lower() in ("yes","on","true","1")]
    if not requested:
        raise HTTPException(400,"Choose at least one facility service category")
    submission_id=clean(p.get("submission_id")) or str(uuid.uuid4())
    existing=await conn.fetchrow("select lead_id,status from leads where submission_id=$1",submission_id)
    if existing:return {"ok":True,"status":existing["status"],"lead_id":str(existing["lead_id"]),"message":"Facility request already received."}
    scope=clean(p.get("scope")); urgency=clean(p.get("timing")); facility_type=clean(p.get("facility_type"))
    customer_path=clean(p.get("customer_path")) or "keep_it_handled"
    score=(20 if p.get("email") or p.get("phone") else 0)+(20 if scope else 0)+40+(20 if urgency in ["ASAP","Urgent","Same day if possible"] else 0)
    parent_id=await conn.fetchval("""insert into leads(submission_id,form_type,market,service_key,service_type,customer_path,customer_name,business_name,email,phone,scope,urgency,source_page,consent,lead_score,status,raw_payload)
      values($1,'facility_maintenance',$2,'facility_maintenance',$3,$4,$5,$6,$7,$8,$9,$10,$11,true,$12,'split',$13::jsonb) returning lead_id""",
      submission_id,market,facility_type,customer_path,clean(p.get("contact_name")),clean(p.get("business_name")),clean(p.get("email")),clean(p.get("phone")),scope,urgency,clean(p.get("page")),score,json.dumps(p))
    await event(conn,"lead",parent_id,"facility_request_received",{"services":requested,"facility_type":facility_type})
    for sk in requested:
        child_id=await conn.fetchval("""insert into leads(parent_lead_id,submission_id,form_type,market,service_key,service_type,customer_path,customer_name,business_name,email,phone,scope,urgency,source_page,consent,lead_score,status,raw_payload)
          values($1,$2,'facility_child',$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,true,$14,'received',$15::jsonb) returning lead_id""",
          parent_id,f"{submission_id}:{sk}",market,sk,facility_type,customer_path,clean(p.get("contact_name")),clean(p.get("business_name")),clean(p.get("email")),clean(p.get("phone")),
          f"{facility_type}: {scope}",urgency,clean(p.get("page")),score,json.dumps(p))
        child=await conn.fetchrow("select * from leads where lead_id=$1",child_id)
        await event(conn,"lead",child_id,"facility_child_created",{"parent_lead_id":str(parent_id),"service_key":sk})
        await offer_next(conn,child)
    if p.get("email"):
        service_names=[]
        for sk in requested:
            service_names.append(await service_display_name(conn,sk))
        await send_mail(clean(p.get("email")),"We got your building request",
          f"""We received your building request in {market}.

You asked for help with:
- """+"\n- ".join(service_names)+f"""

We’ll work through these items from the same request and follow up as the next steps become clear.

Reference: {parent_id}
BMC Luminary Ventures LLC""")
    return {"ok":True,"status":"split","lead_id":str(parent_id),"child_requests":len(requested),
      "service_names":service_names if p.get("email") else [await service_display_name(conn,sk) for sk in requested],
      "message":f"Got it. We received {len(requested)} building needs and will work through them from this request."}

async def handle_lead(conn,p):
    form_type=clean(p.get("form_type")) or "general"
    market=clean(p.get("market"))
    scope=clean(p.get("scope") or p.get("problem") or p.get("notes"))
    service_type=clean(p.get("service_type"))
    customer_path=clean(p.get("customer_path") or p.get("request_goal"))
    service_key=clean(p.get("service_key")) or form_type
    ai_classification=None

    if form_type=="universal_request" and not clean(p.get("service_key")):
        service_key="unclassified"
        ai_text=(scope+"\nRequest type: "+service_type).strip()
        ai_classification=classify_with_rules(ai_text)
        if not ai_classification:
            ai_classification=await classify_with_local_ai(conn,market,ai_text)
        if ai_classification:
            service_key=ai_classification["service_key"]

    consent=clean(p.get("consent")).lower()=="yes"
    if not market or not consent:
        raise HTTPException(400,"Market and consent are required")

    service=None
    fulfillment_mode="provider_match"
    if service_key!="unclassified":
        service=await conn.fetchrow("""select service_key,display_name,fulfillment_mode
          from services where service_key=$1 and is_active=true""",service_key)
        if not service:
            service_key="unclassified"
        else:
            fulfillment_mode=clean(service["fulfillment_mode"]) or "provider_match"

    if not customer_path:
        if form_type in ("quote_sourcing","equipment_quotes"):
            customer_path="get_me_options"
        elif form_type in ("facility_maintenance","restaurant_maintenance"):
            customer_path="keep_it_handled"
        elif form_type in ("vendor_savings","waste_audit"):
            customer_path="help_me_spend_less"
        elif form_type in ("growth_pack","competitor_intel","market_expansion"):
            customer_path="help_me_get_more_customers"
        elif fulfillment_mode=="provider_match":
            customer_path="fix_or_handle_job"

    submission_id=clean(p.get("submission_id")) or str(uuid.uuid4())
    existing=await conn.fetchrow("select lead_id,status from leads where submission_id=$1",submission_id)
    if existing:
        return {"ok":True,"status":existing["status"],"lead_id":str(existing["lead_id"]),"message":"Request already received."}

    urgency=clean(p.get("timing") or p.get("urgency"))
    score=(20 if p.get("email") or p.get("phone") else 0)+(20 if scope else 0)+20+20+(20 if urgency in ["ASAP","Urgent","Same day if possible"] else 0)
    if service_key=="unclassified":
        status="needs_classification"
    elif fulfillment_mode=="provider_match":
        status="received"
    else:
        status="internal_queue"

    lead_id=await conn.fetchval("""insert into leads(submission_id,form_type,market,service_key,service_type,customer_path,customer_name,business_name,email,phone,preferred_contact,scope,urgency,source_page,consent,lead_score,status,raw_payload)
      values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,true,$15,$16,$17::jsonb) returning lead_id""",
      submission_id,form_type,market,service_key,service_type,customer_path,clean(p.get("contact_name")),clean(p.get("business_name")),
      clean(p.get("email")),clean(p.get("phone")),clean(p.get("preferred_contact")),scope,urgency,clean(p.get("page")),score,status,json.dumps(p))

    await event(conn,"lead",lead_id,"received",{
      "service_key":service_key,"market":market,"customer_path":customer_path,"fulfillment_mode":fulfillment_mode,"ai_classification":ai_classification
    })

    order_id=None
    stripe_session_id=clean(p.get("stripe_session_id"))
    if stripe_session_id:
        order=await conn.fetchrow("""select order_id,payment_status from orders
          where stripe_checkout_session_id=$1""",stripe_session_id)
        if order:
            order_id=order["order_id"]
            order_status="ready_for_fulfillment" if clean(order["payment_status"]) in ("paid","complete") else "intake_received"
            await conn.execute("""update orders set intake_submission_id=$2,lead_id=$3,status=$4,updated_at=now()
              where order_id=$1""",order_id,submission_id,lead_id,order_status)
            await event(conn,"order",order_id,"intake_linked",{"lead_id":str(lead_id),"submission_id":submission_id})

    if p.get("email"):
        workflow_text="We’re looking for the right participating provider now." if fulfillment_mode=="provider_match" else "BMC is reviewing the request and will move it to the right next step."
        receipt_service_name=(clean(service["display_name"]) if service else service_key.replace("_"," ").title())
        receipt_body=f"We received your request for {receipt_service_name} in {market}.\n\n{workflow_text}\n\nReference: {lead_id}\nBMC Luminary Ventures LLC"
        receipt_html=workflow_email_html("BMC received your request",[
          f"We received your request for {receipt_service_name} in {market}.",
          workflow_text,
          f"Reference: {lead_id}"
        ])
        await send_mail(clean(p.get("email")),"BMC received your request",receipt_body,receipt_html)

    if service_key=="unclassified":
        await conn.execute("""insert into exceptions(type,lead_id,severity,summary,recommended_action)
          values('classification_needed',$1,'normal',$2,$3)""",
          lead_id,f"Request needs classification: {scope[:250]}","Classify service_key, then route")
        return {"ok":True,"status":"needs_classification","lead_id":str(lead_id),
          "service_key":"unclassified","service_name":None,
          "message":"We got your request. It needs one more classification step before we can send it to the right place."}

    display_name=clean(service["display_name"]) if service else service_key.replace("_"," ").title()

    if fulfillment_mode=="provider_match":
        lead=await conn.fetchrow("select * from leads where lead_id=$1",lead_id)
        await offer_next(conn,lead)
        final_status=await conn.fetchval("select status from leads where lead_id=$1",lead_id)
        if final_status=="provider_offered":
            message=f"We matched this to {display_name}. We’re checking whether a provider can take the job."
        elif final_status=="exception":
            message=f"We matched this to {display_name}, but we could not send it to an active provider automatically yet. BMC will review the next option."
        else:
            message=f"We matched this to {display_name} and started the next step."
        return {"ok":True,"status":final_status,"lead_id":str(lead_id),
          "service_key":service_key,"service_name":display_name,"message":message}

    task_type={
      "internal_delivery":"fulfill_internal_product",
      "managed_sourcing":"managed_sourcing",
      "managed_concierge":"managed_concierge",
      "facility_split":"facility_triage"
    }.get(fulfillment_mode,"internal_review")
    summary=f"{display_name}: {clean(p.get('business_name')) or clean(p.get('contact_name')) or 'customer'} in {market}"
    task_id=await conn.fetchval("""insert into tasks(lead_id,order_id,service_key,task_type,status,priority,summary,payload)
      values($1,$2,$3,$4,'open',$5,$6,$7::jsonb) returning task_id""",
      lead_id,order_id,service_key,task_type,"high" if urgency in ["ASAP","Urgent","Same day if possible"] else "normal",summary,json.dumps(p))
    await event(conn,"task",task_id,"created",{"lead_id":str(lead_id),"service_key":service_key,"fulfillment_mode":fulfillment_mode})
    return {"ok":True,"status":"internal_queue","lead_id":str(lead_id),"task_id":str(task_id),
      "service_key":service_key,"service_name":display_name,
      "message":f"We matched this to {display_name}. BMC has queued the next step."}


async def handle_job_update(conn,p):
    lead_id=clean(p.get("lead_id")); vendor_id=clean(p.get("vendor_id")); token=clean(p.get("token")); status=clean(p.get("job_status"))
    if not all([lead_id,vendor_id,token,status]): raise HTTPException(400,"Missing job update fields")
    if status not in ("contacted","estimate","won","lost"): raise HTTPException(400,"Invalid job status")
    row=await conn.fetchrow("""select lm.*,l.market,l.service_key,l.email,l.customer_name
      from lead_matches lm join leads l on l.lead_id=lm.lead_id
      where lm.lead_id=$1::uuid and lm.vendor_id=$2 and lm.response_token=$3
        and lm.status in ('accepted','contacted','estimate')""",lead_id,vendor_id,token)
    if not row: raise HTTPException(409,"Job link is invalid or this match is already closed")
    amount=clean(p.get("quoted_amount"))
    cents=None
    if amount:
        try: cents=int(round(float(amount.replace("$","").replace(",",""))*100))
        except ValueError: cents=None
    notes=clean(p.get("notes"))
    if status=="contacted":
        await conn.execute("update lead_matches set status='contacted',contacted_at=coalesce(contacted_at,now()),last_followup_at=now() where match_id=$1",row["match_id"])
        await conn.execute("update leads set status='contacted',updated_at=now() where lead_id=$1",row["lead_id"])
    elif status=="estimate":
        await conn.execute("update lead_matches set status='estimate',estimate_at=coalesce(estimate_at,now()),quoted_amount_cents=coalesce($2,quoted_amount_cents),last_followup_at=now() where match_id=$1",row["match_id"],cents)
        await conn.execute("update leads set status='estimate',updated_at=now() where lead_id=$1",row["lead_id"])
    elif status=="won":
        await conn.execute("update lead_matches set status='won',won_at=now(),quoted_amount_cents=coalesce($2,quoted_amount_cents),last_followup_at=now() where match_id=$1",row["match_id"],cents)
        await conn.execute("update leads set status='won',updated_at=now() where lead_id=$1",row["lead_id"])
    else:
        await conn.execute("update lead_matches set status='lost',lost_at=now(),decline_reason=$2,last_followup_at=now() where match_id=$1",row["match_id"],notes)
        await conn.execute("update leads set status='lost',updated_at=now() where lead_id=$1",row["lead_id"])
    await event(conn,"lead",row["lead_id"],"job_"+status,{"vendor_id":vendor_id,"quoted_amount_cents":cents,"notes":notes},vendor_id)
    return {"ok":True,"status":status,"message":"Job status recorded. Thank you for closing the loop with BMC."}

RELATED_SERVICE_KEYS={
  "restaurant_equipment":["restaurant_repair","restaurant_maintenance","equipment_quotes"],
  "restaurant_repair":["restaurant_equipment","ice_machine","restaurant_maintenance"],
  "realtor_listing_prep":["home_staging","turnover_cleaning","junk_hauling","landscaping"],
  "facility_maintenance":["commercial_cleaning","handyman_repairs","electrical_service","hvac_heat"],
  "vendor_savings":["quote_sourcing","waste_audit"],
  "growth_pack":["competitor_intel","market_expansion"],
  "electrical_service":["handyman_repairs","facility_maintenance"],
  "hvac_heat":["handyman_repairs","facility_maintenance"],
  "vehicle_services":["auto_repair_shop","towing_roadside","mobile_tire_battery","auto_glass"],
  "auto_repair_shop":["vehicle_services","towing_roadside","mobile_tire_battery","auto_glass"],
  "pet_sitting":["mobile_pet_grooming","pet_waste"]
}

@app.post("/api/service-search")
async def service_search(request:Request):
    p=await request.json()
    query=clean(p.get("query") or p.get("problem"))
    market=clean(p.get("market")) or "Arizona"
    if len(query)<2:
        raise HTTPException(400,"Tell us what you need help with")
    async with app.state.pool.acquire() as conn:
        classification=classify_with_rules(query)
        source="rules"
        if not classification:
            classification=await classify_with_local_ai(conn,market,query)
            source="local_ai" if classification else "none"
        if not classification:
            return {"ok":True,"query":query,"source":"none","match":None,"related":[]}
        key=classification["service_key"]
        row=await conn.fetchrow("""select service_key,display_name,live_front,category,fulfillment_mode
          from services where service_key=$1 and is_active=true""",key)
        if not row:
            return {"ok":True,"query":query,"source":"none","match":None,"related":[]}
        related=[]
        for related_key in RELATED_SERVICE_KEYS.get(key,[])[:4]:
            rr=await conn.fetchrow("""select service_key,display_name,live_front,category,fulfillment_mode
              from services where service_key=$1 and is_active=true""",related_key)
            if rr: related.append(dict(rr))
        return {
          "ok":True,
          "query":query,
          "source":source,
          "confidence":float(classification.get("confidence") or 0),
          "reason":clean(classification.get("reason")),
          "match":dict(row),
          "related":related
        }

@app.post("/api/provider/request-login")
async def provider_request_login(request:Request):
    p=await request.json()
    email_address=clean(p.get("email")).lower()
    if not email_address or "@" not in email_address:
        raise HTTPException(400,"Enter a valid email address")
    generic={"ok":True,"message":"If that email belongs to an active BMC provider, a login link is on the way."}
    async with app.state.pool.acquire() as conn:
        vendor=await conn.fetchrow("""select * from vendors
          where lower(public_email)=lower($1) and status in ('pilot','active','paused')
          order by updated_at desc limit 1""",email_address)
        if not vendor:
            return generic
        recent_requests=await conn.fetchval("""select count(*) from events
          where entity_type='vendor' and entity_id=$1 and event_type='portal_login_requested'
            and occurred_at>now()-interval '10 minutes'""",vendor["vendor_id"])
        if int(recent_requests or 0)>=3:
            return generic
        token,expires=await issue_vendor_portal_token(conn,vendor["vendor_id"])
        link=provider_dashboard_url(token)
        body=f"""Hi {vendor['business_name']},

Use this secure link to open your BMC provider dashboard:

{link}

The link expires on {expires.strftime('%B %d, %Y')}. If you did not request this, you can ignore this email.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}
"""
        html_body=workflow_email_html(
          "Open your BMC provider dashboard",
          [
            f"Hi {vendor['business_name']},",
            "Use the secure button below to open your provider dashboard.",
            f"This login link expires on {expires.strftime('%B %d, %Y')}.",
            "If you did not request this, you can ignore this email."
          ],
          "Open provider dashboard",
          link
        )
        await send_mail(clean(vendor["public_email"]),"Your BMC provider login link",body,html_body)
        await event(conn,"vendor",vendor["vendor_id"],"portal_login_requested",{"email":email_address},"provider")
    return generic

@app.get("/api/provider/dashboard")
async def provider_dashboard(token:str):
    async with app.state.pool.acquire() as conn:
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"This provider login link is invalid or expired")
        services=await conn.fetch("""select s.service_key,s.display_name
          from vendor_services vs join services s on s.service_key=vs.service_key
          where vs.vendor_id=$1 order by s.display_name""",vendor["vendor_id"])
        markets=await conn.fetch("""select market from vendor_markets where vendor_id=$1 order by market""",vendor["vendor_id"])
        opportunities=await conn.fetch("""select lm.match_id,lm.status,lm.offered_at,lm.expires_at,
            l.lead_id,l.market,l.service_key,s.display_name,l.scope,l.urgency
          from lead_matches lm join leads l on l.lead_id=lm.lead_id
          left join services s on s.service_key=l.service_key
          where lm.vendor_id=$1 and lm.status='offered'
            and (lm.expires_at is null or lm.expires_at>now())
          order by lm.offered_at desc limit 25""",vendor["vendor_id"])
        active=await conn.fetch("""select lm.match_id,lm.status,lm.responded_at,lm.contacted_at,lm.estimate_at,
            lm.quoted_amount_cents,l.lead_id,l.market,l.service_key,s.display_name,l.scope,l.urgency,
            l.customer_name,l.business_name,l.email,l.phone,l.preferred_contact
          from lead_matches lm join leads l on l.lead_id=lm.lead_id
          left join services s on s.service_key=l.service_key
          where lm.vendor_id=$1 and lm.status in ('accepted','contacted','estimate')
          order by coalesce(lm.responded_at,lm.offered_at) desc limit 25""",vendor["vendor_id"])
        recent=await conn.fetch("""select lm.match_id,lm.status,lm.won_at,lm.lost_at,lm.responded_at,
            lm.quoted_amount_cents,l.market,s.display_name
          from lead_matches lm join leads l on l.lead_id=lm.lead_id
          left join services s on s.service_key=l.service_key
          where lm.vendor_id=$1 and lm.status in ('won','lost','declined','expired')
          order by coalesce(lm.won_at,lm.lost_at,lm.responded_at,lm.offered_at) desc limit 20""",vendor["vendor_id"])
        stats=await conn.fetchrow("""select
            count(*) filter(where status='won') as won,
            count(*) filter(where status='lost') as lost,
            count(*) filter(where status='declined') as declined,
            count(*) filter(where status in ('accepted','contacted','estimate')) as active
          from lead_matches where vendor_id=$1""",vendor["vendor_id"])
        return {
          "ok":True,
          "provider":{
            "vendor_id":vendor["vendor_id"],"business_name":vendor["business_name"],
            "status":vendor["status"],"public_email":vendor["public_email"],
            "public_phone":vendor["public_phone"],"website":vendor["website"],
            "territory_notes":vendor["territory_notes"],"minimum_job":vendor["minimum_job"],
            "capacity":vendor["capacity"],"after_hours":vendor["after_hours"],
            "services":[dict(r) for r in services],
            "markets":[r["market"] for r in markets]
          },
          "opportunities":[dict(r) for r in opportunities],
          "active_jobs":[dict(r) for r in active],
          "recent":[dict(r) for r in recent],
          "stats":dict(stats) if stats else {}
        }

@app.post("/api/provider/respond")
async def provider_portal_respond(request:Request):
    p=await request.json()
    token=clean(p.get("token")); match_id=clean(p.get("match_id")); response=clean(p.get("response")).lower()
    if response not in ("accept","decline"):
        raise HTTPException(400,"Choose accept or decline")
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"Provider login expired")
        match=await conn.fetchrow("""select lm.lead_id,lm.response_token
          from lead_matches lm where lm.match_id=$1::uuid and lm.vendor_id=$2 and lm.status='offered'""",
          match_id,vendor["vendor_id"])
        if not match:
            raise HTTPException(409,"This opportunity is no longer available")
        result=await handle_vendor_response(conn,{
          "lead_id":str(match["lead_id"]),"vendor_id":vendor["vendor_id"],
          "token":match["response_token"],"response":response,"notes":clean(p.get("notes"))
        })
        await event(conn,"vendor",vendor["vendor_id"],"portal_opportunity_"+response,{"match_id":match_id},"provider")
        return result

@app.post("/api/provider/job-update")
async def provider_portal_job_update(request:Request):
    p=await request.json()
    token=clean(p.get("token")); match_id=clean(p.get("match_id"))
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"Provider login expired")
        match=await conn.fetchrow("""select lead_id,response_token from lead_matches
          where match_id=$1::uuid and vendor_id=$2""",match_id,vendor["vendor_id"])
        if not match:
            raise HTTPException(404,"Job not found")
        result=await handle_job_update(conn,{
          "lead_id":str(match["lead_id"]),"vendor_id":vendor["vendor_id"],
          "token":match["response_token"],"job_status":clean(p.get("job_status")),
          "quoted_amount":clean(p.get("quoted_amount")),"notes":clean(p.get("notes"))
        })
        return result

@app.post("/api/provider/settings")
async def provider_portal_settings(request:Request):
    p=await request.json()
    token=clean(p.get("token"))
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"Provider login expired")
        vid=vendor["vendor_id"]
        services=[clean(x) for x in (p.get("services") or []) if clean(x)][:30]
        markets=[clean(x)[:100] for x in (p.get("markets") or []) if clean(x)][:20]
        valid_services=[]
        additions=[]
        removals=[]
        if services:
            rows=await conn.fetch("select service_key from services where service_key=any($1::text[]) and is_active=true",services)
            valid_services=[r["service_key"] for r in rows]
            current_rows=await conn.fetch("select service_key from vendor_services where vendor_id=$1",vid)
            current={r["service_key"] for r in current_rows}
            requested=set(valid_services)
            additions=sorted(requested-current)
            removals=sorted(current-requested)
        await conn.execute("""update vendors set
          public_phone=coalesce(nullif($2,''),public_phone),
          website=coalesce(nullif($3,''),website),
          territory_notes=$4,minimum_job=$5,capacity=$6,after_hours=$7,updated_at=now()
          where vendor_id=$1""",
          vid,clean(p.get("public_phone")),clean(p.get("website")),
          clean(p.get("territory_notes")),clean(p.get("minimum_job")),
          clean(p.get("capacity")),clean(p.get("after_hours")))
        if services:
            for sk in removals:
                await conn.execute("delete from vendor_services where vendor_id=$1 and service_key=$2",vid,sk)
            if additions:
                open_review=await conn.fetchval("""select exception_id from exceptions
                  where vendor_id=$1 and type='provider_service_change_review' and status='open'
                  order by created_at desc limit 1""",vid)
                if not open_review:
                    await conn.execute("""insert into exceptions(type,vendor_id,severity,summary,recommended_action)
                      values('provider_service_change_review',$1,'normal',$2,$3)""",
                      vid,f"Provider requested additional services: {vendor['business_name']}",
                      "Review requested service additions and any credential/license requirements before adding them")
                await event(conn,"vendor",vid,"portal_service_additions_requested",{"services":additions},"provider")
        if markets:
            await conn.execute("delete from vendor_markets where vendor_id=$1",vid)
            for market in markets:
                await conn.execute("insert into vendor_markets(vendor_id,market) values($1,$2) on conflict do nothing",vid,market)
        await event(conn,"vendor",vid,"portal_settings_updated",{
          "requested_services":valid_services if services else None,
          "removed_services":removals if services else None,
          "pending_service_additions":additions if services else None,
          "markets":markets if markets else None,
          "capacity":clean(p.get("capacity")),"minimum_job":clean(p.get("minimum_job"))
        },"provider")
        message="Provider settings updated."
        if additions:
            message+=" New service types are pending BMC review before they can receive jobs."
        return {"ok":True,"message":message,"pending_service_additions":additions}

@app.post("/api/provider/availability")
async def provider_portal_availability(request:Request):
    p=await request.json()
    token=clean(p.get("token"))
    action=clean(p.get("action")).lower()
    if action not in ("pause","resume"):
        raise HTTPException(400,"Choose pause or resume")
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        vendor=await vendor_from_portal_token(conn,token)
        if not vendor:
            raise HTTPException(401,"Provider login expired")
        vid=vendor["vendor_id"]
        current=clean(vendor["status"])
        if action=="pause":
            if current=="paused":
                return {"ok":True,"status":"paused","message":"New BMC opportunities are already paused."}
            if current not in ("pilot","active"):
                raise HTTPException(409,"This provider account cannot be paused from its current status")
            await conn.execute("update vendors set status='paused',updated_at=now() where vendor_id=$1",vid)
            await event(conn,"vendor",vid,"provider_paused",{"previous_status":current},"provider")
            return {"ok":True,"status":"paused","message":"New BMC opportunities are paused. Active jobs stay on your dashboard."}

        if current!="paused":
            return {"ok":True,"status":current,"message":"New BMC opportunities are already enabled."}
        previous=await conn.fetchval("""select payload->>'previous_status' from events
          where entity_type='vendor' and entity_id=$1 and event_type='provider_paused'
          order by occurred_at desc limit 1""",vid)
        resume_status=previous if previous in ("pilot","active") else "pilot"
        await conn.execute("update vendors set status=$2,updated_at=now() where vendor_id=$1",vid,resume_status)
        await event(conn,"vendor",vid,"provider_resumed",{"status":resume_status},"provider")
        return {"ok":True,"status":resume_status,"message":"New BMC opportunities are turned back on."}

@app.get("/health")
async def health():
    async with app.state.pool.acquire() as conn:
        await conn.fetchval("select 1")
    return {"ok":True,"service":"bmc-ops-api"}

@app.post("/api/intake")
async def intake(request:Request):
    p=await request.json()
    async with app.state.pool.acquire() as conn:
        async with conn.transaction():
            ft=clean(p.get("form_type"))
            if ft=="vendor_response": return await handle_vendor_response(conn,p)
            if ft=="job_update": return await handle_job_update(conn,p)
            if ft=="vendor_pilot_activation": return await handle_vendor_pilot_activation(conn,p)
            if ft=="vendor_partner": return await handle_vendor_application(conn,p)
            if ft=="facility_maintenance": return await handle_facility_lead(conn,p)
            return await handle_lead(conn,p)

@app.post("/api/process-expired")
async def process_expired(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    count=0
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        expired=await conn.fetch("""select distinct l.* from leads l join lead_matches lm on lm.lead_id=l.lead_id
          where lm.status='offered' and lm.expires_at<now()""")
        for lead in expired:
          await conn.execute("update lead_matches set status='expired',responded_at=now() where lead_id=$1 and status='offered' and expires_at<now()",lead["lead_id"])
          await offer_next(conn,lead); count+=1
    return {"ok":True,"processed":count}


@app.post("/api/process-followups")
async def process_followups(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    sent=0
    async with app.state.pool.acquire() as conn:
      rows=await conn.fetch("""select lm.*,v.public_email,v.business_name,l.market,l.service_key,
          coalesce(s.display_name,l.service_key) as service_name
        from lead_matches lm
        join vendors v on v.vendor_id=lm.vendor_id
        join leads l on l.lead_id=lm.lead_id
        left join services s on s.service_key=l.service_key
        where v.public_email is not null and v.public_email<>''
          and (
            (lm.status='accepted' and lm.responded_at < now()-interval '4 hours') or
            (lm.status='contacted' and lm.contacted_at < now()-interval '24 hours') or
            (lm.status='estimate' and lm.estimate_at < now()-interval '48 hours')
          )
          and (lm.last_followup_at is null or lm.last_followup_at < now()-interval '24 hours')
        order by coalesce(lm.last_followup_at,lm.responded_at,lm.offered_at) asc limit 100""")
      for row in rows:
        service_name=clean(row["service_name"]) or clean(row["service_key"]) or "service"
        link=f"{PUBLIC_SITE_URL}/provider-job-update/?lead_id={row['lead_id']}&vendor_id={row['vendor_id']}&token={row['response_token']}"
        dashboard_login=f"{PUBLIC_SITE_URL}/provider-login/"
        ok=await send_mail(row["public_email"],f"Update BMC request: {service_name} in {row['market']}",
          f"""Please update the outcome of the BMC request you accepted.

Market: {row['market']}
Service: {service_name}

Mark the job contacted, estimate sent, won, or lost:
{link}

For all BMC jobs and matching settings, use Provider Login:
{dashboard_login}

Closing the loop helps BMC send work that fits your business.
""")
        if ok:
          await conn.execute("update lead_matches set last_followup_at=now() where match_id=$1",row["match_id"])
          await event(conn,"lead",row["lead_id"],"provider_followup_sent",{"vendor_id":row["vendor_id"]})
          sent+=1
    return {"ok":True,"sent":sent}


def pilot_activation_url(row):
    params=urllib.parse.urlencode({
      "vendor_id":clean(row["entity_id"]),
      "business_name":clean(row["business_name"]),
      "market":clean(row["market"])
    })
    return f"{PILOT_ACTIVATION_URL}?{params}"

def provider_service_label(row):
    name=clean(row.get("service_name") if hasattr(row,"get") else "")
    if name:
        return name
    raw=clean(row["service_key"])
    return raw.replace("_"," ").replace(" service","").strip().title() or "local service"

def first_wave_vendor_copy(row,step):
    market=clean(row["market"]) or "your area"
    service=provider_service_label(row)
    business=clean(row["business_name"])
    activation=pilot_activation_url(row)
    if step==1:
        subject=f"{market}: open to a few more {service.lower()} jobs?"
        body=f"""Hi {business},

Are you open to a few more {service.lower()} jobs in {market} if you can see the job details before deciding?

BMC Service Network is opening a small provider pilot in Arizona. There is no fee to join.

You tell us:
- where you work
- the jobs you want
- your minimum job size
- how much work you can take

When a matching customer request comes in, you can review the job type, area, timing, and customer notes before deciding. If it fits, accept it. If it does not, pass. Passing does not create a charge.

During the pilot, some opportunities may be free or discounted. If BMC introduces paid leads or territory options later, the price and terms will be shown before you choose to participate.

Join the pilot here:
{activation}

No sales call is required.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    elif step==2:
        subject=f"Re: more {service.lower()} work in {market}"
        body=f"""Hi {business},

Just following up once.

If you want more {service.lower()} work in {market}, BMC lets you set the area, job types, minimum job size, and capacity you want. You see the customer request before deciding whether it fits.

There is no fee to join the pilot:
{activation}

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    else:
        subject=f"Closing this out: {market} {service.lower()} pilot"
        body=f"""Hi {business},

Last note from me.

If you want to be considered for local {service.lower()} requests in {market}, you can join the free BMC pilot here:
{activation}

If not, no action is needed and we will close this out.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no to suppress future outreach."""
    return subject,body

def vendor_recruitment_copy(row,step):
    market=clean(row["market"]) or "your area"
    service=provider_service_label(row)
    business=clean(row["business_name"])
    signal=clean(row["association_signal"])
    credibility=f" I found your business through {signal}." if signal else ""
    activation=pilot_activation_url(row)
    if step==1:
        subject=f"{market}: want more {service.lower()} jobs?"
        body=f"""Hi {business},

Are you open to more {service.lower()} work in {market}?{credibility}

BMC Service Network is opening its provider network in Arizona. There is no fee to join.

You tell us where you work, what jobs you want, your minimum job size, and your capacity. When a matching customer request comes in, you review the job details first and decide whether to accept it or pass.

Set your provider preferences here:
{activation}

Some early opportunities may be free or discounted. If BMC introduces paid leads or territory options later, the price and terms will be shown before you choose to participate.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    elif step==2:
        subject=f"Re: {service.lower()} work in {market}"
        body=f"""Hi {business},

Following up once in case more {service.lower()} work in {market} would be useful.

Joining the BMC provider network is free. You set the jobs and area you want, your minimum job size, and your capacity, then review matching requests before accepting or passing.

Your provider setup link:
{activation}

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    else:
        subject=f"Last note: {market} {service.lower()} work"
        body=f"""Hi {business},

Last note from me.

If you want BMC to consider your business for matching {service.lower()} requests in {market}, your provider setup link is here:
{activation}

If not, no action is needed.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no to suppress future outreach."""
    return subject,body

@app.get("/api/admin/outreach-wave-preview")
async def admin_outreach_wave_preview(
    side:str,
    wave:str,
    limit:int=25,
    x_bmc_admin_key:str|None=Header(default=None)
):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY:
        raise HTTPException(403,"Forbidden")
    side=clean(side).lower()
    wave=clean(wave)
    if side not in ("vendor","buyer"):
        raise HTTPException(400,"side must be vendor or buyer")
    if not wave:
        raise HTTPException(400,"wave is required")
    limit=max(1,min(100,int(limit or 25)))
    records=[]
    async with app.state.pool.acquire() as conn:
      if side=="vendor":
        rows=await conn.fetch("""select o.outreach_id,o.sequence_step,o.status,o.entity_id,o.wave,
            o.target_market,o.target_service_key,
            v.business_name,v.public_email,v.association_signal,
            coalesce(o.target_market,vm.market) as market,
            coalesce(o.target_service_key,vs.service_key) as service_key,
            svc.display_name as service_name
          from outreach o
          join vendors v on v.vendor_id=o.entity_id
          left join lateral (
            select market from vendor_markets where vendor_id=v.vendor_id order by market limit 1
          ) vm on true
          left join lateral (
            select service_key from vendor_services where vendor_id=v.vendor_id order by service_key limit 1
          ) vs on true
          left join services svc on svc.service_key=coalesce(o.target_service_key,vs.service_key)
          where o.entity_type='vendor' and o.campaign='vendor_recruitment' and o.wave=$1
          order by o.created_at,o.outreach_id
          limit $2""",wave,limit)
        for row in rows:
            step=1 if row["status"]=="queued" else min(3,int(row["sequence_step"] or 1)+1)
            subject,body=(first_wave_vendor_copy(row,step) if row["wave"]=="pilot1" else vendor_recruitment_copy(row,step))
            records.append({
              "outreach_id":str(row["outreach_id"]),
              "entity_id":row["entity_id"],
              "business_name":row["business_name"],
              "recipient":row["public_email"],
              "market":row["market"],
              "service_key":row["service_key"],
              "step":step,
              "status":row["status"],
              "subject":subject,
              "body":body
            })
      else:
        rows=await conn.fetch("""select o.outreach_id,o.sequence_step,o.status,o.entity_id,o.wave,
            b.business_name,b.public_email,b.market,b.buyer_type,b.campaign,b.likely_services
          from outreach o join buyers b on b.buyer_id=o.entity_id
          where o.entity_type='buyer' and o.wave=$1
          order by o.created_at,o.outreach_id
          limit $2""",wave,limit)
        for row in rows:
            step=1 if row["status"]=="queued" else min(2,int(row["sequence_step"] or 1)+1)
            subject,body=buyer_outreach_copy(row,step)
            records.append({
              "outreach_id":str(row["outreach_id"]),
              "entity_id":row["entity_id"],
              "business_name":row["business_name"],
              "recipient":row["public_email"],
              "market":row["market"],
              "campaign":row["campaign"],
              "likely_services":row["likely_services"],
              "step":step,
              "status":row["status"],
              "subject":subject,
              "body":body
            })
    return {
      "ok":True,
      "side":side,
      "wave":wave,
      "count":len(records),
      "sending_enabled":OUTREACH_ENABLED if side=="vendor" else BUYER_OUTREACH_ENABLED,
      "records":records
    }


@app.post("/api/process-outreach")
async def process_outreach(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    if not OUTREACH_ENABLED:
        return {"ok":True,"enabled":False,"sent":0,"message":"Outbound outreach is disabled."}
    if not BUSINESS_POSTAL_ADDRESS or "CHANGE_ME" in BUSINESS_POSTAL_ADDRESS:
        raise HTTPException(409,"BUSINESS_POSTAL_ADDRESS must be configured before outbound outreach can send.")
    sent=0
    async with app.state.pool.acquire() as conn:
      already=await conn.fetchval("select count(*) from outreach where sent_at>=date_trunc('day',now())")
      allowance=max(0,OUTREACH_DAILY_LIMIT-int(already or 0))
      if allowance<=0:return {"ok":True,"enabled":True,"sent":0,"message":"Daily outreach limit reached."}
      rows=await conn.fetch("""select o.outreach_id,o.sequence_step,o.status,o.entity_id,o.wave,
          v.business_name,v.public_email,v.association_signal,
          coalesce(o.target_market,vm.market) as market,
          coalesce(o.target_service_key,vs.service_key) as service_key,
          svc.display_name as service_name
        from outreach o
        join vendors v on v.vendor_id=o.entity_id
        left join lateral (select market from vendor_markets where vendor_id=v.vendor_id order by market limit 1) vm on true
        left join lateral (select service_key from vendor_services where vendor_id=v.vendor_id order by service_key limit 1) vs on true
        left join services svc on svc.service_key=coalesce(o.target_service_key,vs.service_key)
        where o.entity_type='vendor' and o.campaign='vendor_recruitment'
          and o.wave=$2 and o.opt_out=false and v.public_email is not null and v.public_email<>''
          and (
            o.status='queued'
            or (o.status='sent' and o.next_followup_at<=now() and o.sequence_step<3)
          )
          and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(v.public_email))
        order by
          case when v.association_signal is not null and v.association_signal<>'' then 0 else 1 end,
          v.quality_score desc nulls last,
          coalesce(o.next_followup_at,o.created_at) asc
        limit $1""",allowance,OUTREACH_WAVE)
      for row in rows:
        step=1 if row["status"]=="queued" else int(row["sequence_step"])+1
        subject,body=(first_wave_vendor_copy(row,step) if row["wave"]=="pilot1" else vendor_recruitment_copy(row,step))
        ok=await send_mail(row["public_email"],subject,body)
        if not ok: continue
        next_at=datetime.now(timezone.utc)+(timedelta(days=4) if step==1 else timedelta(days=7))
        status="completed" if step>=3 else "sent"
        await conn.execute("""update outreach set sequence_step=$2,status=$3,subject=$4,body=$5,sent_at=now(),
            next_followup_at=$6 where outreach_id=$1""",row["outreach_id"],step,status,subject,body,next_at)
        await event(conn,"vendor",row["entity_id"],"outreach_sent",{"campaign":"vendor_recruitment","step":step,"email":row["public_email"]})
        sent+=1
    return {"ok":True,"enabled":True,"sent":sent,"daily_limit":OUTREACH_DAILY_LIMIT}


def buyer_landing(row):
    campaign=clean(row["campaign"])
    if campaign in ("institutional_facilities","church_facilities","education_facilities","arts_facilities","property_management","hospitality","multifamily","facilities"):
        return f"{PUBLIC_SITE_URL}/facility-maintenance/"
    if campaign=="restaurants":
        return f"{PUBLIC_SITE_URL}/restaurant-repair/"
    if campaign=="automotive":
        return f"{PUBLIC_SITE_URL}/request/?service=vehicle_services"
    if campaign=="growth_pack_sales":
        return f"{PUBLIC_SITE_URL}/growth-packs/"
    return f"{PUBLIC_SITE_URL}/request/"

def buyer_outreach_copy(row,step):
    business=row["business_name"]; market=row["market"] or "your area"; btype=clean(row["buyer_type"])
    landing=buyer_landing(row)
    likely=clean(row["likely_services"]).replace("|",", ")
    campaign=clean(row["campaign"])
    if campaign=="growth_pack_sales":
        sample=f"{PUBLIC_SITE_URL}/growth-packs/sample/"
        if step==1:
            subject=f"100 researched local prospects for {business}"
            body=f"""Hi {business},

I’m reaching out because BMC is testing a simple prospect-research product for local service businesses.

The $499 Local Growth Pack includes 100 researched prospects in the market you want to sell into, with public business contact paths, fit/priority notes, and an outreach angle for each prospect. The $749 Premium version adds deeper competitor analysis and a more developed outreach plan.

You can see the offer and a sample deliverable here:
{landing}
Sample:
{sample}

There is no retainer and no sales call required.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
        else:
            subject=f"Re: local prospect research for {business}"
            body=f"""Hi {business},

Following up once on the BMC Local Growth Pack. If prospect research is taking time away from selling or fulfillment, the pack is designed to hand you a prioritized list you can work immediately.

Offer + sample:
{landing}

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
        return subject,body
    public_note=""
    if "school" in btype or "government" in btype:
        public_note=" If your organization has approved-vendor or purchasing rules, we can work around those requirements."
    if step==1:
        subject=f"Too many building vendors to chase in {market}?"
        body=f"""Hi {business},

If one building problem keeps turning into another vendor search, BMC may be useful.{public_note}

You can send one request with everything that needs attention: cleaning, repairs, grounds, HVAC, electrical, parking-lot work, and other building needs.

Start with the current problem here:
{landing}

You do not need a monthly plan just to send the first request.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    else:
        subject=f"Re: building help in {market}"
        body=f"""Hi {business},

Just following up once.

If you have a building punch list, cleaning need, repair, or several small maintenance items sitting around, you can send them in one request here:

{landing}

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}

Reply no if you do not want future outreach."""
    return subject,body

@app.post("/api/process-buyer-outreach")
async def process_buyer_outreach(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    if not BUYER_OUTREACH_ENABLED:
        return {"ok":True,"enabled":False,"sent":0,"message":"Buyer outreach is disabled."}
    if not BUSINESS_POSTAL_ADDRESS or "CHANGE_ME" in BUSINESS_POSTAL_ADDRESS:
        raise HTTPException(409,"BUSINESS_POSTAL_ADDRESS must be configured before buyer outreach can send.")
    sent=0
    async with app.state.pool.acquire() as conn:
      already=await conn.fetchval("""select count(*) from outreach where entity_type='buyer'
        and sent_at>=date_trunc('day',now())""")
      allowance=max(0,BUYER_OUTREACH_DAILY_LIMIT-int(already or 0))
      if allowance<=0:return {"ok":True,"enabled":True,"sent":0,"message":"Buyer daily outreach limit reached."}
      rows=await conn.fetch("""select o.outreach_id,o.sequence_step,o.status,o.entity_id,
          b.business_name,b.public_email,b.market,b.buyer_type,b.campaign,b.likely_services
        from outreach o join buyers b on b.buyer_id=o.entity_id
        where o.entity_type='buyer' and o.wave=$2 and o.opt_out=false
          and b.public_email is not null and b.public_email<>''
          and (o.status='queued' or (o.status='sent' and o.next_followup_at<=now() and o.sequence_step<2))
          and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(b.public_email))
          and exists(
            select 1
            from vendors v
            join vendor_markets vm on vm.vendor_id=v.vendor_id
            join vendor_services vs on vs.vendor_id=v.vendor_id
            where v.status in ('pilot','active')
              and v.vendor_id not like 'test_%'
              and vm.market=b.market
              and vs.service_key=any(string_to_array(coalesce(b.likely_services,''),'|'))
          )
        order by case when b.priority='A' then 0 else 1 end,coalesce(o.next_followup_at,o.created_at) asc
        limit $1""",allowance,BUYER_OUTREACH_WAVE)
      for row in rows:
        step=1 if row["status"]=="queued" else 2
        subject,body=buyer_outreach_copy(row,step)
        ok=await send_mail(row["public_email"],subject,body)
        if not ok: continue
        status="completed" if step>=2 else "sent"
        next_at=datetime.now(timezone.utc)+timedelta(days=5)
        await conn.execute("""update outreach set sequence_step=$2,status=$3,subject=$4,body=$5,sent_at=now(),
          next_followup_at=$6 where outreach_id=$1""",row["outreach_id"],step,status,subject,body,next_at)
        await event(conn,"buyer",row["entity_id"],"outreach_sent",{"campaign":row["campaign"],"step":step,"email":row["public_email"]})
        sent+=1
    return {"ok":True,"enabled":True,"sent":sent,"daily_limit":BUYER_OUTREACH_DAILY_LIMIT}


@app.post("/api/process-growth-outreach")
async def process_growth_outreach(x_bmc_admin_key:str|None=Header(default=None)):
    if not ADMIN_KEY or x_bmc_admin_key!=ADMIN_KEY: raise HTTPException(403,"Forbidden")
    if not GROWTH_OUTREACH_ENABLED:
        return {"ok":True,"enabled":False,"sent":0,"message":"Growth Pack outreach is disabled."}
    if not BUSINESS_POSTAL_ADDRESS or "CHANGE_ME" in BUSINESS_POSTAL_ADDRESS:
        raise HTTPException(409,"BUSINESS_POSTAL_ADDRESS must be configured before Growth Pack outreach can send.")
    sent=0
    async with app.state.pool.acquire() as conn:
      already=await conn.fetchval("""select count(*) from outreach
        where entity_type='buyer' and campaign='growth_pack_sales'
          and sent_at>=date_trunc('day',now())""")
      allowance=max(0,GROWTH_OUTREACH_DAILY_LIMIT-int(already or 0))
      if allowance<=0:
        return {"ok":True,"enabled":True,"sent":0,"message":"Growth Pack daily outreach limit reached."}
      rows=await conn.fetch("""select o.outreach_id,o.sequence_step,o.status,o.entity_id,
          b.business_name,b.public_email,b.market,b.buyer_type,b.campaign,b.likely_services
        from outreach o join buyers b on b.buyer_id=o.entity_id
        where o.entity_type='buyer' and o.campaign='growth_pack_sales' and o.wave=$2 and o.opt_out=false
          and b.public_email is not null and b.public_email<>''
          and (o.status='queued' or (o.status='sent' and o.next_followup_at<=now() and o.sequence_step<2))
          and not exists(select 1 from outreach_suppressions s where lower(s.email)=lower(b.public_email))
        order by case when b.priority='A' then 0 else 1 end,coalesce(o.next_followup_at,o.created_at) asc
        limit $1""",allowance,GROWTH_OUTREACH_WAVE)
      for row in rows:
        step=1 if row["status"]=="queued" else 2
        subject,body=buyer_outreach_copy(row,step)
        ok=await send_mail(row["public_email"],subject,body)
        if not ok: continue
        status="completed" if step>=2 else "sent"
        next_at=datetime.now(timezone.utc)+timedelta(days=5)
        await conn.execute("""update outreach set sequence_step=$2,status=$3,subject=$4,body=$5,sent_at=now(),
          next_followup_at=$6 where outreach_id=$1""",row["outreach_id"],step,status,subject,body,next_at)
        await event(conn,"buyer",row["entity_id"],"outreach_sent",{"campaign":"growth_pack_sales","step":step,"email":row["public_email"]})
        sent+=1
    return {"ok":True,"enabled":True,"sent":sent,"daily_limit":GROWTH_OUTREACH_DAILY_LIMIT}


def require_admin(key):
    if not ADMIN_KEY or key!=ADMIN_KEY:
        raise HTTPException(403,"Forbidden")

@app.get("/api/admin/provider-service-reviews")
async def admin_provider_service_reviews(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        rows=await conn.fetch("""select e.exception_id,e.vendor_id,e.created_at,e.summary,
            v.business_name,v.status,
            coalesce((select ev.payload->'services' from events ev
              where ev.entity_type='vendor' and ev.entity_id=e.vendor_id
                and ev.event_type='portal_service_additions_requested'
                and ev.occurred_at>=e.created_at
              order by ev.occurred_at desc limit 1),'[]'::jsonb) requested_services,
            coalesce((select jsonb_agg(jsonb_build_object('service_key',s.service_key,'display_name',s.display_name) order by s.display_name)
              from vendor_services vs join services s on s.service_key=vs.service_key
              where vs.vendor_id=e.vendor_id),'[]'::jsonb) current_services
          from exceptions e join vendors v on v.vendor_id=e.vendor_id
          where e.type='provider_service_change_review' and e.status='open'
          order by e.created_at asc""")
    return {"ok":True,"count":len(rows),"records":[dict(r) for r in rows]}

@app.post("/api/admin/provider-service-review")
async def admin_provider_service_review(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    exception_id=clean(p.get("exception_id"))
    decision=clean(p.get("decision")).lower()
    approved=[clean(x) for x in (p.get("approved_services") or []) if clean(x)]
    if not exception_id or decision not in ("approve","reject"):
        raise HTTPException(400,"exception_id and approve/reject decision are required")
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        row=await conn.fetchrow("""select e.*,v.business_name from exceptions e
          join vendors v on v.vendor_id=e.vendor_id
          where e.exception_id=$1::uuid and e.type='provider_service_change_review'
            and e.status='open' for update""",exception_id)
        if not row:
            raise HTTPException(404,"Open provider service review not found")
        requested=await conn.fetchval("""select payload->'services' from events
          where entity_type='vendor' and entity_id=$1 and event_type='portal_service_additions_requested'
            and occurred_at>= $2
          order by occurred_at desc limit 1""",row["vendor_id"],row["created_at"])
        if isinstance(requested,str):
            try:
                requested=json.loads(requested)
            except Exception:
                requested=[]
        requested=[clean(x) for x in (requested or []) if clean(x)] if isinstance(requested,(list,tuple)) else []
        if decision=="approve":
            approved=[sk for sk in approved if sk in requested]
            if not approved:
                approved=requested
            valid_rows=await conn.fetch("""select service_key from services
              where service_key=any($1::text[]) and is_active=true""",approved)
            valid={r["service_key"] for r in valid_rows}
            for sk in sorted(valid):
                await conn.execute("""insert into vendor_services(vendor_id,service_key)
                  values($1,$2) on conflict do nothing""",row["vendor_id"],sk)
            resolution="Approved provider service additions: "+", ".join(sorted(valid))
            await event(conn,"vendor",row["vendor_id"],"provider_service_additions_approved",
              {"services":sorted(valid),"exception_id":exception_id},"admin")
        else:
            resolution="Rejected provider service additions: "+", ".join(requested)
            await event(conn,"vendor",row["vendor_id"],"provider_service_additions_rejected",
              {"services":requested,"exception_id":exception_id,"notes":clean(p.get("notes"))},"admin")
        await conn.execute("""update exceptions set status='resolved',resolved_at=now(),resolution=$2
          where exception_id=$1::uuid""",exception_id,resolution)
        return {"ok":True,"decision":decision,"vendor_id":row["vendor_id"],"message":resolution}

@app.get("/admin",response_class=HTMLResponse)
async def admin_page():
    return """<!doctype html><html><head><meta charset='utf-8'><meta name='viewport' content='width=device-width,initial-scale=1'>
<title>BMC Local Admin</title><style>
body{font-family:system-ui;max-width:1000px;margin:30px auto;padding:0 20px;background:#f7f7f7}
input,textarea,select,button{font:inherit;padding:8px;margin:4px 0;width:100%;box-sizing:border-box}
button{width:auto;cursor:pointer}.grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(180px,1fr));gap:12px}
.card{background:white;border:1px solid #ddd;border-radius:10px;padding:14px}pre{white-space:pre-wrap}.section{margin:24px 0}
</style></head><body>
<h1>BMC Local Admin</h1><p>Private/local operations page. Do not publish through the public gateway.</p>
<div class='section'><label>Admin key<input id='key' type='password'></label><button onclick='loadDailyBrief()'>Needs Brett</button><button onclick='loadPublicOpportunities()'>Public contracts</button><button onclick='loadLocalDemandSignals()'>Local demand</button><button onclick='loadSummary()'>Load summary</button><button onclick='loadPreflight()'>Launch preflight</button><button onclick='loadFirstWave()'>Pilot shortlist / First Wave</button><button onclick='loadPilotReviews()'>Pending pilot reviews</button><button onclick='loadServiceReviews()'>Service change reviews</button><button onclick='loadResearchCandidates()'>Research candidates</button><button onclick='loadLaunchCell()'>Prescott/PV launch cell</button><button onclick='queueLaunchGaps()'>Queue launch gaps</button><button onclick='loadProviderFunnel()'>Provider funnel</button><div id='summary' class='grid'></div><div id='preflight' class='card' style='margin-top:12px'></div></div><div class='section'><h2>Needs Brett</h2><p>Short review queue for exceptions, approvals, provider changes and public contract opportunities.</p><div id='daily_brief'></div></div><div class='section'><h2>Public contract opportunities</h2><p>Read-only discoveries from official public procurement sources. Review before any response or bid action.</p><div id='public_opportunities'></div></div><div class='section'><h2>Public local-demand signals</h2><p>Search-indexed public signals only. No private-group scraping and no automatic contact with individual posters.</p><div id='local_demand_signals'></div></div><div class='section'><h2>Provider marketing funnel</h2><p>Invite → reply → application → approval → accepted work → won work.</p><div id='provider_funnel' class='grid'></div></div><div class='section'><h2>Prescott / Prescott Valley launch cell</h2><p>Green = verified pilot/active provider. Yellow = recruitable providers with public email. Red = research gap.</p><div id='launch_cell' class='grid'></div></div><div class='section'><h2>Pilot shortlist / First Wave</h2><p>Manual review only. Vendor cards show the exact secure pilot activation link so one provider can be invited without enabling bulk outreach.</p><div id='first_wave'></div></div>
<div class='section'><h2>Pending pilot reviews</h2><p>Providers stay unroutable until BMC explicitly approves them here.</p><div id='pilot_reviews'></div></div><div class='section'><h2>Provider service change reviews</h2><p>New trade types stay unroutable until approved here.</p><div id='service_reviews'></div></div>
<div class='section'><h2>Research candidates</h2><p>Autonomous search discoveries are evidence only until reviewed. They are not active providers and are never contacted automatically.</p><div class='grid'><label>Side<select id='research_side' onchange='renderResearchCandidates()'><option value=''>All</option><option value='vendor'>Providers</option><option value='buyer'>Buyers</option></select></label><label>Filter<input id='research_filter' oninput='renderResearchCandidates()' placeholder='market, service, business, domain'></label><label style='align-self:end'><span><input id='research_contact_only' type='checkbox' style='width:auto' onchange='renderResearchCandidates()'> Has public contact</span></label></div><p id='research_candidate_count'></p><div id='research_candidates'></div></div>
<div class='section card'><h2>Vendor activation</h2><input id='vendor_id' placeholder='vendor_id'><select id='vendor_status'><option>pilot</option><option>active</option><option>paused</option><option>suppressed</option></select><input id='vendor_services' placeholder='service keys comma-separated'><input id='vendor_markets' placeholder='markets comma-separated'><button onclick='vendorUpdate()'>Save vendor</button><pre id='vendor_result'></pre></div>
<div class='section card'><h2>Classify unresolved lead</h2><input id='lead_id' placeholder='lead UUID'><input id='service_key' placeholder='service_key'><button onclick='classifyLead()'>Classify + route</button><pre id='lead_result'></pre></div>
<div class='section card'><h2>Suppress outreach email</h2><input id='suppress_email' placeholder='email'><input id='suppress_reason' placeholder='reason'><button onclick='suppressEmail()'>Suppress</button><pre id='suppress_result'></pre></div>
<script>
function headers(){return {'Content-Type':'application/json','X-BMC-Admin-Key':document.getElementById('key').value}}
async function briefOpportunityCard(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent='Contract review · '+(x.status||'discovered')+' · '+(x.service_name||'Unclassified')+' · '+x.market;const a=document.createElement('a');a.href=x.source_url;a.target='_blank';a.rel='noopener noreferrer';a.textContent=x.title||x.source_url;const act=document.createElement('button');act.textContent='Mark actionable';act.onclick=async function(){await setPublicOpportunityStatus(x.opportunity_id,'actionable');await loadDailyBrief()};const ignore=document.createElement('button');ignore.textContent='Ignore';ignore.onclick=async function(){await setPublicOpportunityStatus(x.opportunity_id,'ignored');await loadDailyBrief()};d.appendChild(title);d.appendChild(document.createElement('br'));d.appendChild(a);d.appendChild(document.createElement('br'));d.appendChild(act);d.appendChild(ignore);return d}
async function briefLocalSignalCard(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent='Local demand review · '+(x.status||'discovered')+' · '+(x.service_name||'Unclassified')+' · '+x.market;const a=document.createElement('a');a.href=x.source_url;a.target='_blank';a.rel='noopener noreferrer';a.textContent=x.title||x.source_url;const useful=document.createElement('button');useful.textContent='Mark useful';useful.onclick=async function(){await setLocalDemandSignalStatus(x.signal_id,'useful');await loadDailyBrief()};const ignore=document.createElement('button');ignore.textContent='Ignore';ignore.onclick=async function(){await setLocalDemandSignalStatus(x.signal_id,'ignored');await loadDailyBrief()};d.appendChild(title);d.appendChild(document.createElement('br'));d.appendChild(a);d.appendChild(document.createElement('br'));d.appendChild(useful);d.appendChild(ignore);return d}
async function loadDailyBrief(){const r=await fetch('/api/admin/daily-brief',{headers:headers()});const j=await r.json();const el=document.getElementById('daily_brief');el.innerHTML='';const h=document.createElement('div');h.className='card';h.innerHTML='<b>'+j.headline+'</b><pre>'+JSON.stringify(j.counts||{},null,2)+'</pre>';el.appendChild(h);(j.exceptions||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';d.innerHTML='<b>Exception · '+(x.severity||'')+'</b><pre>'+(x.summary||x.type||'')+'\\n'+(x.recommended_action||'')+'</pre>';el.appendChild(d)});(j.provider_approvals||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';d.innerHTML='<b>Provider approval</b><pre>'+(x.business_name||x.vendor_id)+'\\n'+(x.public_email||'')+'</pre>';el.appendChild(d)});(j.service_change_reviews||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';d.innerHTML='<b>Service change review</b><pre>'+(x.summary||'')+'\\n'+(x.recommended_action||'')+'</pre>';el.appendChild(d)});(j.operator_tasks||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';d.innerHTML='<b>Operator task · '+(x.priority||'')+'</b><pre>'+(x.summary||x.task_type||'')+'</pre>';el.appendChild(d)});(j.source_native_issues||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';d.innerHTML='<b>Research source needs attention · '+(x.market||'')+'</b><pre>'+(x.source_key||'')+'\nlast success: '+(x.last_success_at||'never')+'\n'+(x.last_error||'Source has not completed successfully within 36 hours.')+'</pre>';el.appendChild(d)});for(const x of (j.public_opportunities||[])){el.appendChild(await briefOpportunityCard(x))}for(const x of (j.local_demand_signals||[])){el.appendChild(await briefLocalSignalCard(x))}}
async function loadPublicOpportunities(){const r=await fetch('/api/admin/public-opportunities?status=&limit=50',{headers:headers()});const j=await r.json();const el=document.getElementById('public_opportunities');el.innerHTML='';const rows=(j.records||[]).filter(function(x){return x.status==='discovered'||x.status==='actionable'});if(!rows.length){el.textContent='No current public opportunities staged.';return}rows.forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent=(x.service_name||'Unclassified')+' · '+x.market+' · '+x.source_name;const a=document.createElement('a');a.href=x.source_url;a.target='_blank';a.rel='noopener noreferrer';a.textContent=x.title||x.source_url;const pre=document.createElement('pre');pre.textContent=x.snippet||'';const act=document.createElement('button');act.textContent='Mark actionable';act.onclick=function(){setPublicOpportunityStatus(x.opportunity_id,'actionable')};const ignore=document.createElement('button');ignore.textContent='Ignore';ignore.onclick=function(){setPublicOpportunityStatus(x.opportunity_id,'ignored')};d.appendChild(title);d.appendChild(document.createElement('br'));d.appendChild(a);d.appendChild(pre);d.appendChild(act);d.appendChild(ignore);el.appendChild(d)})}
async function setPublicOpportunityStatus(id,status){const r=await fetch('/api/admin/public-opportunity-status',{method:'POST',headers:headers(),body:JSON.stringify({opportunity_id:id,status:status})});const j=await r.json();if(!j.ok)alert(JSON.stringify(j));await loadPublicOpportunities()}
async function loadLocalDemandSignals(){const r=await fetch('/api/admin/local-demand-signals?status=&limit=50',{headers:headers()});const j=await r.json();const el=document.getElementById('local_demand_signals');el.innerHTML='';const rows=(j.records||[]).filter(function(x){return x.status==='discovered'||x.status==='useful'});if(!rows.length){el.textContent='No public local-demand signals staged.';return}rows.forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent=(x.service_name||'Unclassified')+' · '+x.market+' · '+x.source_name;const a=document.createElement('a');a.href=x.source_url;a.target='_blank';a.rel='noopener noreferrer';a.textContent=x.title||x.source_url;const pre=document.createElement('pre');pre.textContent=x.snippet||'';const useful=document.createElement('button');useful.textContent='Mark useful';useful.onclick=function(){setLocalDemandSignalStatus(x.signal_id,'useful')};const ignore=document.createElement('button');ignore.textContent='Ignore';ignore.onclick=function(){setLocalDemandSignalStatus(x.signal_id,'ignored')};d.appendChild(title);d.appendChild(document.createElement('br'));d.appendChild(a);d.appendChild(pre);d.appendChild(useful);d.appendChild(ignore);el.appendChild(d)})}
async function setLocalDemandSignalStatus(id,status){const r=await fetch('/api/admin/local-demand-signal-status',{method:'POST',headers:headers(),body:JSON.stringify({signal_id:id,status:status})});const j=await r.json();if(!j.ok)alert(JSON.stringify(j));await loadLocalDemandSignals()}
async function loadSummary(){const r=await fetch('/api/admin/summary',{headers:headers()});const j=await r.json();const el=document.getElementById('summary');el.innerHTML='';Object.entries(j).forEach(function(pair){const d=document.createElement('div');d.className='card';d.innerHTML='<b>'+pair[0]+'</b><pre>'+JSON.stringify(pair[1],null,2)+'</pre>';el.appendChild(d)})}\nasync function loadPreflight(){const r=await fetch('/api/admin/preflight',{headers:headers()});const j=await r.json();document.getElementById('preflight').innerHTML='<h2>Launch preflight</h2><pre>'+JSON.stringify(j,null,2)+'</pre>'}\nasync function loadProviderFunnel(){const r=await fetch('/api/admin/provider-funnel',{headers:headers()});const j=await r.json();const el=document.getElementById('provider_funnel');el.innerHTML='';const labels={invited:'Invited',sent:'Emails sent',replied:'Replies',positive_replies:'Positive replies',applied_or_activated:'Applied / activated',pending_review:'Pending review',approved:'Approved providers',job_offers:'Jobs offered',job_accepts:'Jobs accepted',jobs_won:'Jobs won'};Object.entries(j.stages||{}).forEach(function(pair){const d=document.createElement('div');d.className='card';d.innerHTML='<b>'+labels[pair[0]]+'</b><div style="font-size:28px;font-weight:800;margin-top:6px">'+pair[1]+'</div>';el.appendChild(d)});const rates=document.createElement('div');rates.className='card';rates.innerHTML='<b>Conversion rates</b><pre>'+JSON.stringify(j.rates||{},null,2)+'</pre>';el.appendChild(rates)}
async function loadLaunchCell(){const r=await fetch('/api/admin/launch-cell',{headers:headers()});const j=await r.json();const el=document.getElementById('launch_cell');el.innerHTML='';(j.records||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.borderLeft='7px solid '+(x.readiness==='green'?'#238636':x.readiness==='yellow'?'#bf8700':'#cf222e');const title=document.createElement('b');title.textContent=x.service_name+' · '+x.readiness.toUpperCase();const pre=document.createElement('pre');pre.textContent='researched: '+x.researched_providers+'\nemail-ready: '+x.email_ready_providers+'\npilot/active: '+x.pilot_or_active_providers+'\nqueued outreach: '+x.queued_provider_outreach+'\nbuyer prospects: '+x.buyer_prospects+'\nlive markets: '+(x.live_markets||[]).join(', ')+'\nnext: '+x.next_action;d.appendChild(title);d.appendChild(pre);el.appendChild(d)})}
async function queueLaunchGaps(){const r=await fetch('/api/admin/queue-launch-gaps',{method:'POST',headers:headers()});const j=await r.json();alert('Queued '+(j.queued_count||0)+' launch research gaps.');await loadLaunchCell()}
async function copyAdminText(value){try{await navigator.clipboard.writeText(value);alert('Copied.')}catch(e){window.prompt('Copy this text:',value)}}
async function loadFirstWave(){const r=await fetch('/api/admin/first-wave',{headers:headers()});const j=await r.json();const el=document.getElementById('first_wave');el.innerHTML='';if(!(j.records||[]).length){el.textContent='No First Wave records found.';return}(j.records||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent=x.side.toUpperCase()+' · '+x.business_name;d.appendChild(title);const details=document.createElement('div');details.textContent=[x.entity_id,x.market,x.service_name||x.service_key,x.email,x.public_phone].filter(Boolean).join(' · ');d.appendChild(details);if(x.association_signal){const signal=document.createElement('div');signal.textContent='Source signal: '+x.association_signal;d.appendChild(signal)}if(x.website||x.source_url){const source=document.createElement('a');source.href=x.website||x.source_url;source.target='_blank';source.rel='noopener noreferrer';source.textContent=x.website||x.source_url;d.appendChild(source)}if(x.side==='vendor'&&x.activation_url){d.appendChild(document.createElement('br'));const activation=document.createElement('a');activation.href=x.activation_url;activation.target='_blank';activation.rel='noopener noreferrer';activation.textContent='Open secure pilot activation form';d.appendChild(activation)}const subject=document.createElement('div');subject.innerHTML='<strong></strong>';subject.querySelector('strong').textContent=x.subject||'';d.appendChild(subject);const pre=document.createElement('pre');pre.textContent=x.body||'';d.appendChild(pre);const copy=document.createElement('button');copy.textContent=x.side==='vendor'?'Copy pilot invite':'Copy outreach draft';copy.onclick=function(){copyAdminText((x.subject||'')+'\\n\\n'+(x.body||''))};d.appendChild(copy);el.appendChild(d)})}
async function loadServiceReviews(){const r=await fetch('/api/admin/provider-service-reviews',{headers:headers()});const j=await r.json();const el=document.getElementById('service_reviews');el.innerHTML='';if(!(j.records||[]).length){el.textContent='No provider service changes are waiting for review.';return}(j.records||[]).forEach(function(x){let requested=x.requested_services||[];if(typeof requested==='string'){try{requested=JSON.parse(requested)}catch(e){requested=[]}}const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent=x.business_name+' · '+x.vendor_id;const p=document.createElement('p');p.textContent='Requested services: '+requested.join(', ');const approve=document.createElement('button');approve.textContent='Approve requested services';approve.onclick=function(){reviewServiceChange(x.exception_id,'approve',requested)};const reject=document.createElement('button');reject.textContent='Reject';reject.onclick=function(){reviewServiceChange(x.exception_id,'reject',[])};d.appendChild(title);d.appendChild(p);d.appendChild(approve);d.appendChild(reject);el.appendChild(d)})}
async function reviewServiceChange(id,decision,services){const promptText=decision==='approve'?'Approve these service additions after checking credentials where needed?':'Reject these requested service additions?';if(!confirm(promptText))return;const r=await fetch('/api/admin/provider-service-review',{method:'POST',headers:headers(),body:JSON.stringify({exception_id:id,decision:decision,approved_services:services})});const j=await r.json();alert(j.message||JSON.stringify(j));await loadServiceReviews();await loadLaunchCell()}
async function loadPilotReviews(){const r=await fetch('/api/admin/pilot-reviews',{headers:headers()});const j=await r.json();const el=document.getElementById('pilot_reviews');el.innerHTML='';if(!(j.records||[]).length){el.textContent='No providers are pending review.';return}(j.records||[]).forEach(function(x){const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent=x.business_name+' · '+x.vendor_id;d.appendChild(title);const routing=document.createElement('pre');routing.textContent='CURRENT ROUTING\nMarkets: '+(x.markets||[]).join(', ')+'\nServices: '+(x.services||[]).join(', ');d.appendChild(routing);const submitted=x.activation||{};const review=document.createElement('pre');review.textContent='PROVIDER SUBMITTED\nPrimary market: '+(submitted.market||'')+'\nTerritory: '+(submitted.territory||x.territory_notes||'')+'\nRequested services: '+(submitted.services||'')+'\nMinimum job: '+(submitted.minimum_job||x.minimum_job||'')+'\nCapacity: '+(submitted.capacity||x.capacity||'')+'\nCredentials: '+(submitted.credentials||x.license_notes||'')+'\nInsurance: '+(submitted.insurance||x.insurance_notes||'')+'\nContact: '+[submitted.contact_name,submitted.email,submitted.phone].filter(Boolean).join(' · ')+'\nSubmitted: '+(x.submitted_at||'');d.appendChild(review);const note=document.createElement('p');note.textContent='If the submitted market or services differ from current routing, update Vendor controls before approval. Confirm credentials/insurance as applicable before approving.';d.appendChild(note);const btn=document.createElement('button');btn.textContent='Approve as pilot';btn.onclick=function(){approvePilot(x.vendor_id)};d.appendChild(btn);el.appendChild(d)})}
let researchCandidateCache=[];
function renderResearchCandidates(){const el=document.getElementById('research_candidates');const count=document.getElementById('research_candidate_count');if(!el)return;const side=(document.getElementById('research_side')||{}).value||'';const q=((document.getElementById('research_filter')||{}).value||'').trim().toLowerCase();const contactOnly=!!((document.getElementById('research_contact_only')||{}).checked);const rows=researchCandidateCache.filter(function(x){const ev=(x.evidence&&typeof x.evidence==='object')?x.evidence:{};const hasContact=!!(ev.public_email||ev.public_phone);if(side&&x.side!==side)return false;if(contactOnly&&!hasContact)return false;if(q){const hay=[x.candidate_name,x.source_title,x.source_domain,x.market,x.service_name,x.service_key,x.snippet,ev.public_email,ev.public_phone].filter(Boolean).join(' ').toLowerCase();if(hay.indexOf(q)===-1)return false}return true});el.innerHTML='';if(count)count.textContent=rows.length+' shown · '+researchCandidateCache.length+' staged';if(!rows.length){el.textContent='No staged research candidates match this filter.';return}rows.forEach(function(x){const ev=(x.evidence&&typeof x.evidence==='object')?x.evidence:{};const d=document.createElement('div');d.className='card';d.style.margin='10px 0';const title=document.createElement('b');title.textContent=x.side.toUpperCase()+' · '+(x.candidate_name||x.source_title||x.source_domain)+' · '+x.market+' · '+(x.service_name||x.service_key||'Unclassified');const meta=document.createElement('div');meta.textContent=['rank '+(x.source_rank||'?'),ev.public_email,ev.public_phone].filter(Boolean).join(' · ');const a=document.createElement('a');a.href=x.source_url;a.target='_blank';a.rel='noopener noreferrer';a.textContent=x.source_url;const pre=document.createElement('pre');pre.textContent=x.snippet||'';const promote=document.createElement('button');promote.textContent='Add as prospect';promote.onclick=function(){setResearchCandidateStatus(x.candidate_id,'promoted')};const review=document.createElement('button');review.textContent='Mark reviewed';review.onclick=function(){setResearchCandidateStatus(x.candidate_id,'reviewed')};const reject=document.createElement('button');reject.textContent='Reject';reject.onclick=function(){setResearchCandidateStatus(x.candidate_id,'rejected')};d.appendChild(title);d.appendChild(meta);d.appendChild(a);d.appendChild(pre);d.appendChild(promote);d.appendChild(review);d.appendChild(reject);el.appendChild(d)})}
async function loadResearchCandidates(){const r=await fetch('/api/admin/research-candidates?status=discovered&limit=250',{headers:headers()});const j=await r.json();researchCandidateCache=j.records||[];renderResearchCandidates()}
async function setResearchCandidateStatus(id,status){const r=await fetch('/api/admin/research-candidate-status',{method:'POST',headers:headers(),body:JSON.stringify({candidate_id:id,status:status})});const j=await r.json();if(!j.ok)alert(JSON.stringify(j));await loadResearchCandidates()}
async function approvePilot(id){if(!confirm('Approve '+id+' for live pilot routing after credential/insurance review?'))return;const body={vendor_id:id,confirm_credentials:true};const r=await fetch('/api/admin/approve-pilot',{method:'POST',headers:headers(),body:JSON.stringify(body)});const j=await r.json();alert(j.message||JSON.stringify(j));await loadPilotReviews();await loadSummary()}
async function vendorUpdate(){const body={vendor_id:document.getElementById('vendor_id').value,status:document.getElementById('vendor_status').value,services:document.getElementById('vendor_services').value.split(',').map(function(x){return x.trim()}).filter(Boolean),markets:document.getElementById('vendor_markets').value.split(',').map(function(x){return x.trim()}).filter(Boolean)};const r=await fetch('/api/admin/vendor-status',{method:'POST',headers:headers(),body:JSON.stringify(body)});document.getElementById('vendor_result').textContent=JSON.stringify(await r.json(),null,2)}
async function classifyLead(){const body={lead_id:document.getElementById('lead_id').value,service_key:document.getElementById('service_key').value};const r=await fetch('/api/admin/classify-lead',{method:'POST',headers:headers(),body:JSON.stringify(body)});document.getElementById('lead_result').textContent=JSON.stringify(await r.json(),null,2)}
async function suppressEmail(){const body={email:document.getElementById('suppress_email').value,reason:document.getElementById('suppress_reason').value};const r=await fetch('/api/admin/suppress',{method:'POST',headers:headers(),body:JSON.stringify(body)});document.getElementById('suppress_result').textContent=JSON.stringify(await r.json(),null,2)}
</script></body></html>"""


@app.post("/api/agent-cycle")
async def agent_cycle(x_bmc_admin_key:str|None=Header(default=None)):
    """Bounded autonomous operator cycle.

    V1 may classify ambiguous leads and create internal work. It never sends
    prospecting, approves providers, changes credentials, charges/refunds money,
    or performs any other external/high-risk action.
    """
    require_admin(x_bmc_admin_key)
    if not AGENT_ENABLED:
        return {"ok":True,"enabled":False,"message":"BMC operator agent is disabled."}
    classified=0
    review_tasks=0
    research_tasks=0
    actions=[]
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        run_id=await conn.fetchval("""insert into agent_runs(status,actions)
          values('running','[]'::jsonb) returning run_id""")

        leads=await conn.fetch("""select l.*
          from leads l
          join exceptions e on e.lead_id=l.lead_id
          where e.type='classification_needed' and e.status='open'
            and coalesce(l.service_key,'')='unclassified'
          order by l.submitted_at
          limit $1""",AGENT_CYCLE_LIMIT)
        for lead in leads:
            result=await classify_with_local_ai(conn,lead["market"],clean(lead["scope"]))
            if result and float(result.get("confidence") or 0)>=AGENT_MIN_CONFIDENCE:
                updated=await conn.fetchrow("""update leads
                  set service_key=$2,status='received',exception_reason=null,updated_at=now()
                  where lead_id=$1 returning *""",lead["lead_id"],result["service_key"])
                await conn.execute("""update exceptions
                  set status='resolved',resolved_at=now(),resolution=$2
                  where lead_id=$1 and type='classification_needed' and status='open'""",
                  lead["lead_id"],f"BMC operator AI classified as {result['service_key']} ({result['confidence']:.2f})")
                await event(conn,"lead",lead["lead_id"],"agent_classified",result,"bmc_agent")
                await offer_next(conn,updated)
                classified+=1
                actions.append({"action":"classified_lead","lead_id":str(lead["lead_id"]),"service_key":result["service_key"],"confidence":result["confidence"]})
            else:
                exists=await conn.fetchval("""select 1 from tasks
                  where lead_id=$1 and task_type='human_classification'
                    and status in ('open','queued','assigned') limit 1""",lead["lead_id"])
                if not exists:
                    await conn.execute("""insert into tasks(lead_id,service_key,task_type,status,priority,owner,summary,payload)
                      values($1,null,'human_classification','open','high','bmc_operator',$2,$3::jsonb)""",
                      lead["lead_id"],f"Classify unrecognized request in {lead['market']}",json.dumps({"source":"agent_cycle","reason":"AI unavailable or below confidence threshold"}))
                    review_tasks+=1
                    actions.append({"action":"queued_human_classification","lead_id":str(lead["lead_id"])})

        exceptions=await conn.fetch("""select exception_id,type,lead_id,vendor_id,severity,summary,recommended_action
          from exceptions
          where status='open'
            and type not in ('classification_needed','pilot_activation_review','vendor_application_review')
          order by case severity when 'critical' then 0 when 'high' then 1 else 2 end,created_at
          limit $1""",AGENT_CYCLE_LIMIT)
        for ex in exceptions:
            exists=await conn.fetchval("""select 1 from tasks
              where task_type='resolve_exception' and status in ('open','queued','assigned')
                and payload->>'exception_id'=$1 limit 1""",str(ex["exception_id"]))
            if not exists:
                await conn.execute("""insert into tasks(lead_id,task_type,status,priority,owner,summary,payload)
                  values($1,'resolve_exception','open',$2,'bmc_operator',$3,$4::jsonb)""",
                  ex["lead_id"],"high" if ex["severity"] in ("critical","high") else "normal",
                  ex["summary"] or f"Resolve {ex['type']}",
                  json.dumps({"exception_id":str(ex["exception_id"]),"type":ex["type"],"vendor_id":ex["vendor_id"],"recommended_action":ex["recommended_action"]}))
                review_tasks+=1
                actions.append({"action":"queued_exception","exception_id":str(ex["exception_id"]),"type":ex["type"]})

        if AGENT_RESEARCH_TASK_LIMIT>0:
            open_research=await conn.fetchval("""select count(*) from tasks
              where owner='research_agent' and status in ('open','queued','assigned','in_progress')""")
            available=max(0,AGENT_RESEARCH_TASK_LIMIT-int(open_research or 0))
            gaps=[]
            if available>0:
                gaps=await conn.fetch("""select rb.research_id,rb.market,rb.service_key,rb.side,rb.market_priority,
                         rb.target_gap,rb.current_count,rb.goal,rb.research_priority,rb.research_method,
                         s.display_name
                  from research_backlog rb
                  left join services s on s.service_key=rb.service_key
                  where rb.status='queued'
                  order by
                    case rb.market_priority when 'TIER1' then 0 when 'TIER2' then 1 when 'CORE' then 2 when 'INTERNAL' then 3 else 4 end,
                    case upper(rb.research_priority) when 'CRITICAL' then 0 when 'HIGH' then 1 when 'MEDIUM' then 2 when 'LOW' then 3 else 4 end,
                    case when coalesce(rb.research_pass,0)>0 then 0 else 1 end,
                    rb.target_gap desc,rb.market,rb.service_key,rb.side
                  limit $1""",available)
            for gap in gaps:
                task_type="research_vendor_gap" if gap["side"]=="vendor" else "research_buyer_gap"
                summary=f"Research {gap['side']} coverage: {gap['display_name'] or gap['service_key']} in {gap['market']}"
                task_id=await conn.fetchval("""insert into tasks(service_key,task_type,status,priority,owner,summary,payload)
                  values($1,$2,'open',$3,'research_agent',$4,$5::jsonb) returning task_id""",
                  gap["service_key"],task_type,
                  "high" if clean(gap["research_priority"]).upper() in ("HIGH","CRITICAL") else "normal",
                  summary,json.dumps({
                    "research_id":str(gap["research_id"]),"market":gap["market"],"side":gap["side"],
                    "target_gap":gap["target_gap"],"current_count":gap["current_count"],"goal":gap["goal"],
                    "research_method":gap["research_method"],"external_action_allowed":False
                  }))
                await conn.execute("""update research_backlog
                  set status='assigned',last_attempt_at=now(),notes=coalesce(notes,'') || $2,updated_at=now()
                  where research_id=$1""",gap["research_id"],f"\nAssigned to BMC research agent task {task_id}")
                research_tasks+=1
                actions.append({"action":"assigned_research","research_id":str(gap["research_id"]),"task_id":str(task_id),"market":gap["market"],"service_key":gap["service_key"],"side":gap["side"]})

        await conn.execute("""update agent_runs
          set completed_at=now(),status='completed',classified_leads=$2,
              review_tasks_created=$3,research_tasks_created=$4,actions=$5::jsonb
          where run_id=$1""",run_id,classified,review_tasks,research_tasks,json.dumps(actions))
        await event(conn,"agent",run_id,"cycle_completed",{
          "classified_leads":classified,"review_tasks_created":review_tasks,
          "research_tasks_created":research_tasks,"external_actions_performed":0
        },"bmc_agent")
    return {
      "ok":True,"enabled":True,"run_id":str(run_id),
      "classified_leads":classified,"review_tasks_created":review_tasks,
      "research_tasks_created":research_tasks,"external_actions_performed":0,
      "external_actions_allowed":False,
      "actions":actions
    }

@app.get("/api/admin/agent-status")
async def admin_agent_status(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        last=await conn.fetchrow("""select run_id,started_at,completed_at,status,classified_leads,
          review_tasks_created,research_tasks_created from agent_runs
          order by started_at desc limit 1""")
        open_agent_tasks=await conn.fetchval("""select count(*) from tasks
          where owner in ('bmc_operator','research_agent') and status in ('open','queued','assigned')""")
        assigned_research=await conn.fetchval("select count(*) from research_backlog where status='assigned'")
        queued_research=await conn.fetchval("select count(*) from research_backlog where status='queued'")
        staged_candidates=await conn.fetchval("select count(*) from research_candidates where status='discovered'")
        classification_needed=await conn.fetchval("""select count(*) from exceptions
          where type='classification_needed' and status='open'""")
        open_exceptions=await conn.fetchval("select count(*) from exceptions where status='open'")
    last_run=None
    if last:
        last_run={
          "run_id":str(last["run_id"]),"started_at":last["started_at"],"completed_at":last["completed_at"],
          "status":last["status"],"classified_leads":last["classified_leads"],
          "review_tasks_created":last["review_tasks_created"],"research_tasks_created":last["research_tasks_created"]
        }
    return {
      "ok":True,
      "enabled":AGENT_ENABLED,
      "mode":"bounded_internal_operator_v1",
      "external_actions_allowed":False,
      "configured_external_action_flag":AGENT_ALLOW_EXTERNAL_ACTIONS,
      "ai":{"enabled":LOCAL_AI_ENABLED,"model":LOCAL_AI_MODEL,"minimum_confidence":AGENT_MIN_CONFIDENCE},
      "research_search":{"enabled":RESEARCH_SEARCH_ENABLED,"worker_batch":RESEARCH_WORKER_BATCH,
        "result_limit":RESEARCH_SEARCH_RESULTS,"max_passes":RESEARCH_MAX_PASSES,
        "auto_promote_contact_ready":RESEARCH_AUTO_PROMOTE_CONTACTS},
      "source_native_research":{"enabled":SOURCE_NATIVE_RESEARCH_ENABLED,
        "adhs_page_size":ADHS_SOURCE_NATIVE_PAGE_SIZE,
        "cms_enabled":CMS_SOURCE_NATIVE_ENABLED,"cms_page_size":CMS_SOURCE_NATIVE_PAGE_SIZE,
        "lane_batch_limit":SOURCE_NATIVE_CHECK_BATCH,
        "source_count":1+(len(CMS_SOURCE_DATASETS) if CMS_SOURCE_NATIVE_ENABLED else 0),
        "market_count":len(SOURCE_NATIVE_MARKETS)},
      "queues":{
        "open_agent_tasks":int(open_agent_tasks or 0),
        "research_assigned":int(assigned_research or 0),
        "research_queued":int(queued_research or 0),
        "research_candidates_staged":int(staged_candidates or 0),
        "classification_needed":int(classification_needed or 0),
        "open_exceptions":int(open_exceptions or 0)
      },
      "last_run":last_run
    }


@app.post("/api/process-research")
async def process_research(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    if not RESEARCH_SEARCH_ENABLED:
        return {"ok":True,"enabled":False,"processed":0,"staged":0,"errors":[]}
    processed=0
    staged=0
    auto_promoted=0
    errors=[]
    async with app.state.pool.acquire() as conn:
      tasks=await conn.fetch("""select t.task_id,t.service_key,t.payload,rb.research_id,rb.market,rb.side,
             rb.research_method,rb.research_pass,rb.current_count,rb.goal,s.display_name
        from tasks t
        join research_backlog rb on rb.research_id::text=t.payload->>'research_id'
        left join services s on s.service_key=t.service_key
        where t.owner='research_agent' and t.status='open'
        order by case t.priority when 'critical' then 0 when 'high' then 1 else 2 end,t.created_at
        limit $1""",RESEARCH_WORKER_BATCH)
      for task in tasks:
        source_rows=await conn.fetch("""select source_key,source_name,side,source_type,market,county,
               source_domain,source_url,query_hint,priority
          from research_sources
          where is_active=true and side in ($1,'both') and (market is null or market=$2)
          order by case when market=$2 then 0 else 1 end,
                   case upper(priority) when 'CRITICAL' then 0 when 'HIGH' then 1 when 'MEDIUM' then 2 else 3 end,
                   source_key""",task["side"],task["market"])
        authoritative_source=choose_authoritative_source(
          source_rows,task["side"],task["service_key"],task["research_pass"])
        query=build_research_query(
          task["side"],task["market"],task["display_name"] or task["service_key"],
          task["research_method"],task["service_key"],task["research_pass"],authoritative_source)
        try:
            results=await search_research_web(query)
            if authoritative_source:
                results=[r for r in results if public_source_host_allowed(
                  r["domain"],authoritative_source["source_domain"])]
        except Exception as exc:
            errors.append({"task_id":str(task["task_id"]),"error":str(exc)[:300]})
            await event(conn,"task",task["task_id"],"research_search_failed",{"query":query,"error":str(exc)[:300]},"research_agent")
            continue
        async with conn.transaction():
            rank=0
            task_auto_promoted=0
            for result in results:
                rank+=1
                contact=extract_public_contact(f'{result["title"]} {result["snippet"]}')
                auto_eligible=research_auto_promote_eligible(result,contact,authoritative_source,rank)
                inserted=await conn.fetchval("""insert into research_candidates(
                    research_id,task_id,side,market,service_key,candidate_name,source_title,
                    source_url,source_domain,snippet,search_query,source_rank,status,evidence)
                  values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,'discovered',$13::jsonb)
                  on conflict(research_id,source_url) do nothing
                  returning candidate_id""",
                  task["research_id"],task["task_id"],task["side"],task["market"],task["service_key"],
                  result["title"],result["title"],result["url"],result["domain"],result["snippet"],query,rank,
                  json.dumps({
                    "search_engine":result["engine"],"search_score":result["score"],
                    "authoritative_source_key":authoritative_source["source_key"] if authoritative_source else None,
                    "authoritative_source_name":authoritative_source["source_name"] if authoritative_source else None,
                    "authoritative_source_domain":authoritative_source["source_domain"] if authoritative_source else None,
                    "auto_promotion_eligible":auto_eligible,
                    **contact
                  }))
                if inserted:
                    staged+=1
                    if auto_eligible:
                        candidate_row=await conn.fetchrow(
                          "select * from research_candidates where candidate_id=$1 for update",inserted)
                        if candidate_row:
                            await promote_research_candidate_to_prospect(
                              conn,candidate_row,"research_agent","direct_domain_public_email")
                            auto_promoted+=1
                            task_auto_promoted+=1
            total=int(await conn.fetchval("select count(*) from research_candidates where research_id=$1",task["research_id"]) or 0)
            next_pass=int(task["research_pass"] or 0)+1
            current_count=int(await conn.fetchval(
              "select current_count from research_backlog where research_id=$1",task["research_id"]) or 0)
            goal=int(task["goal"] or 0)
            remaining=max(0,goal-current_count)
            if remaining<=0:
                new_status="review" if total>0 else "completed"
            elif next_pass<RESEARCH_MAX_PASSES:
                new_status="queued"
            else:
                new_status="review" if total>0 else "searched_no_results"
            await conn.execute("""update research_backlog
              set status=$2,last_attempt_at=now(),candidates_found=$3,research_pass=$4,
                  target_gap=$5,updated_at=now()
              where research_id=$1""",task["research_id"],new_status,total,next_pass,remaining)
            await conn.execute("""update tasks set status='completed',updated_at=now(),
              payload=payload || $2::jsonb where task_id=$1""",task["task_id"],
              json.dumps({"search_query":query,"research_pass":next_pass,"results_returned":len(results),
                          "staged_candidates":total,"remaining_gap":remaining,"backlog_status":new_status,
                          "authoritative_source_key":authoritative_source["source_key"] if authoritative_source else None,
                          "authoritative_source_name":authoritative_source["source_name"] if authoritative_source else None,
                          "auto_promoted":task_auto_promoted}))
            await event(conn,"research",task["research_id"],"search_completed",{
              "task_id":str(task["task_id"]),"query":query,"research_pass":next_pass,
              "results_returned":len(results),"staged_candidates":total,
              "remaining_gap":remaining,"backlog_status":new_status,
              "authoritative_source_key":authoritative_source["source_key"] if authoritative_source else None,
              "auto_promoted":task_auto_promoted
            },"research_agent")
            processed+=1
    return {"ok":True,"enabled":True,"processed":processed,"staged":staged,
      "auto_promoted":auto_promoted,"errors":errors}

@app.post("/api/process-source-native-research")
async def process_source_native_research(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    if not SOURCE_NATIVE_RESEARCH_ENABLED:
        return {"ok":True,"enabled":False,"source":ADHS_SOURCE_KEY,"markets_checked":0,
                "records_seen":0,"prospects_created":0,"prospects_updated":0,"errors":[]}
    successful_markets=set()
    successful_lanes=[]
    source_checks=0
    records_seen=0
    prospects_created=0
    prospects_updated=0
    errors=[]
    async with app.state.pool.acquire() as conn:
      expected_total=int(await conn.fetchval("""select count(*) from source_native_state
        where coalesce((metadata->>'expected')::boolean,false)=true""") or 0)
      lane_rows=await conn.fetch("""select source_key,market from source_native_state
        where coalesce((metadata->>'expected')::boolean,false)=true
        order by case when last_run_at is null then 0 else 1 end,
                 last_run_at nulls first,
                 case when cursor>0 then 0 else 1 end,
                 source_key,market
        limit $1""",SOURCE_NATIVE_CHECK_BATCH)
      selected_lanes={(clean(row["source_key"]),clean(row["market"])) for row in lane_rows}
      for market in SOURCE_NATIVE_MARKETS:
        if (ADHS_SOURCE_KEY,market) not in selected_lanes:
            continue
        await conn.execute("""insert into source_native_state(source_key,market)
          values($1,$2) on conflict(source_key,market) do nothing""",ADHS_SOURCE_KEY,market)
        state=await conn.fetchrow("""select cursor from source_native_state
          where source_key=$1 and market=$2""",ADHS_SOURCE_KEY,market)
        cursor=int(state["cursor"] or 0) if state else 0
        try:
            raw=await fetch_adhs_facility_page(market,cursor)
            successful_markets.add(market)
            successful_lanes.append({"source":ADHS_SOURCE_KEY,"market":market})
            source_checks+=1
        except Exception as exc:
            errors.append({"market":market,"error":str(exc)[:300]})
            await conn.execute("""update source_native_state
              set last_run_at=now(),metadata=metadata || $3::jsonb,updated_at=now()
              where source_key=$1 and market=$2""",ADHS_SOURCE_KEY,market,
              json.dumps({"last_error":str(exc)[:300],"cursor":cursor}))
            continue
        features=raw.get("features") or []
        page_seen=0
        page_upserted=0
        page_source_dates=[]
        async with conn.transaction():
          for feature in features:
            attrs=(feature or {}).get("attributes") or {}
            if clean(attrs.get("OPERATION_STATUS")).upper()!="ACTIVE":
                continue
            name=clean(attrs.get("FACILITY_NAME"))
            if not name:
                continue
            identity=clean(attrs.get("LICENSE_NUMBER")) or clean(attrs.get("FACID")) or clean(attrs.get("OBJECTID"))
            if not identity:
                continue
            phone=clean(attrs.get("Telephone"))
            facility_type=clean(attrs.get("TYPE") or attrs.get("SUBTYPE") or attrs.get("Category")) or "Licensed Facility"
            address=clean(attrs.get("N_FULLADDR") or attrs.get("ADDRESS"))
            city=clean(attrs.get("N_CITY") or attrs.get("CITY")) or market
            county=clean(attrs.get("N_COUNTY") or attrs.get("COUNTY"))
            source_date=arcgis_date(attrs.get("RUN_DATE"))
            if source_date:
                page_source_dates.append(source_date)
            services=adhs_facility_services(attrs)
            buyer_id="b_adhs_"+hashlib.sha256(identity.encode("utf-8")).hexdigest()[:16]
            record_url=adhs_facility_record_url(attrs)
            source_evidence={
              "source_key":ADHS_SOURCE_KEY,
              "source_name":ADHS_SOURCE_NAME,
              "source_layer":ADHS_LAYER_PAGE,
              "facility_id":clean(attrs.get("FACID")) or None,
              "license_number":clean(attrs.get("LICENSE_NUMBER")) or None,
              "facility_type":facility_type,
              "operation_status":clean(attrs.get("OPERATION_STATUS")),
              "address":address or None,
              "city":city or None,
              "county":county or None,
              "source_run_date":source_date,
              "general_reference_only":True,
              "credential_or_operating_status_requires_verification":True
            }
            existing=await conn.fetchrow("""select buyer_id,likely_services,source_data from buyers
              where buyer_id=$1
                 or (nullif($4,'') is not null and market=$3
                     and lower(business_name)=lower($2) and public_phone=$4)
              order by case when buyer_id=$1 then 0 else 1 end limit 1""",
              buyer_id,name,market,phone)
            if existing:
                entity_id=existing["buyer_id"]
                merged=set(x for x in clean(existing["likely_services"]).split("|") if x)
                merged.update(services)
                source_data=merge_source_evidence(existing["source_data"],ADHS_SOURCE_KEY,source_evidence)
                await conn.execute("""update buyers set
                    public_phone=case when coalesce(public_phone,'')='' then nullif($2,'') else public_phone end,
                    likely_services=$3,
                    source_data=$4::jsonb,
                    updated_at=now()
                  where buyer_id=$1""",entity_id,phone,"|".join(sorted(merged)),json.dumps(source_data))
                prospects_updated+=1
            else:
                entity_id=buyer_id
                source_data=merge_source_evidence({},ADHS_SOURCE_KEY,source_evidence)
                await conn.execute("""insert into buyers(
                    buyer_id,business_name,market,buyer_type,public_phone,website,source_url,
                    likely_services,priority,campaign,status,notes,source_data)
                  values($1,$2,$3,$4,nullif($5,''),null,$6,$7,'research','source_native_research','prospect',$8,$9::jsonb)
                  on conflict(buyer_id) do nothing""",
                  entity_id,name,market,"adhs_"+slug(facility_type),phone,record_url,
                  "|".join(sorted(set(services))),
                  f"Unverified institutional buyer prospect from the ADHS licensed-facilities GIS feed. Source reports {facility_type} / {clean(attrs.get('OPERATION_STATUS')) or 'unknown status'}. Verify current organization/contact details before outreach.",
                  json.dumps(source_data))
                prospects_created+=1
            page_seen+=1
            page_upserted+=1
          records_seen+=page_seen
          more=bool(raw.get("exceededTransferLimit")) or len(features)>=ADHS_SOURCE_NATIVE_PAGE_SIZE
          next_cursor=cursor+len(features) if more and len(features)>0 else 0
          latest_source_date=max(page_source_dates) if page_source_dates else None
          await conn.execute("""update source_native_state set
              cursor=$3,last_run_at=now(),last_success_at=now(),
              last_source_date=coalesce($4,last_source_date),
              records_seen=records_seen+$5,records_upserted=records_upserted+$6,
              metadata=metadata || $7::jsonb,updated_at=now()
            where source_key=$1 and market=$2""",
            ADHS_SOURCE_KEY,market,next_cursor,latest_source_date,page_seen,page_upserted,
            json.dumps({"page_size":ADHS_SOURCE_NATIVE_PAGE_SIZE,"last_cursor":cursor,
                        "next_cursor":next_cursor,"last_page_records":len(features),"last_error":None}))
          for service_key in ADHS_FACILITY_CORE_SERVICES:
            count=await conn.fetchval("""select count(*) from buyers
              where market=$1 and $2=any(string_to_array(coalesce(likely_services,''),'|'))
                and status<>'suppressed'""",market,service_key)
            await conn.execute("""update research_backlog
              set current_count=$3,target_gap=greatest(0,goal-$3),
                  status=case when goal<=$3 and status='queued' then 'completed' else status end,
                  updated_at=now()
              where market=$1 and service_key=$2 and side='buyer'""",
              market,service_key,int(count or 0))
        await event(conn,"source_native",f"{ADHS_SOURCE_KEY}:{market}","source_native_page_processed",{
          "market":market,"cursor":cursor,"records_seen":page_seen,"records_upserted":page_upserted,
          "next_cursor":next_cursor,"source_run_date":latest_source_date,
          "external_actions_performed":0
        },"research_agent")

      if CMS_SOURCE_NATIVE_ENABLED:
        for source in CMS_SOURCE_DATASETS:
          for market in SOURCE_NATIVE_MARKETS:
            source_key=source["source_key"]
            if (source_key,market) not in selected_lanes:
                continue
            await conn.execute("""insert into source_native_state(source_key,market)
              values($1,$2) on conflict(source_key,market) do nothing""",source_key,market)
            state=await conn.fetchrow("""select cursor from source_native_state
              where source_key=$1 and market=$2""",source_key,market)
            cursor=int(state["cursor"] or 0) if state else 0
            try:
                # Production CMS uses one bulk CSV per dataset and filters locally.
                # Explicit non-CMS overrides (CI/mocks) retain the legacy query path.
                raw=await fetch_cms_provider_page(source,market,cursor)
                successful_markets.add(market)
                successful_lanes.append({
                    "source":source_key,
                    "market":market,
                    "bulk":bool(raw.get("_bmc_bulk"))
                })
                source_checks+=1
            except Exception as exc:
                errors.append({"source":source_key,"market":market,"error":str(exc)[:300]})
                await conn.execute("""update source_native_state
                  set last_run_at=now(),metadata=metadata || $3::jsonb,updated_at=now()
                  where source_key=$1 and market=$2""",source_key,market,
                  json.dumps({"last_error":str(exc)[:300],"cursor":cursor}))
                continue
            rows=raw.get("results") or []
            page_seen=0
            page_upserted=0
            page_source_dates=[]
            async with conn.transaction():
              for row in rows:
                record=cms_buyer_record(source,row,market)
                if not record:
                    continue
                evidence=record["evidence"]
                if clean(evidence.get("processing_date")):
                    page_source_dates.append(clean(evidence.get("processing_date")))
                identity=record["identity"]
                name=record["name"]
                phone=record["phone"]
                facility_type=record["facility_type"]
                buyer_id="b_cms_"+hashlib.sha256(
                  f"{source_key}:{identity}".encode("utf-8")).hexdigest()[:16]
                record_url=source["dataset_page"]+"?"+urllib.parse.urlencode({"ccn":identity})
                existing=await conn.fetchrow("""select buyer_id,likely_services,source_data from buyers
                  where buyer_id=$1
                     or (nullif($4,'') is not null and market=$3
                         and lower(business_name)=lower($2) and public_phone=$4)
                  order by case when buyer_id=$1 then 0 else 1 end limit 1""",
                  buyer_id,name,market,phone)
                services=set(source.get("services") or CMS_FACILITY_CORE_SERVICES)
                if existing:
                    entity_id=existing["buyer_id"]
                    services.update(x for x in clean(existing["likely_services"]).split("|") if x)
                    source_data=merge_source_evidence(existing["source_data"],source_key,evidence)
                    await conn.execute("""update buyers set
                        public_phone=case when coalesce(public_phone,'')='' then nullif($2,'') else public_phone end,
                        likely_services=$3,source_data=$4::jsonb,updated_at=now()
                      where buyer_id=$1""",
                      entity_id,phone,"|".join(sorted(services)),json.dumps(source_data))
                    prospects_updated+=1
                else:
                    entity_id=buyer_id
                    source_data=merge_source_evidence({},source_key,evidence)
                    await conn.execute("""insert into buyers(
                        buyer_id,business_name,market,buyer_type,public_phone,website,source_url,
                        likely_services,priority,campaign,status,notes,source_data)
                      values($1,$2,$3,$4,nullif($5,''),null,$6,$7,'research',
                        'source_native_research','prospect',$8,$9::jsonb)
                      on conflict(buyer_id) do nothing""",
                      entity_id,name,market,"cms_"+source["kind"],phone,record_url,
                      "|".join(sorted(services)),
                      f"Unverified institutional buyer prospect from {source['source_name']}. Verify current organization/contact details before outreach.",
                      json.dumps(source_data))
                    prospects_created+=1
                page_seen+=1
                page_upserted+=1
              records_seen+=page_seen
              more=len(rows)>=CMS_SOURCE_NATIVE_PAGE_SIZE
              next_cursor=cursor+len(rows) if more and len(rows)>0 else 0
              latest_source_date=max(page_source_dates) if page_source_dates else None
              await conn.execute("""update source_native_state set
                  cursor=$3,last_run_at=now(),last_success_at=now(),
                  last_source_date=coalesce($4,last_source_date),
                  records_seen=records_seen+$5,records_upserted=records_upserted+$6,
                  metadata=metadata || $7::jsonb,updated_at=now()
                where source_key=$1 and market=$2""",
                source_key,market,next_cursor,latest_source_date,page_seen,page_upserted,
                json.dumps({"page_size":CMS_SOURCE_NATIVE_PAGE_SIZE,"last_cursor":cursor,
                            "next_cursor":next_cursor,"last_page_records":len(rows),
                            "dataset_id":source["dataset_id"],"last_error":None,
                            "bulk_download":bool(raw.get("_bmc_bulk")),
                            "dataset_modified":raw.get("_bmc_dataset_modified"),
                            "bulk_arizona_rows":raw.get("_bmc_arizona_rows")}))
              for service_key in (source.get("services") or CMS_FACILITY_CORE_SERVICES):
                count=await conn.fetchval("""select count(*) from buyers
                  where market=$1 and $2=any(string_to_array(coalesce(likely_services,''),'|'))
                    and status<>'suppressed'""",market,service_key)
                await conn.execute("""update research_backlog
                  set current_count=$3,target_gap=greatest(0,goal-$3),
                      status=case when goal<=$3 and status='queued' then 'completed' else status end,
                      updated_at=now()
                  where market=$1 and service_key=$2 and side='buyer'""",
                  market,service_key,int(count or 0))
            await event(conn,"source_native",f"{source_key}:{market}","source_native_page_processed",{
              "source":source_key,"market":market,"cursor":cursor,
              "records_seen":page_seen,"records_upserted":page_upserted,
              "next_cursor":next_cursor,"source_run_date":latest_source_date,
              "external_actions_performed":0
            },"research_agent")
    return {"ok":True,"enabled":True,"source":"source_native_research",
      "sources":["adhs_facilities_arcgis"]+[x["source_key"] for x in CMS_SOURCE_DATASETS if CMS_SOURCE_NATIVE_ENABLED],
      "markets_checked":len(successful_markets),"source_checks":source_checks,
      "successful_lanes":successful_lanes,
      "lanes_selected":len(selected_lanes),
      "lanes_remaining":max(0,expected_total-len(selected_lanes)),
      "lane_batch_limit":SOURCE_NATIVE_CHECK_BATCH,
      "records_seen":records_seen,"prospects_created":prospects_created,
      "prospects_updated":prospects_updated,"external_actions_performed":0,"errors":errors}

@app.post("/api/process-public-opportunities")
async def process_public_opportunities(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    if not RESEARCH_SEARCH_ENABLED:
        return {"ok":True,"enabled":False,"sources_checked":0,"new_opportunities":0,"errors":[]}
    sources_checked=0
    new_opportunities=0
    expired_opportunities=0
    errors=[]
    async with app.state.pool.acquire() as conn:
      expired_opportunities=int(await conn.fetchval("""with expired as (
          update public_opportunities set status='expired',updated_at=now()
          where status='discovered' and last_seen_at < now()-interval '30 days'
          returning 1
        ) select count(*) from expired""") or 0)
      for source in PUBLIC_OPPORTUNITY_SOURCES:
        try:
            results=await search_research_web(source["query"])
            sources_checked+=1
        except Exception as exc:
            errors.append({"source":source["key"],"error":str(exc)[:300]})
            continue
        for result in results:
            if not public_source_host_allowed(result["domain"],source["domain"]):
                continue
            combined=f'{result["title"]} {result["snippet"]}'
            service_key=classify_public_opportunity_service(combined)
            if not service_key:
                continue
            oid=await conn.fetchval("""insert into public_opportunities(
                source_key,source_name,market,service_key,title,source_url,source_domain,snippet,search_query,status,evidence)
              values($1,$2,$3,$4,$5,$6,$7,$8,$9,'discovered',$10::jsonb)
              on conflict(source_key,source_url) do nothing
              returning opportunity_id""",
              source["key"],source["name"],source["market"],service_key,
              result["title"],result["url"],result["domain"],result["snippet"],source["query"],
              json.dumps({"search_engine":result["engine"],"search_score":result["score"]}))
            if oid:
                new_opportunities+=1
                await event(conn,"public_opportunity",oid,"discovered",{
                  "source":source["key"],"market":source["market"],"service_key":service_key,
                  "source_url":result["url"]
                },"research_agent")
            else:
                await conn.execute("""update public_opportunities
                  set last_seen_at=now(),title=$3,snippet=$4,service_key=coalesce(service_key,$5),
                      search_query=$6,updated_at=now()
                  where source_key=$1 and source_url=$2""",
                  source["key"],result["url"],result["title"],result["snippet"],service_key,source["query"])
    return {"ok":True,"enabled":True,"sources_checked":sources_checked,
      "new_opportunities":new_opportunities,"expired_opportunities":expired_opportunities,"errors":errors}

@app.post("/api/process-local-demand-signals")
async def process_local_demand_signals(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    if not RESEARCH_SEARCH_ENABLED:
        return {"ok":True,"enabled":False,"searches":0,"new_signals":0,"errors":[]}
    searches=0
    new_signals=0
    expired_signals=0
    errors=[]
    lane_results=[]
    async with app.state.pool.acquire() as conn:
      expired_signals=int(await conn.fetchval("""with expired as (
          update local_demand_signals set status='expired',updated_at=now()
          where status='discovered' and last_seen_at < now()-interval '14 days'
          returning 1
        ) select count(*) from expired""") or 0)

      lanes=await conn.fetch("""select source_key,source_name,source_domain,market,group_key,group_label,
             next_page,scans,results_seen,signals_found,no_progress_scans
        from local_demand_scan_state
        order by last_run_at nulls first,no_progress_scans,source_key,market,group_key
        limit 15""")

      group_map={g["key"]:g for g in LOCAL_SIGNAL_GROUPS}
      for lane in lanes:
          group=group_map.get(lane["group_key"])
          if not group:
              continue
          page=max(1,int(lane["next_page"] or 1))
          query=build_local_signal_query(lane["market"],lane["source_domain"],group["terms"])
          try:
              results=await search_research_web(query,page)
              searches+=1
          except Exception as exc:
              err=str(exc)[:300]
              errors.append({"market":lane["market"],"source":lane["source_key"],
                             "group":lane["group_key"],"page":page,"error":err})
              await conn.execute("""update local_demand_scan_state
                set scans=scans+1,last_run_at=now(),last_error=$4,updated_at=now()
                where source_key=$1 and market=$2 and group_key=$3""",
                lane["source_key"],lane["market"],lane["group_key"],err)
              continue

          lane_new=0
          lane_seen=0
          for result in results:
              if not public_source_host_allowed(result["domain"],lane["source_domain"]):
                  continue
              lane_seen+=1
              combined=f'{result["title"]} {result["snippet"]}'
              service_key=classify_local_signal_service(combined)
              if not service_key:
                  continue
              sid=await conn.fetchval("""insert into local_demand_signals(
                  source_key,source_name,market,service_key,title,source_url,source_domain,snippet,search_query,status,evidence)
                values($1,$2,$3,$4,$5,$6,$7,$8,$9,'discovered',$10::jsonb)
                on conflict(source_key,market,source_url) do nothing
                returning signal_id""",
                lane["source_key"],lane["source_name"],lane["market"],service_key,
                result["title"],result["url"],result["domain"],result["snippet"],query,
                json.dumps({"search_engine":result["engine"],"search_score":result["score"],
                            "public_index_only":True,"automatic_contact_allowed":False,
                            "group_key":lane["group_key"],"page":page}))
              if sid:
                  new_signals+=1
                  lane_new+=1
                  await event(conn,"local_demand_signal",sid,"discovered",{
                    "source":lane["source_key"],"market":lane["market"],"service_key":service_key,
                    "group_key":lane["group_key"],"page":page,
                    "source_url":result["url"],"automatic_contact_allowed":False
                  },"research_agent")
              else:
                  await conn.execute("""update local_demand_signals
                    set last_seen_at=now(),title=$4,snippet=$5,service_key=coalesce(service_key,$6),
                        search_query=$7,updated_at=now()
                    where source_key=$1 and market=$2 and source_url=$3""",
                    lane["source_key"],lane["market"],result["url"],result["title"],
                    result["snippet"],service_key,query)

          next_page=page+1 if page<5 else 1
          await conn.execute("""update local_demand_scan_state
            set next_page=$4,scans=scans+1,results_seen=results_seen+$5,
                signals_found=signals_found+$6,
                no_progress_scans=case when $6=0 then no_progress_scans+1 else 0 end,
                last_run_at=now(),last_error=null,updated_at=now()
            where source_key=$1 and market=$2 and group_key=$3""",
            lane["source_key"],lane["market"],lane["group_key"],next_page,lane_seen,lane_new)
          lane_results.append({"source":lane["source_key"],"market":lane["market"],
                               "group":lane["group_key"],"page":page,
                               "results_seen":lane_seen,"new_signals":lane_new})

    return {"ok":True,"enabled":True,"searches":searches,"new_signals":new_signals,
      "expired_signals":expired_signals,"lanes_processed":len(lane_results),
      "lane_results":lane_results,"errors":errors}

@app.get("/api/admin/local-demand-coverage")
async def admin_local_demand_coverage(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        totals=await conn.fetchrow("""select count(*) total,
          count(*) filter (where scans>0) touched,
          count(*) filter (where scans=0) untouched,
          coalesce(sum(results_seen),0) results_seen,
          coalesce(sum(signals_found),0) signals_found
          from local_demand_scan_state""")
        by_market=await conn.fetch("""select market,count(*) total,
          count(*) filter (where scans>0) touched,
          coalesce(sum(results_seen),0) results_seen,
          coalesce(sum(signals_found),0) signals_found,
          max(last_run_at) last_run_at
          from local_demand_scan_state
          group by market order by market""")
        by_source=await conn.fetch("""select source_key,source_name,count(*) total,
          count(*) filter (where scans>0) touched,
          coalesce(sum(results_seen),0) results_seen,
          coalesce(sum(signals_found),0) signals_found,
          max(last_run_at) last_run_at
          from local_demand_scan_state
          group by source_key,source_name order by source_key""")
    return {"ok":True,"totals":{
        "lanes":int(totals["total"] or 0),"touched":int(totals["touched"] or 0),
        "untouched":int(totals["untouched"] or 0),"results_seen":int(totals["results_seen"] or 0),
        "signals_found":int(totals["signals_found"] or 0)},
      "markets":[{"market":r["market"],"lanes":int(r["total"] or 0),
                  "touched":int(r["touched"] or 0),"results_seen":int(r["results_seen"] or 0),
                  "signals_found":int(r["signals_found"] or 0),"last_run_at":r["last_run_at"]} for r in by_market],
      "sources":[{"source_key":r["source_key"],"source_name":r["source_name"],
                  "lanes":int(r["total"] or 0),"touched":int(r["touched"] or 0),
                  "results_seen":int(r["results_seen"] or 0),"signals_found":int(r["signals_found"] or 0),
                  "last_run_at":r["last_run_at"]} for r in by_source]}

@app.get("/api/admin/local-demand-signals")
async def admin_local_demand_signals(status:str="discovered",limit:int=100,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    safe_limit=max(1,min(250,limit))
    async with app.state.pool.acquire() as conn:
        rows=await conn.fetch("""select ds.*,s.display_name
          from local_demand_signals ds left join services s on s.service_key=ds.service_key
          where ($1='' or ds.status=$1)
          order by ds.last_seen_at desc limit $2""",clean(status),safe_limit)
    return {"ok":True,"count":len(rows),"records":[{
      "signal_id":str(r["signal_id"]),"source_key":r["source_key"],"source_name":r["source_name"],
      "market":r["market"],"service_key":r["service_key"],"service_name":r["display_name"],
      "title":r["title"],"source_url":r["source_url"],"source_domain":r["source_domain"],
      "snippet":r["snippet"],"status":r["status"],"first_seen_at":r["first_seen_at"],
      "last_seen_at":r["last_seen_at"],"evidence":r["evidence"]
    } for r in rows]}

@app.post("/api/admin/local-demand-signal-status")
async def admin_local_demand_signal_status(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    sid=clean(p.get("signal_id"))
    status=clean(p.get("status")).lower()
    if status not in ("discovered","reviewed","ignored","useful","expired"):
        raise HTTPException(400,"Invalid local demand signal status")
    async with app.state.pool.acquire() as conn:
        row=await conn.fetchrow("""update local_demand_signals set status=$2,updated_at=now()
          where signal_id=$1::uuid returning signal_id""",sid,status)
        if not row:
            raise HTTPException(404,"Local demand signal not found")
        await event(conn,"local_demand_signal",sid,"status_changed",{"status":status},"admin")
    return {"ok":True,"signal_id":sid,"status":status}

@app.get("/api/admin/public-opportunities")
async def admin_public_opportunities(status:str="discovered",limit:int=100,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    safe_limit=max(1,min(250,limit))
    async with app.state.pool.acquire() as conn:
        rows=await conn.fetch("""select po.*,s.display_name
          from public_opportunities po
          left join services s on s.service_key=po.service_key
          where ($1='' or po.status=$1)
          order by po.last_seen_at desc
          limit $2""",clean(status),safe_limit)
    return {"ok":True,"count":len(rows),"records":[{
      "opportunity_id":str(r["opportunity_id"]),"source_key":r["source_key"],"source_name":r["source_name"],
      "market":r["market"],"service_key":r["service_key"],"service_name":r["display_name"],
      "title":r["title"],"source_url":r["source_url"],"source_domain":r["source_domain"],
      "snippet":r["snippet"],"status":r["status"],"first_seen_at":r["first_seen_at"],
      "last_seen_at":r["last_seen_at"],"evidence":r["evidence"]
    } for r in rows]}

@app.post("/api/admin/public-opportunity-status")
async def admin_public_opportunity_status(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    oid=clean(p.get("opportunity_id"))
    status=clean(p.get("status")).lower()
    if status not in ("discovered","reviewed","ignored","actionable","expired"):
        raise HTTPException(400,"Invalid public opportunity status")
    async with app.state.pool.acquire() as conn:
        row=await conn.fetchrow("""update public_opportunities set status=$2,updated_at=now()
          where opportunity_id=$1::uuid returning opportunity_id""",oid,status)
        if not row:
            raise HTTPException(404,"Public opportunity not found")
        await event(conn,"public_opportunity",oid,"status_changed",{"status":status},"admin")
    return {"ok":True,"opportunity_id":oid,"status":status}

@app.get("/api/admin/research-candidates")
async def admin_research_candidates(status:str="discovered",limit:int=100,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    safe_limit=max(1,min(250,limit))
    async with app.state.pool.acquire() as conn:
        rows=await conn.fetch("""select rc.*,s.display_name
          from research_candidates rc
          left join services s on s.service_key=rc.service_key
          where ($1='' or rc.status=$1)
          order by rc.created_at desc
          limit $2""",clean(status),safe_limit)
    records=[]
    for r in rows:
        records.append({
          "candidate_id":str(r["candidate_id"]),
          "research_id":str(r["research_id"]) if r["research_id"] else None,
          "task_id":str(r["task_id"]) if r["task_id"] else None,
          "side":r["side"],"market":r["market"],"service_key":r["service_key"],
          "service_name":r["display_name"],"candidate_name":r["candidate_name"],
          "source_title":r["source_title"],"source_url":r["source_url"],
          "source_domain":r["source_domain"],"snippet":r["snippet"],
          "search_query":r["search_query"],"source_rank":r["source_rank"],
          "status":r["status"],"evidence":r["evidence"],"created_at":r["created_at"]
        })
    return {"ok":True,"count":len(records),"records":records}

async def promote_research_candidate_to_prospect(conn,row,actor="admin",reason="manual"):
    cid=str(row["candidate_id"])
    candidate_name=(clean(row["candidate_name"]) or clean(row["source_title"]) or clean(row["source_domain"]) or "Research prospect")[:240]
    source_url=clean(row["source_url"])
    evidence=json_dict(row["evidence"])
    public_email=clean(evidence.get("public_email"))
    public_phone=clean(evidence.get("public_phone"))
    if row["side"]=="vendor":
        existing=await conn.fetchrow("""select vendor_id from vendors
          where source_url=$1 or website=$1
             or (nullif($2,'') is not null and lower(public_email)=lower($2))
          order by updated_at desc limit 1""",source_url,public_email)
        if existing:
            entity_id=existing["vendor_id"]
            await conn.execute("""update vendors set
                public_email=case when coalesce(public_email,'')='' then nullif($2,'') else public_email end,
                public_phone=case when coalesce(public_phone,'')='' then nullif($3,'') else public_phone end,
                updated_at=now()
              where vendor_id=$1""",entity_id,public_email,public_phone)
        else:
            entity_id="v_research_"+cid.replace("-","")[:16]
            await conn.execute("""insert into vendors(
                vendor_id,business_name,public_email,public_phone,website,source_url,status,notes)
              values($1,$2,nullif($3,''),nullif($4,''),$5,$5,'prospect',$6)
              on conflict(vendor_id) do nothing""",
              entity_id,candidate_name,public_email,public_phone,source_url,
              f"Unverified prospect promoted from autonomous research candidate {cid}. Verify identity, credentials, and public contact details before outreach or activation.")
        if clean(row["service_key"]):
            await conn.execute("""insert into vendor_services(vendor_id,service_key)
              values($1,$2) on conflict do nothing""",entity_id,row["service_key"])
        await conn.execute("""insert into vendor_markets(vendor_id,market)
          values($1,$2) on conflict do nothing""",entity_id,row["market"])
        promoted_entity={"entity_type":"vendor","entity_id":entity_id}
        current_count=await conn.fetchval("""select count(distinct v.vendor_id)
          from vendors v
          join vendor_services vs on vs.vendor_id=v.vendor_id
          join vendor_markets vm on vm.vendor_id=v.vendor_id
          where vs.service_key=$1 and vm.market=$2 and v.status<>'suppressed'""",
          row["service_key"],row["market"])
    else:
        existing=await conn.fetchrow("""select buyer_id,likely_services from buyers
          where source_url=$1 or website=$1
             or (nullif($2,'') is not null and lower(public_email)=lower($2))
          order by updated_at desc limit 1""",source_url,public_email)
        if existing:
            entity_id=existing["buyer_id"]
            services=[x for x in clean(existing["likely_services"]).split("|") if x]
            if clean(row["service_key"]) and row["service_key"] not in services:
                services.append(row["service_key"])
            await conn.execute("""update buyers set likely_services=$2,
                public_email=case when coalesce(public_email,'')='' then nullif($3,'') else public_email end,
                public_phone=case when coalesce(public_phone,'')='' then nullif($4,'') else public_phone end,
                updated_at=now()
              where buyer_id=$1""",entity_id,"|".join(services),public_email,public_phone)
        else:
            entity_id="b_research_"+cid.replace("-","")[:16]
            await conn.execute("""insert into buyers(
                buyer_id,business_name,market,buyer_type,public_email,public_phone,website,source_url,likely_services,
                priority,campaign,status,notes)
              values($1,$2,$3,'research',nullif($4,''),nullif($5,''),$6,$6,$7,'research','autonomous_research','prospect',$8)
              on conflict(buyer_id) do nothing""",
              entity_id,candidate_name,row["market"],public_email,public_phone,source_url,clean(row["service_key"]),
              f"Unverified buyer prospect promoted from autonomous research candidate {cid}. Verify organization and public contact path before outreach.")
        promoted_entity={"entity_type":"buyer","entity_id":entity_id}
        current_count=await conn.fetchval("""select count(*) from buyers
          where market=$2 and $1=any(string_to_array(coalesce(likely_services,''),'|'))
            and status<>'suppressed'""",row["service_key"],row["market"])
    if row["research_id"]:
        await conn.execute("""update research_backlog
          set current_count=$2,target_gap=greatest(0,goal-$2),updated_at=now()
          where research_id=$1""",row["research_id"],int(current_count or 0))
    await conn.execute("""update research_candidates set status='promoted',
        evidence=coalesce(evidence,'{}'::jsonb) || $2::jsonb,updated_at=now()
      where candidate_id=$1::uuid""",cid,json.dumps({"promotion_reason":reason,"promoted_entity":promoted_entity}))
    await event(conn,"research_candidate",cid,"status_changed",
      {"status":"promoted","promoted_entity":promoted_entity,"reason":reason},actor)
    return promoted_entity

@app.post("/api/admin/research-candidate-status")
async def admin_research_candidate_status(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    cid=clean(p.get("candidate_id"))
    status=clean(p.get("status")).lower()
    if status not in ("discovered","reviewed","rejected","promoted"):
        raise HTTPException(400,"Invalid research candidate status")
    promoted_entity=None
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        row=await conn.fetchrow("""select * from research_candidates where candidate_id=$1::uuid for update""",cid)
        if not row:
            raise HTTPException(404,"Research candidate not found")
        if status=="promoted":
            promoted_entity=await promote_research_candidate_to_prospect(conn,row,"admin","manual")
        else:
            await conn.execute("""update research_candidates set status=$2,updated_at=now()
              where candidate_id=$1::uuid""",cid,status)
            await event(conn,"research_candidate",cid,"status_changed",
              {"status":status,"promoted_entity":None},"admin")
    return {"ok":True,"candidate_id":cid,"status":status,"promoted_entity":promoted_entity}

LAUNCH_CELL_MARKETS=("Prescott","Prescott Valley")
LAUNCH_CELL_SERVICES=(
    "electrical_service","hvac_heat","handyman_repairs","residential_cleaning",
    "tree_service","landscaping","junk_hauling","towing_roadside",
    "commercial_cleaning","facility_maintenance"
)

@app.get("/api/admin/launch-cell")
async def admin_launch_cell(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    records=[]
    async with app.state.pool.acquire() as conn:
        for service_key in LAUNCH_CELL_SERVICES:
            service_name=await service_display_name(conn,service_key)
            researched=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and v.status not in ('suppressed')""",service_key,list(LAUNCH_CELL_MARKETS))
            email_ready=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and v.public_email is not null and v.public_email<>''
                and v.status not in ('suppressed')""",service_key,list(LAUNCH_CELL_MARKETS))
            pilot_active=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and v.status in ('pilot','active') and v.vendor_id not like 'test_%'""",service_key,list(LAUNCH_CELL_MARKETS))
            queued_outreach=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              join outreach o on o.entity_type='vendor' and o.entity_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and o.status in ('queued','sent') and o.opt_out=false""",service_key,list(LAUNCH_CELL_MARKETS))
            buyer_prospects=await conn.fetchval("""select count(*) from buyers b
              where b.market=any($2::text[])
                and $1=any(string_to_array(coalesce(b.likely_services,''),'|'))
                and b.status not in ('suppressed')""",service_key,list(LAUNCH_CELL_MARKETS))
            markets_live=await conn.fetch("""select distinct vm.market
              from vendors v join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=any($2::text[])
                and v.status in ('pilot','active') and v.vendor_id not like 'test_%'
              order by vm.market""",service_key,list(LAUNCH_CELL_MARKETS))
            if int(pilot_active or 0)>=1:
                readiness="green"
                next_action="Route a controlled real request when demand exists."
            elif int(email_ready or 0)>=2:
                readiness="yellow"
                next_action="Recruit and verify at least one provider."
            else:
                readiness="red"
                next_action="Research more providers with public business contact paths."
            records.append({
                "service_key":service_key,"service_name":service_name,
                "researched_providers":int(researched or 0),
                "email_ready_providers":int(email_ready or 0),
                "pilot_or_active_providers":int(pilot_active or 0),
                "queued_provider_outreach":int(queued_outreach or 0),
                "buyer_prospects":int(buyer_prospects or 0),
                "live_markets":[r["market"] for r in markets_live],
                "readiness":readiness,"next_action":next_action
            })
    return {
      "ok":True,
      "markets":list(LAUNCH_CELL_MARKETS),
      "green":sum(1 for r in records if r["readiness"]=="green"),
      "yellow":sum(1 for r in records if r["readiness"]=="yellow"),
      "red":sum(1 for r in records if r["readiness"]=="red"),
      "records":records
    }

@app.post("/api/admin/queue-launch-gaps")
async def admin_queue_launch_gaps(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    queued=[]
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        for market in LAUNCH_CELL_MARKETS:
          for service_key in LAUNCH_CELL_SERVICES:
            email_ready=await conn.fetchval("""select count(distinct v.vendor_id)
              from vendors v
              join vendor_services vs on vs.vendor_id=v.vendor_id
              join vendor_markets vm on vm.vendor_id=v.vendor_id
              where vs.service_key=$1 and vm.market=$2
                and v.public_email is not null and v.public_email<>''
                and v.status not in ('suppressed')""",service_key,market)
            goal=3
            gap=max(0,goal-int(email_ready or 0))
            if gap>0:
                await conn.execute("""insert into research_backlog(
                    market,service_key,side,market_priority,target_gap,current_count,goal,
                    research_priority,research_method,status,notes)
                  values($1,$2,'vendor','TIER1',$3,$4,$5,'CRITICAL',
                    'Find local provider with public business website/email','queued',
                    'Prescott/PV revenue launch cell')
                  on conflict(market,service_key,side) do update set
                    target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,
                    market_priority='TIER1',research_priority='CRITICAL',
                    research_method=excluded.research_method,
                    status=case when research_backlog.status in ('assigned','review') then research_backlog.status else 'queued' end,
                    notes='Prescott/PV revenue launch cell',updated_at=now()""",
                  market,service_key,gap,int(email_ready or 0),goal)
                queued.append({"side":"vendor","market":market,"service_key":service_key,"gap":gap})

        for market in LAUNCH_CELL_MARKETS:
          for service_key in ("facility_maintenance","commercial_cleaning"):
            buyers=await conn.fetchval("""select count(*) from buyers b
              where b.market=$2
                and $1=any(string_to_array(coalesce(b.likely_services,''),'|'))
                and b.public_email is not null and b.public_email<>''
                and b.status not in ('suppressed')""",service_key,market)
            goal=5
            gap=max(0,goal-int(buyers or 0))
            if gap>0:
                await conn.execute("""insert into research_backlog(
                    market,service_key,side,market_priority,target_gap,current_count,goal,
                    research_priority,research_method,status,notes)
                  values($1,$2,'buyer','TIER1',$3,$4,$5,'HIGH',
                    'B2B facility buyers: churches schools theaters property managers medical offices gyms daycare',
                    'queued','Prescott/PV revenue launch cell')
                  on conflict(market,service_key,side) do update set
                    target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,
                    market_priority='TIER1',research_priority='HIGH',
                    research_method=excluded.research_method,
                    status=case when research_backlog.status in ('assigned','review') then research_backlog.status else 'queued' end,
                    notes='Prescott/PV revenue launch cell',updated_at=now()""",
                  market,service_key,gap,int(buyers or 0),goal)
                queued.append({"side":"buyer","market":market,"service_key":service_key,"gap":gap})
        await event(conn,"launch_cell","prescott_pv","research_gaps_queued",{"count":len(queued),"gaps":queued},"admin")
    return {"ok":True,"queued_count":len(queued),"gaps":queued}

@app.get("/api/admin/provider-funnel")
async def admin_provider_funnel(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        invited=await conn.fetchval("""select count(distinct entity_id) from outreach
          where entity_type='vendor' and campaign='vendor_recruitment' and wave=$1""",OUTREACH_WAVE)
        sent=await conn.fetchval("""select count(distinct entity_id) from outreach
          where entity_type='vendor' and campaign='vendor_recruitment' and wave=$1 and sent_at is not null""",OUTREACH_WAVE)
        replied=await conn.fetchval("""select count(distinct entity_id) from outreach
          where entity_type='vendor' and campaign='vendor_recruitment' and wave=$1 and replied_at is not null""",OUTREACH_WAVE)
        positive=await conn.fetchval("""select count(distinct entity_id) from outreach
          where entity_type='vendor' and campaign='vendor_recruitment' and wave=$1
            and lower(coalesce(reply_type,'')) in ('positive','interested','yes','interest')""",OUTREACH_WAVE)
        applied=await conn.fetchval("""select count(distinct entity_id) from events
          where entity_type='vendor' and event_type in ('application_received','pilot_activation_submitted')""")
        pending=await conn.fetchval("""select count(*) from vendors
          where status in ('applicant','pilot_pending_review') and vendor_id not like 'test_%'""")
        approved=await conn.fetchval("""select count(*) from vendors
          where status in ('pilot','active') and vendor_id not like 'test_%'""")
        offered=await conn.fetchval("""select count(*) from lead_matches lm
          join vendors v on v.vendor_id=lm.vendor_id
          where v.vendor_id not like 'test_%'""")
        accepted=await conn.fetchval("""select count(*) from lead_matches lm
          join vendors v on v.vendor_id=lm.vendor_id
          where v.vendor_id not like 'test_%'
            and lm.status in ('accepted','contacted','estimate','won')""")
        won=await conn.fetchval("""select count(*) from lead_matches lm
          join vendors v on v.vendor_id=lm.vendor_id
          where v.vendor_id not like 'test_%' and lm.status='won'""")
    def rate(a,b):
        return round((float(a or 0)/float(b or 1))*100,1) if int(b or 0)>0 else 0.0
    return {
      "ok":True,
      "wave":OUTREACH_WAVE,
      "stages":{
        "invited":int(invited or 0),
        "sent":int(sent or 0),
        "replied":int(replied or 0),
        "positive_replies":int(positive or 0),
        "applied_or_activated":int(applied or 0),
        "pending_review":int(pending or 0),
        "approved":int(approved or 0),
        "job_offers":int(offered or 0),
        "job_accepts":int(accepted or 0),
        "jobs_won":int(won or 0)
      },
      "rates":{
        "reply_rate":rate(replied,sent),
        "application_rate_from_sent":rate(applied,sent),
        "approval_rate_from_applications":rate(approved,applied),
        "job_accept_rate":rate(accepted,offered),
        "win_rate_from_accepted":rate(won,accepted)
      }
    }

@app.get("/api/admin/ai-status")
async def admin_ai_status(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    return {"ok":True,**(await local_ai_status())}

@app.get("/api/admin/daily-brief")
async def admin_daily_brief(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        exceptions=await conn.fetch("""select exception_id,type,lead_id,vendor_id,severity,summary,recommended_action,created_at
          from exceptions where status='open'
          order by case severity when 'critical' then 0 when 'high' then 1 else 2 end,created_at
          limit 10""")
        pilot_reviews=await conn.fetch("""select vendor_id,business_name,public_email,updated_at
          from vendors where status='pilot_pending_review'
          order by updated_at limit 10""")
        service_reviews=await conn.fetch("""select exception_id,vendor_id,summary,recommended_action,created_at
          from exceptions where type='provider_service_change_review' and status='open'
          order by created_at limit 10""")
        opportunities=await conn.fetch("""select po.opportunity_id,po.source_name,po.market,po.title,po.source_url,
                 po.status,po.last_seen_at,s.display_name
          from public_opportunities po left join services s on s.service_key=po.service_key
          where po.status in ('discovered','actionable')
          order by case po.status when 'actionable' then 0 else 1 end,po.last_seen_at desc limit 5""")
        local_signals=await conn.fetch("""select ds.signal_id,ds.source_name,ds.market,ds.title,ds.source_url,
                 ds.status,ds.last_seen_at,s.display_name
          from local_demand_signals ds left join services s on s.service_key=ds.service_key
          where ds.status in ('discovered','useful')
          order by case ds.status when 'useful' then 0 else 1 end,ds.last_seen_at desc limit 5""")
        human_tasks=await conn.fetch("""select task_id,task_type,priority,summary,due_at,created_at
          from tasks where owner='bmc_operator' and status in ('open','queued','assigned','in_progress')
          order by case priority when 'critical' then 0 when 'high' then 1 else 2 end,
                   coalesce(due_at,created_at),created_at limit 10""")
        open_exception_count=await conn.fetchval("select count(*) from exceptions where status='open'")
        pilot_review_count=await conn.fetchval("select count(*) from vendors where status='pilot_pending_review'")
        service_review_count=await conn.fetchval("select count(*) from exceptions where type='provider_service_change_review' and status='open'")
        opportunity_count=await conn.fetchval("select count(*) from public_opportunities where status in ('discovered','actionable')")
        actionable_opportunity_count=await conn.fetchval("select count(*) from public_opportunities where status='actionable'")
        discovered_opportunity_count=await conn.fetchval("select count(*) from public_opportunities where status='discovered'")
        local_signal_count=await conn.fetchval("select count(*) from local_demand_signals where status in ('discovered','useful')")
        useful_local_signal_count=await conn.fetchval("select count(*) from local_demand_signals where status='useful'")
        discovered_local_signal_count=await conn.fetchval("select count(*) from local_demand_signals where status='discovered'")
        human_task_count=await conn.fetchval("""select count(*) from tasks where owner='bmc_operator'
          and status in ('open','queued','assigned','in_progress')""")
        research_candidate_count=await conn.fetchval("select count(*) from research_candidates where status='discovered'")
        source_native_tracked_count=await conn.fetchval("""select count(*) from source_native_state
          where coalesce((metadata->>'expected')::boolean,false)=true""")
        source_native_stale_count=await conn.fetchval("""select count(*) from source_native_state
          where coalesce((metadata->>'expected')::boolean,false)=true
            and (
              (last_success_at is null and created_at < now()-interval '36 hours')
              or last_success_at < now()-interval '36 hours'
            )""")
        source_native_issues=await conn.fetch("""select source_key,market,last_run_at,last_success_at,
                 last_source_date,metadata->>'last_error' last_error,
                 case when last_run_at is null then 'never_started'
                      when last_success_at is null then 'never_succeeded'
                      else 'stale' end health_reason
          from source_native_state
          where coalesce((metadata->>'expected')::boolean,false)=true
            and (
              (last_success_at is null and created_at < now()-interval '36 hours')
              or last_success_at < now()-interval '36 hours'
            )
          order by coalesce(last_success_at,'epoch'::timestamptz),created_at,market
          limit 5""")
    has_attention=any(int(x or 0)>0 for x in (
      open_exception_count,pilot_review_count,service_review_count,human_task_count,
      actionable_opportunity_count,useful_local_signal_count,source_native_stale_count
    ))
    has_review_queue=any(int(x or 0)>0 for x in (
      discovered_opportunity_count,discovered_local_signal_count
    ))
    headline=(
      "There are decisions or exceptions that need you."
      if has_attention else
      "New research is ready for a quick review."
      if has_review_queue else
      "Nothing urgent needs you."
    )
    return {
      "ok":True,
      "needs_brett":has_attention,
      "review_ready":has_review_queue,
      "headline":headline,
      "counts":{
        "open_exceptions":int(open_exception_count or 0),
        "provider_approvals":int(pilot_review_count or 0),
        "service_change_reviews":int(service_review_count or 0),
        "human_operator_tasks":int(human_task_count or 0),
        "public_opportunities":int(opportunity_count or 0),
        "public_opportunities_actionable":int(actionable_opportunity_count or 0),
        "public_opportunities_discovered":int(discovered_opportunity_count or 0),
        "local_demand_signals":int(local_signal_count or 0),
        "local_demand_signals_useful":int(useful_local_signal_count or 0),
        "local_demand_signals_discovered":int(discovered_local_signal_count or 0),
        "research_candidates_waiting":int(research_candidate_count or 0),
        "source_native_markets_tracked":int(source_native_tracked_count or 0),
        "source_native_stale_markets":int(source_native_stale_count or 0)
      },
      "exceptions":[dict(r) for r in exceptions],
      "provider_approvals":[dict(r) for r in pilot_reviews],
      "service_change_reviews":[dict(r) for r in service_reviews],
      "public_opportunities":[{
        "opportunity_id":str(r["opportunity_id"]),"source_name":r["source_name"],"market":r["market"],
        "service_name":r["display_name"],"title":r["title"],"source_url":r["source_url"],
        "status":r["status"],"last_seen_at":r["last_seen_at"]
      } for r in opportunities],
      "local_demand_signals":[{
        "signal_id":str(r["signal_id"]),"source_name":r["source_name"],"market":r["market"],
        "service_name":r["display_name"],"title":r["title"],"source_url":r["source_url"],
        "status":r["status"],"last_seen_at":r["last_seen_at"]
      } for r in local_signals],
      "operator_tasks":[dict(r) for r in human_tasks],
      "source_native_issues":[dict(r) for r in source_native_issues]
    }

@app.get("/api/admin/summary")
async def admin_summary(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        leads=await conn.fetch("select status,count(*) n from leads group by status order by n desc")
        vendors=await conn.fetch("select status,count(*) n from vendors group by status order by n desc")
        outreach=await conn.fetch("select entity_type,status,count(*) n from outreach group by entity_type,status order by entity_type,status")
        exceptions=await conn.fetchval("select count(*) from exceptions where status='open'")
        public_opportunities=await conn.fetchval("select count(*) from public_opportunities where status in ('discovered','actionable')")
        local_demand_signals=await conn.fetchval("select count(*) from local_demand_signals where status in ('discovered','useful')")
        revenue=await conn.fetchval("select coalesce(sum(amount_cents),0) from revenue_events where status='earned'")
    return {"leads":{r["status"]:r["n"] for r in leads},"vendors":{r["status"]:r["n"] for r in vendors},"outreach":[dict(r) for r in outreach],"open_exceptions":exceptions,"public_opportunities":int(public_opportunities or 0),"local_demand_signals":int(local_demand_signals or 0),"earned_revenue_cents":revenue}

@app.get("/api/admin/preflight")
async def admin_preflight(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    def configured(value):
        return bool(value and "CHANGE_ME" not in value)
    smtp_ready=configured(SMTP_HOST) and configured(SMTP_USER) and configured(SMTP_PASSWORD)
    imap_ready=IMAP_ENABLED and configured(IMAP_HOST) and configured(IMAP_USER) and configured(IMAP_PASSWORD)
    postal_ready=configured(BUSINESS_POSTAL_ADDRESS)
    stripe_ready=configured(STRIPE_WEBHOOK_SECRET)
    tunnel_ready=configured(WEBHOOK_URL)
    ai_status=await local_ai_status()
    async with app.state.pool.acquire() as conn:
        pilot_vendors=await conn.fetchval("select count(*) from vendors where status in ('pilot','active') and vendor_id not like 'test_%'")
        first_wave_vendors=await conn.fetchval("select count(*) from outreach where entity_type='vendor' and wave='pilot1'")
        first_wave_buyers=await conn.fetchval("select count(*) from outreach where entity_type='buyer' and wave='pilot1'")
        research_queued=await conn.fetchval("select count(*) from research_backlog where status='queued'")
        open_exceptions=await conn.fetchval("select count(*) from exceptions where status='open'")
    live_intake_ready=bool(smtp_ready and tunnel_ready and int(pilot_vendors or 0)>=1)
    outreach_ready=bool(smtp_ready and imap_ready and postal_ready)
    return {
      "ok":True,
      "gates":{"live_intake_ready":live_intake_ready,"outreach_ready":outreach_ready,"payments_ready":stripe_ready,
        "intelligent_search_ai_ready":bool(ai_status.get("enabled") and ai_status.get("reachable") and ai_status.get("model_available"))},
      "config":{
        "public_site_url":PUBLIC_SITE_URL,
        "webhook_url":WEBHOOK_URL or None,
        "cloudflare_tunnel_configured":tunnel_ready,
        "smtp_configured":smtp_ready,
        "imap_configured":imap_ready,
        "postal_address_configured":postal_ready,
        "stripe_webhook_configured":stripe_ready,
        "vendor_outreach_enabled":OUTREACH_ENABLED,
        "buyer_outreach_enabled":BUYER_OUTREACH_ENABLED,
        "growth_outreach_enabled":GROWTH_OUTREACH_ENABLED,
        "local_ai":ai_status
      },
      "operations":{
        "pilot_or_active_vendors":int(pilot_vendors or 0),
        "first_wave_vendors":int(first_wave_vendors or 0),
        "first_wave_buyers":int(first_wave_buyers or 0),
        "research_backlog_queued":int(research_queued or 0),
        "open_exceptions":int(open_exceptions or 0)
      },
      "next_required":[
        item for item,ready in [
          ("Configure public webhook URL",tunnel_ready),
          ("Configure transactional SMTP",smtp_ready),
          ("Activate at least one verified pilot provider",int(pilot_vendors or 0)>=1),
          ("Configure monitored IMAP inbox before outbound prospecting",imap_ready),
          ("Set real BMC postal address before outbound prospecting",postal_ready),
          ("Configure Stripe webhook after Stripe activation",stripe_ready),
          ("Start Ollama and load the configured local AI model",not LOCAL_AI_ENABLED or bool(ai_status.get("reachable") and ai_status.get("model_available")))
        ] if not ready
      ]
    }

@app.get("/api/admin/first-wave")
async def admin_first_wave(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    records=[]
    async with app.state.pool.acquire() as conn:
        vendors=await conn.fetch("""select o.entity_id,o.wave,v.business_name,v.public_email,v.public_phone,v.website,v.source_url,v.status,v.association_signal,
          vm.market,vs.service_key,svc.display_name as service_name
          from outreach o join vendors v on v.vendor_id=o.entity_id
          left join lateral (select market from vendor_markets where vendor_id=v.vendor_id order by market limit 1) vm on true
          left join lateral (select service_key from vendor_services where vendor_id=v.vendor_id order by service_key limit 1) vs on true
          left join services svc on svc.service_key=vs.service_key
          where o.entity_type='vendor' and o.wave='pilot1'
          order by o.created_at,o.entity_id""")
        for row in vendors:
            subject,body=first_wave_vendor_copy(row,1)
            records.append({"side":"vendor","entity_id":row["entity_id"],"business_name":row["business_name"],
              "email":row["public_email"],"public_phone":row["public_phone"],"website":row["website"],"source_url":row["source_url"],
              "status":row["status"],"association_signal":row["association_signal"],"market":row["market"],
              "service_key":row["service_key"],"service_name":row["service_name"],"subject":subject,"body":body,
              "activation_url":pilot_activation_url(row)})
        buyers=await conn.fetch("""select o.entity_id,b.business_name,b.public_email,b.market,b.buyer_type,b.campaign,b.likely_services
          from outreach o join buyers b on b.buyer_id=o.entity_id
          where o.entity_type='buyer' and o.wave='pilot1'
          order by case when b.priority='A' then 0 else 1 end,o.created_at,o.entity_id""")
        for row in buyers:
            subject,body=buyer_outreach_copy(row,1)
            records.append({"side":"buyer","entity_id":row["entity_id"],"business_name":row["business_name"],
              "email":row["public_email"],"market":row["market"],"buyer_type":row["buyer_type"],
              "campaign":row["campaign"],"likely_services":row["likely_services"],"subject":subject,"body":body})
    return {"ok":True,"count":len(records),"records":records}

@app.get("/api/admin/pilot-reviews")
async def admin_pilot_reviews(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    async with app.state.pool.acquire() as conn:
        rows=await conn.fetch("""select v.vendor_id,v.business_name,v.public_email,v.public_phone,v.website,
          v.territory_notes,v.minimum_job,v.capacity,v.license_notes,v.insurance_notes,v.updated_at,
          array(select vs.service_key from vendor_services vs where vs.vendor_id=v.vendor_id order by vs.service_key) services,
          array(select vm.market from vendor_markets vm where vm.vendor_id=v.vendor_id order by vm.market) markets,
          (select e.occurred_at from events e where e.entity_type='vendor' and e.entity_id=v.vendor_id
             and e.event_type='pilot_activation_submitted' order by e.occurred_at desc limit 1) submitted_at,
          (select e.payload from events e where e.entity_type='vendor' and e.entity_id=v.vendor_id
             and e.event_type='pilot_activation_submitted' order by e.occurred_at desc limit 1) activation_payload
          from vendors v where v.status='pilot_pending_review'
          order by coalesce((select e.occurred_at from events e where e.entity_type='vendor' and e.entity_id=v.vendor_id
             and e.event_type='pilot_activation_submitted' order by e.occurred_at desc limit 1),v.updated_at),v.business_name""")
    records=[]
    for row in rows:
        item=dict(row)
        item["activation"]=json_dict(item.pop("activation_payload",None))
        records.append(item)
    return {"ok":True,"count":len(records),"records":records}

@app.post("/api/admin/approve-pilot")
async def admin_approve_pilot(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    vid=clean(p.get("vendor_id"))
    confirmed=clean(p.get("confirm_credentials")).lower() in ("true","yes","1")
    if not vid: raise HTTPException(400,"vendor_id required")
    if not confirmed: raise HTTPException(400,"BMC credential/insurance review confirmation is required")
    async with app.state.pool.acquire() as conn:
        async with conn.transaction():
            vendor=await conn.fetchrow("select * from vendors where vendor_id=$1 for update",vid)
            if not vendor: raise HTTPException(404,"Vendor not found")
            if vendor["status"]!="pilot_pending_review":
                raise HTTPException(409,"Vendor is not pending pilot review")
            raw=await conn.fetchval("""select payload from events
              where entity_type='vendor' and entity_id=$1 and event_type='pilot_activation_submitted'
              order by occurred_at desc limit 1""",vid)
            try:
                activation=json.loads(raw) if isinstance(raw,str) else (raw or {})
            except Exception:
                activation={}
            if clean(activation.get("pilot_terms")).lower()!="accepted":
                raise HTTPException(409,"Provider pilot acceptance is not recorded")
            if not clean(vendor["territory_notes"]) or not clean(vendor["capacity"]):
                raise HTTPException(409,"Provider territory and capacity must be recorded before pilot approval")
            await conn.execute("update vendors set status='pilot',updated_at=now() where vendor_id=$1",vid)
            await conn.execute("""update exceptions set status='resolved',resolved_at=now(),resolution=$2
              where vendor_id=$1 and type='pilot_activation_review' and status='open'""",
              vid,clean(p.get("notes")) or "Approved for pilot routing after BMC review")
            await event(conn,"vendor",vid,"pilot_approved",{
              "credentials_review_confirmed":True,
              "notes":clean(p.get("notes"))
            },"admin")
        if clean(vendor["public_email"]):
            portal_token,portal_expires=await issue_vendor_portal_token(conn,vid)
            portal_link=provider_dashboard_url(portal_token)
            body=f"""Hi {vendor['business_name']},

You’re approved for the BMC provider pilot.

Your provider dashboard is ready:
{portal_link}

From the dashboard you can:
- review new opportunities;
- accept or pass;
- see customer details after you accept;
- update estimates and job outcomes;
- change your service area, minimum job, and capacity.

Joining the pilot itself is free. If a future lead or territory has a price, the terms will be shown before they apply.

This secure dashboard link expires on {portal_expires.strftime('%B %d, %Y')}. You can request a new one anytime from the provider login page.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}
"""
            html_body=workflow_email_html(
              "You’re approved. Your BMC dashboard is ready.",
              [
                "Your provider profile is approved for the pilot.",
                "Use the dashboard to review new opportunities, accept or pass, update jobs, and change the settings BMC uses for matching.",
                "Joining the pilot itself is free. If a future lead or territory has a price, the terms will be shown before they apply.",
                f"This secure login link expires on {portal_expires.strftime('%B %d, %Y')}."
              ],
              "Open provider dashboard",
              portal_link
            )
            await send_mail(clean(vendor["public_email"]),"Your BMC provider dashboard is ready",body,html_body)
    return {"ok":True,"vendor_id":vid,"status":"pilot","message":"Provider approved for the pilot. Approval email sent when an email address is available."}

@app.post("/api/admin/vendor-status")
async def admin_vendor_status(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json()
    vid=clean(p.get("vendor_id")); status=clean(p.get("status"))
    if not vid or status not in ("prospect","applicant","pilot_pending_review","pilot","active","paused","suppressed"):
        raise HTTPException(400,"Invalid vendor/status")
    services=p.get("services") or []; markets=p.get("markets") or []
    async with app.state.pool.acquire() as conn:
        async with conn.transaction():
            found=await conn.fetchval("select 1 from vendors where vendor_id=$1",vid)
            if not found: raise HTTPException(404,"Vendor not found")
            await conn.execute("update vendors set status=$2,updated_at=now() where vendor_id=$1",vid,status)
            if services:
                await conn.execute("delete from vendor_services where vendor_id=$1",vid)
                for sk in services:
                    await conn.execute("insert into vendor_services(vendor_id,service_key) select $1,$2 where exists(select 1 from services where service_key=$2) on conflict do nothing",vid,clean(sk))
            if markets:
                await conn.execute("delete from vendor_markets where vendor_id=$1",vid)
                for m in markets:
                    await conn.execute("insert into vendor_markets(vendor_id,market) values($1,$2) on conflict do nothing",vid,clean(m))
            await event(conn,"vendor",vid,"status_updated",{"status":status,"services":services,"markets":markets},"admin")
            if status=="pilot":
                vendor=await conn.fetchrow("select business_name,public_email from vendors where vendor_id=$1",vid)
                if vendor and clean(vendor["public_email"]):
                    body=f"""Hi {vendor['business_name']},

Your BMC provider profile is approved for the pilot.

You will see matching job details before deciding whether to accept or pass. Joining the pilot is free, and passing does not create a charge. Any future paid terms will be shown before they apply.

BMC Luminary Ventures LLC
{BUSINESS_POSTAL_ADDRESS}
"""
                    await send_mail(clean(vendor["public_email"]),"You’re approved for the BMC provider pilot",body)
    return {"ok":True,"vendor_id":vid,"status":status}

@app.post("/api/admin/classify-lead")
async def admin_classify_lead(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json(); lid=clean(p.get("lead_id")); sk=clean(p.get("service_key"))
    async with app.state.pool.acquire() as conn:
        async with conn.transaction():
            valid=await conn.fetchval("select 1 from services where service_key=$1 and is_active=true",sk)
            if not valid: raise HTTPException(400,"Unknown service key")
            lead=await conn.fetchrow("update leads set service_key=$2,status='received',exception_reason=null,updated_at=now() where lead_id=$1::uuid returning *",lid,sk)
            if not lead: raise HTTPException(404,"Lead not found")
            await conn.execute("update exceptions set status='resolved',resolved_at=now(),resolution='classified by admin' where lead_id=$1 and status='open'",lead["lead_id"])
            await event(conn,"lead",lead["lead_id"],"classified",{"service_key":sk},"admin")
            await offer_next(conn,lead)
    return {"ok":True,"lead_id":lid,"service_key":sk}

@app.post("/api/admin/suppress")
async def admin_suppress(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json(); email=clean(p.get("email")).lower()
    if not email or "@" not in email: raise HTTPException(400,"Valid email required")
    async with app.state.pool.acquire() as conn:
        await conn.execute("insert into outreach_suppressions(email,reason,source) values($1,$2,'admin') on conflict(email) do update set reason=excluded.reason,source='admin'",email,clean(p.get("reason")))
        await conn.execute("""update outreach set opt_out=true,status='suppressed'
          where (entity_type='vendor' and entity_id in (select vendor_id from vendors where lower(public_email)=lower($1)))
             or (entity_type='buyer' and entity_id in (select buyer_id from buyers where lower(public_email)=lower($1)))""",email)
    return {"ok":True,"email":email,"suppressed":True}

@app.post("/api/admin/record-reply")
async def admin_record_reply(request:Request,x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    p=await request.json(); email=clean(p.get("email")).lower(); classification=clean(p.get("classification")).lower()
    if not email: raise HTTPException(400,"email required")
    async with app.state.pool.acquire() as conn:
        await conn.execute("""update outreach set replied_at=now(),reply_type=$2,status=case when $2='opt_out' then 'suppressed' else 'replied' end,
          opt_out=case when $2='opt_out' then true else opt_out end
          where outreach_id=(select outreach_id from outreach o
            where (o.entity_type='vendor' and o.entity_id in (select vendor_id from vendors where lower(public_email)=lower($1)))
               or (o.entity_type='buyer' and o.entity_id in (select buyer_id from buyers where lower(public_email)=lower($1)))
            order by created_at desc limit 1)""",email,classification or "other")
        if classification=="opt_out":
            await conn.execute("insert into outreach_suppressions(email,reason,source) values($1,'reply opt-out','reply') on conflict(email) do nothing",email)
    return {"ok":True,"email":email,"classification":classification or "other"}


def reply_text(msg):
    parts=[]
    if msg.is_multipart():
        for part in msg.walk():
            if part.get_content_type()=="text/plain" and "attachment" not in str(part.get("Content-Disposition","")).lower():
                try: parts.append(part.get_payload(decode=True).decode(part.get_content_charset() or "utf-8","ignore"))
                except Exception: pass
    else:
        try: parts.append(msg.get_payload(decode=True).decode(msg.get_content_charset() or "utf-8","ignore"))
        except Exception: pass
    return "\n".join(parts)[:10000]

def classify_reply_text(body):
    t=(body or "").lower()
    optout=["unsubscribe","remove me","stop emailing","stop email","do not contact","don't contact","no thanks","not interested","take me off"]
    positive=["interested","tell me more","send me","sign me up","sounds good","let's talk","lets talk","yes please","call me"]
    if any(x in t for x in optout): return "opt_out"
    if any(x in t for x in positive): return "positive"
    return "other"

@app.post("/api/process-replies")
async def process_replies(x_bmc_admin_key:str|None=Header(default=None)):
    require_admin(x_bmc_admin_key)
    if not IMAP_ENABLED:
        return {"ok":True,"enabled":False,"processed":0,"message":"IMAP reply polling is disabled."}
    if not all([IMAP_HOST,IMAP_USER,IMAP_PASSWORD]):
        raise HTTPException(409,"IMAP credentials are incomplete")
    processed=0; matched=0
    box=imaplib.IMAP4_SSL(IMAP_HOST,IMAP_PORT)
    try:
        box.login(IMAP_USER,IMAP_PASSWORD); box.select(IMAP_FOLDER)
        status,data=box.search(None,"UNSEEN")
        ids=(data[0].split() if status=="OK" and data and data[0] else [])[-100:]
        async with app.state.pool.acquire() as conn:
            for mid in ids:
                status,msgdata=box.fetch(mid,"(RFC822)")
                if status!="OK" or not msgdata: continue
                raw=next((x[1] for x in msgdata if isinstance(x,tuple)),None)
                if not raw: continue
                msg=email.message_from_bytes(raw)
                sender=parseaddr(msg.get("From",""))[1].lower().strip()
                if not sender: continue
                row=await conn.fetchrow("""select o.outreach_id,o.entity_type,o.entity_id
                  from outreach o
                  where (o.entity_type='vendor' and o.entity_id in (select vendor_id from vendors where lower(public_email)=lower($1)))
                     or (o.entity_type='buyer' and o.entity_id in (select buyer_id from buyers where lower(public_email)=lower($1)))
                  order by o.created_at desc limit 1""",sender)
                processed+=1
                if not row: continue
                body=reply_text(msg); classification=classify_reply_text(body)
                await conn.execute("""update outreach set replied_at=now(),reply_type=$2,
                  status=case when $2='opt_out' then 'suppressed' else 'replied' end,
                  opt_out=case when $2='opt_out' then true else opt_out end
                  where outreach_id=$1""",row["outreach_id"],classification)
                if classification=="opt_out":
                    await conn.execute("insert into outreach_suppressions(email,reason,source) values($1,'reply opt-out','imap') on conflict(email) do nothing",sender)
                await event(conn,row["entity_type"],row["entity_id"],"outreach_reply",{"classification":classification,"email":sender})
                box.store(mid,"+FLAGS","\\Seen"); matched+=1
    finally:
        try: box.logout()
        except Exception: pass
    return {"ok":True,"enabled":True,"processed":processed,"matched":matched}


def verify_stripe_signature(payload,header,tolerance=300):
    if not STRIPE_WEBHOOK_SECRET or "CHANGE_ME" in STRIPE_WEBHOOK_SECRET:
        raise HTTPException(503,"Stripe webhook is not configured")
    fields={}
    for part in (header or "").split(","):
        if "=" in part:
            k,v=part.split("=",1); fields.setdefault(k,[]).append(v)
    try: ts=int(fields.get("t",["0"])[0])
    except ValueError: raise HTTPException(400,"Invalid Stripe signature timestamp")
    if abs(int(time.time())-ts)>tolerance:
        raise HTTPException(400,"Stripe signature timestamp outside tolerance")
    expected=hmac.new(STRIPE_WEBHOOK_SECRET.encode(),str(ts).encode()+b"."+payload,hashlib.sha256).hexdigest()
    if not any(hmac.compare_digest(expected,sig) for sig in fields.get("v1",[])):
        raise HTTPException(400,"Invalid Stripe signature")

def nested(obj,*path):
    cur=obj
    for key in path:
        if not isinstance(cur,dict): return None
        cur=cur.get(key)
    return cur

async def stripe_product_key(conn,obj):
    metadata=obj.get("metadata") or {}
    key=clean(metadata.get("product_key"))
    if key and await conn.fetchval("select 1 from products where product_key=$1",key):
        return key
    link=clean(obj.get("payment_link"))
    if link:
        found=await conn.fetchval("select product_key from products where stripe_payment_link_id=$1 or payment_link_url=$1",link)
        if found:return found
    price_id=None
    items=nested(obj,"items","data") or nested(obj,"lines","data") or []
    if items:
        item=items[0] or {}
        price_id=clean(nested(item,"price","id") or nested(item,"pricing","price_details","price"))
    if price_id:
        return await conn.fetchval("select product_key from products where stripe_price_id=$1",price_id)
    return None

def stripe_email(obj):
    return clean(nested(obj,"customer_details","email") or obj.get("customer_email") or nested(obj,"customer","email"))

async def record_revenue(conn,product_key,amount,currency,model,notes):
    service_key=await conn.fetchval("select service_key from products where product_key=$1",product_key) if product_key else None
    await conn.execute("""insert into revenue_events(service_key,model,amount_cents,status,notes)
      values($1,$2,$3,'earned',$4)""",service_key,model,int(amount or 0),notes)

@app.post("/api/stripe-webhook")
async def stripe_webhook(request:Request,stripe_signature:str|None=Header(default=None,alias="Stripe-Signature")):
    payload=await request.body()
    verify_stripe_signature(payload,stripe_signature)
    try:evt=json.loads(payload)
    except json.JSONDecodeError: raise HTTPException(400,"Invalid JSON")
    event_id=clean(evt.get("id")); event_type=clean(evt.get("type"))
    obj=nested(evt,"data","object") or {}
    if not event_id or not event_type: raise HTTPException(400,"Invalid Stripe event")
    async with app.state.pool.acquire() as conn:
      async with conn.transaction():
        if await conn.fetchval("select 1 from payment_events where stripe_event_id=$1",event_id):
            return {"received":True,"duplicate":True}
        product_key=await stripe_product_key(conn,obj)
        customer_email=stripe_email(obj)
        amount=int(obj.get("amount_total") or obj.get("amount_paid") or obj.get("amount") or 0)
        currency=clean(obj.get("currency") or "usd")
        status=clean(obj.get("payment_status") or obj.get("status") or "received")
        object_id=clean(obj.get("id"))
        await conn.execute("""insert into payment_events(stripe_event_id,event_type,stripe_object_id,product_key,customer_email,amount_cents,currency,status,raw_payload)
          values($1,$2,$3,$4,$5,$6,$7,$8,$9::jsonb)""",
          event_id,event_type,object_id,product_key,customer_email,amount,currency,status,json.dumps(evt))

        if event_type in ("checkout.session.completed","checkout.session.async_payment_succeeded"):
            mode=clean(obj.get("mode"))
            paid=status in ("paid","complete") or event_type=="checkout.session.async_payment_succeeded"
            if mode!="subscription" and paid:
                await record_revenue(conn,product_key,amount,currency,"stripe_checkout",f"Stripe event {event_id}; session {object_id}")
                payment_intent_id=clean(obj.get("payment_intent"))
                order_id=await conn.fetchval("""insert into orders(product_key,stripe_checkout_session_id,stripe_payment_intent_id,customer_email,amount_cents,currency,payment_status,status,raw_payload)
                  values($1,$2,$3,$4,$5,$6,$7,'paid_needs_intake',$8::jsonb)
                  on conflict(stripe_checkout_session_id) do update set
                    product_key=coalesce(excluded.product_key,orders.product_key),
                    stripe_payment_intent_id=coalesce(excluded.stripe_payment_intent_id,orders.stripe_payment_intent_id),
                    customer_email=coalesce(excluded.customer_email,orders.customer_email),
                    amount_cents=excluded.amount_cents,currency=excluded.currency,payment_status=excluded.payment_status,
                    raw_payload=excluded.raw_payload,updated_at=now()
                  returning order_id""",
                  product_key,object_id,payment_intent_id,customer_email,amount,currency,status,json.dumps(obj))
                service_key=await conn.fetchval("select service_key from products where product_key=$1",product_key) if product_key else None
                if customer_email and service_key:
                    recent=await conn.fetchrow("""select l.lead_id,l.submission_id
                      from leads l
                      where lower(l.email)=lower($1) and l.service_key=$2 and l.status='internal_queue'
                        and l.submitted_at>=now()-interval '7 days'
                        and not exists(select 1 from orders o where o.lead_id=l.lead_id and o.order_id<>$3)
                      order by l.submitted_at desc limit 1""",customer_email,service_key,order_id)
                    if recent:
                        await conn.execute("""update orders set lead_id=$2,intake_submission_id=$3,status='ready_for_fulfillment',updated_at=now()
                          where order_id=$1""",order_id,recent["lead_id"],recent["submission_id"])
                        await conn.execute("update tasks set order_id=$2,updated_at=now() where lead_id=$1 and order_id is null",recent["lead_id"],order_id)
                        await event(conn,"order",order_id,"intake_auto_linked",{"lead_id":str(recent["lead_id"]),"submission_id":recent["submission_id"]},"stripe")
                await event(conn,"order",order_id,"paid",{"product_key":product_key,"amount_cents":amount,"email":customer_email},"stripe")
                await event(conn,"payment",event_id,"payment_received",{"product_key":product_key,"amount_cents":amount,"email":customer_email,"order_id":str(order_id)},"stripe")
        elif event_type=="invoice.paid":
            if amount>0:
                await record_revenue(conn,product_key,amount,currency,"stripe_subscription_invoice",f"Stripe event {event_id}; invoice {object_id}")
                await event(conn,"payment",event_id,"subscription_payment_received",{"product_key":product_key,"amount_cents":amount,"email":customer_email},"stripe")
        elif event_type in ("customer.subscription.created","customer.subscription.updated","customer.subscription.deleted","customer.subscription.paused","customer.subscription.resumed"):
            sid=object_id
            if sid:
                period=nested(obj,"current_period_end")
                period_dt=datetime.fromtimestamp(period,timezone.utc) if isinstance(period,(int,float)) else None
                await conn.execute("""insert into subscriptions(stripe_subscription_id,product_key,customer_email,status,current_period_end,cancel_at_period_end,raw_payload,updated_at)
                  values($1,$2,$3,$4,$5,$6,$7::jsonb,now())
                  on conflict(stripe_subscription_id) do update set product_key=excluded.product_key,customer_email=excluded.customer_email,
                    status=excluded.status,current_period_end=excluded.current_period_end,cancel_at_period_end=excluded.cancel_at_period_end,
                    raw_payload=excluded.raw_payload,updated_at=now()""",
                  sid,product_key,customer_email,clean(obj.get("status")),period_dt,bool(obj.get("cancel_at_period_end")),json.dumps(obj))
        elif event_type=="refund.created":
            refunded=int(obj.get("amount") or obj.get("amount_refunded") or 0)
            if refunded>0:
                await record_revenue(conn,product_key,-refunded,currency,"stripe_refund",f"Stripe refund event {event_id}; object {object_id}")
                await event(conn,"payment",event_id,"refund_recorded",{"product_key":product_key,"amount_cents":refunded},"stripe")
    return {"received":True}
