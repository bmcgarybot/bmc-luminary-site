-- Service registry generated from the BMC Master Operations sheet.
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('restaurant_repair','Restaurant Repair','Restaurant / hospitality','pay-per-lead / territory','/portfolio/restaurant-repair/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('growth_pack','Find New Customers','Business growth','fixed price','/portfolio/growth-packs/','A','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('commercial_cleaning','Commercial Cleaning','Facility services','lead / territory','/portfolio/commercial-cleaning/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('tree_service','Tree Service & Brush Clearing','Property / land','lead / territory','/portfolio/tree-service/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('junk_hauling','Junk Removal','Property / hauling','lead / territory','/portfolio/junk-hauling/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('landscaping','Landscaping & Yard Cleanup','Property / land','lead / territory','/portfolio/landscaping/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('rural_property','Septic, Grading & Wells','Rural property','lead / territory','/portfolio/septic-earthwork-water/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('snow_service','Snow Removal','Seasonal property','lead / seasonal contract','/portfolio/snow-service/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('towing_roadside','Towing & Roadside Help','Vehicle','lead / territory','/portfolio/towing-roadside/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('vehicle_services','Mobile Mechanic & Vehicle Service','Vehicle','lead / territory','/portfolio/vehicle-services/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('auto_repair_shop','Auto Repair Shop','Vehicle services','lead / booked job','/portfolio/auto-repair-shop/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pet_waste','Pet Waste Cleanup','Pet / route service','lead / recurring referral','/portfolio/pet-waste/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pool_desert_property','Pool & Outdoor Property Care','Property / desert','lead / territory','/portfolio/pool-desert-property/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('str_property_care','Rental Property Care','Property management','lead / recurring subscription','/portfolio/str-property-care/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('hvac_heat','Heating & Air','Home / commercial services','lead / territory','/portfolio/hvac-heat/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('ice_machine','Ice Machine Repair','Restaurant / hospitality','lead / recurring maintenance','/portfolio/ice-machine-service/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('hood_exhaust','Hood Cleaning','Restaurant / compliance','lead / recurring route','/portfolio/hood-exhaust-cleaning/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('grease_drain','Grease Trap & Drain Cleaning','Restaurant / facility','lead / recurring route','/portfolio/grease-drain-service/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('window_cleaning','Window Cleaning','Facility services','lead / recurring route','/portfolio/commercial-window-cleaning/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pressure_washing','Pressure Washing','Facility services','lead / recurring route','/portfolio/pressure-washing/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pest_control','Pest Control','Facility services','lead / recurring contract','/portfolio/commercial-pest-control/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('restaurant_equipment','Restaurant Equipment Repair','Restaurant / hospitality','lead / booked job','/portfolio/restaurant-equipment-repair/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('used_equipment','Buy or Sell Used Restaurant Equipment','Restaurant / equipment','brokerage / referral','/portfolio/used-restaurant-equipment/','B','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('equipment_quotes','Get Equipment Quotes','Procurement','sourcing fee / referral','/portfolio/equipment-quote-concierge/','B','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('vendor_savings','Cut Vendor Costs','B2B cost reduction','fixed audit / success fee','/portfolio/vendor-savings-audit/','B','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('restaurant_maintenance','Restaurant Maintenance Help','Restaurant / operations','subscription / referral','/portfolio/restaurant-maintenance-concierge/','A','managed_concierge',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('linen_laundry','Linen & Laundry Service','Hospitality / restaurant','referral / recurring','/portfolio/linen-laundry-sourcing/','B','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('floor_carpet','Floor & Carpet Cleaning','Facility services','lead / recurring route','/portfolio/floor-carpet-care/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('fire_safety','Fire Safety Service','Compliance coordination','lead / recurring compliance','/portfolio/fire-safety-service/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('backflow_plumbing','Backflow & Commercial Plumbing','Facility compliance','lead / recurring service','/portfolio/backflow-plumbing-compliance/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('sign_lighting','Sign & Lighting Repair','Facility exterior','lead / project','/portfolio/sign-lighting-repair/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('locksmith_access','Locks & Access Control','Security / access','lead / project','/portfolio/locksmith-access-control/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('duct_vent','Duct & Dryer Vent Cleaning','Facility maintenance','lead / recurring','/portfolio/duct-vent-cleaning/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('fleet_washing','Fleet Washing','Fleet services','lead / recurring route','/portfolio/fleet-washing/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('mobile_tire_battery','Mobile Tire & Battery','Vehicle services','lead / booked job','/portfolio/mobile-tire-battery/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('coffee_water','Office Coffee & Water','B2B recurring supply','referral / recurring','/portfolio/office-coffee-water/','B','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('waste_audit','Cut Waste & Recycling Costs','B2B cost reduction','audit / referral / savings share','/portfolio/waste-recycling-audit/','B','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('competitor_intel','Check Local Competitors','Business growth','fixed price','/portfolio/competitor-intelligence/','B','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('market_expansion','Research a New Market','Business growth','fixed price','/portfolio/market-expansion-pack/','B','internal_delivery',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('quote_sourcing','Get Business Quotes','Procurement','buyer fee / referral','/portfolio/quote-sourcing-concierge/','A','managed_sourcing',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('parking_lot','Parking Lot Cleaning & Striping','Commercial property','lead / recurring contract','/portfolio/parking-lot-services/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('epoxy_flooring','Epoxy & Concrete Floors','Property / commercial','lead / project','/portfolio/epoxy-concrete-flooring/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('mobile_detailing','Mobile Detailing','Vehicle services','lead / recurring route','/portfolio/mobile-detailing/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('auto_glass','Windshield & Auto Glass','Vehicle services','lead / booked job','/portfolio/windshield-auto-glass/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('pet_sitting','Pet Sitting & Dog Walking','Pet services','referral / recurring','/portfolio/pet-sitting-dog-walking/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('mobile_pet_grooming','Mobile Pet Grooming','Pet services','lead / recurring','/portfolio/mobile-pet-grooming/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('turnover_cleaning','Move-Out Cleaning','Property services','lead / recurring property account','/portfolio/moveout-turnover-cleaning/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('garage_door','Garage Door Repair','Property services','lead / booked job','/portfolio/garage-door-service/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('facility_maintenance','Building Maintenance Help','Institutional / facility','subscription / lead / referral','/portfolio/facility-maintenance/','A','facility_split',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('electrical_service','Electrician','Home / property services','lead / territory','/portfolio/electrical-service/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('handyman_repairs','Handyman','Home / property services','lead / territory','/portfolio/handyman-repairs/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('residential_cleaning','House Cleaning','Home services','lead / recurring referral','/portfolio/house-cleaning/','A','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('home_staging','Home Staging','Real estate services','lead / project','/portfolio/home-staging/','B','provider_match',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();

insert into services(service_key,display_name,category,monetization,live_front,priority,fulfillment_mode,is_active)
 values('realtor_listing_prep','Get a Home Ready to Sell','Real estate services','concierge / referral','/portfolio/realtor-listing-prep/','A','managed_concierge',true)
 on conflict(service_key) do update set display_name=excluded.display_name,category=excluded.category,monetization=excluded.monetization,
 live_front=excluded.live_front,priority=excluded.priority,fulfillment_mode=excluded.fulfillment_mode,is_active=true,updated_at=now();
