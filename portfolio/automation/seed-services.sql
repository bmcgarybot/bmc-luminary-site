-- Service registry generated from the BMC Master Operations sheet.
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('restaurant_repair','Restaurant Repair Match','Restaurant / hospitality','pay-per-lead / territory','/portfolio/restaurant-repair/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('growth_pack','B2B Growth Packs','Business growth','fixed price','/portfolio/growth-packs/','A','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('commercial_cleaning','Commercial Cleaning Match','Facility services','lead / territory','/portfolio/commercial-cleaning/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('tree_service','Tree & Defensible Space','Property / land','lead / territory','/portfolio/tree-service/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('junk_hauling','Junk Removal & Hauling','Property / hauling','lead / territory','/portfolio/junk-hauling/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('landscaping','Landscaping & Property Cleanup','Property / land','lead / territory','/portfolio/landscaping/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('rural_property','Septic / Earthwork / Water','Rural property','lead / territory','/portfolio/septic-earthwork-water/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('snow_service','Private Snow Service','Seasonal property','lead / seasonal contract','/portfolio/snow-service/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('towing_roadside','Towing & Roadside','Vehicle','lead / territory','/portfolio/towing-roadside/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('vehicle_services','Vehicle Service Match','Vehicle','lead / territory','/portfolio/vehicle-services/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pet_waste','Pet Waste Cleanup','Pet / route service','lead / recurring referral','/portfolio/pet-waste/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pool_desert_property','Pool & Desert Property','Property / desert','lead / territory','/portfolio/pool-desert-property/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('str_property_care','STR & Rental Property Care','Property management','lead / recurring subscription','/portfolio/str-property-care/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('hvac_heat','Heating & Air Conditioning','Home / commercial services','lead / territory','/portfolio/hvac-heat/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('ice_machine','Commercial Ice Machine Service','Restaurant / hospitality','lead / recurring maintenance','/portfolio/ice-machine-service/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('hood_exhaust','Kitchen Hood & Exhaust Cleaning','Restaurant / compliance','lead / recurring route','/portfolio/hood-exhaust-cleaning/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('grease_drain','Grease Trap & Drain Service','Restaurant / facility','lead / recurring route','/portfolio/grease-drain-service/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('window_cleaning','Commercial Window Cleaning','Facility services','lead / recurring route','/portfolio/commercial-window-cleaning/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pressure_washing','Commercial Pressure Washing','Facility services','lead / recurring route','/portfolio/pressure-washing/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pest_control','Commercial Pest Control','Facility services','lead / recurring contract','/portfolio/commercial-pest-control/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('restaurant_equipment','Restaurant Equipment Repair','Restaurant / hospitality','lead / booked job','/portfolio/restaurant-equipment-repair/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('used_equipment','Used Restaurant Equipment Brokerage','Restaurant / equipment','brokerage / referral','/portfolio/used-restaurant-equipment/','B','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('equipment_quotes','Commercial Equipment Quote Concierge','Procurement','sourcing fee / referral','/portfolio/equipment-quote-concierge/','B','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('vendor_savings','Vendor Savings Audit','B2B cost reduction','fixed audit / success fee','/portfolio/vendor-savings-audit/','B','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('restaurant_maintenance','Restaurant Maintenance Concierge','Restaurant / operations','subscription / referral','/portfolio/restaurant-maintenance-concierge/','A','managed_concierge',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('linen_laundry','Commercial Linen & Laundry Sourcing','Hospitality / restaurant','referral / recurring','/portfolio/linen-laundry-sourcing/','B','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('floor_carpet','Commercial Floor & Carpet Care','Facility services','lead / recurring route','/portfolio/floor-carpet-care/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('fire_safety','Fire Extinguisher & Suppression Service','Compliance coordination','lead / recurring compliance','/portfolio/fire-safety-service/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('backflow_plumbing','Backflow & Commercial Plumbing Compliance','Facility compliance','lead / recurring service','/portfolio/backflow-plumbing-compliance/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('sign_lighting','Commercial Sign & Lighting Repair','Facility exterior','lead / project','/portfolio/sign-lighting-repair/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('locksmith_access','Commercial Locksmith & Access Control','Security / access','lead / project','/portfolio/locksmith-access-control/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('duct_vent','Commercial Duct & Dryer Vent Service','Facility maintenance','lead / recurring','/portfolio/duct-vent-cleaning/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('fleet_washing','Mobile Fleet Washing','Fleet services','lead / recurring route','/portfolio/fleet-washing/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('mobile_tire_battery','Mobile Tire & Battery Service','Vehicle services','lead / booked job','/portfolio/mobile-tire-battery/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('coffee_water','Office Coffee & Water Service','B2B recurring supply','referral / recurring','/portfolio/office-coffee-water/','B','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('waste_audit','Commercial Waste & Recycling Audit','B2B cost reduction','audit / referral / savings share','/portfolio/waste-recycling-audit/','B','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('competitor_intel','Local Competitor Intelligence Pack','Business growth','fixed price','/portfolio/competitor-intelligence/','B','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('market_expansion','Local Market Expansion Pack','Business growth','fixed price','/portfolio/market-expansion-pack/','B','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('quote_sourcing','B2B Quote Sourcing Concierge','Procurement','buyer fee / referral','/portfolio/quote-sourcing-concierge/','A','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('parking_lot','Parking Lot Sweeping, Striping & Maintenance','Commercial property','lead / recurring contract','/portfolio/parking-lot-services/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('epoxy_flooring','Epoxy & Concrete Floor Service','Property / commercial','lead / project','/portfolio/epoxy-concrete-flooring/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('mobile_detailing','Mobile Detailing & Fleet Appearance','Vehicle services','lead / recurring route','/portfolio/mobile-detailing/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('auto_glass','Windshield & Mobile Auto Glass','Vehicle services','lead / booked job','/portfolio/windshield-auto-glass/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pet_sitting','Pet Sitting & Dog Walking Match','Pet services','referral / recurring','/portfolio/pet-sitting-dog-walking/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('mobile_pet_grooming','Mobile Pet Grooming Match','Pet services','lead / recurring','/portfolio/mobile-pet-grooming/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('turnover_cleaning','Move-Out & Turnover Cleaning','Property services','lead / recurring property account','/portfolio/moveout-turnover-cleaning/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('garage_door','Garage Door Repair & Service','Property services','lead / booked job','/portfolio/garage-door-service/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('facility_maintenance','Institutional Facility Maintenance Concierge','Institutional / facility','subscription / lead / referral','/portfolio/facility-maintenance/','A','facility_split',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('electrical_service','Electrical Repair & Installation','Home / property services','lead / territory','/portfolio/electrical-service/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('handyman_repairs','Handyman & Small Home Repairs','Home / property services','lead / territory','/portfolio/handyman-repairs/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('residential_cleaning','House Cleaning & Deep Cleaning','Home services','lead / recurring referral','/portfolio/house-cleaning/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('home_staging','Home Staging & Listing Styling','Real estate services','lead / project','/portfolio/home-staging/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('realtor_listing_prep','Realtor Listing Prep Concierge','Real estate services','concierge / referral','/portfolio/realtor-listing-prep/','A','managed_concierge',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
