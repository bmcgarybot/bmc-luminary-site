-- Research backlog generated from the BMC Master Operations Research Queue.
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','str_property_care','buyer','TIER1',6,2,8,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','str_property_care','buyer','TIER1',5,3,8,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','facility_maintenance','buyer','TIER1',4,4,8,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','mobile_tire_battery','vendor','TIER1',4,1,5,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','rural_property','vendor','TIER1',3,2,5,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','rural_property','vendor','TIER1',3,2,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','tree_service','buyer','TIER1',3,0,3,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','facility_maintenance','buyer','TIER1',3,5,8,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','facility_maintenance','buyer','TIER1',3,5,8,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','pet_waste','vendor','TIER1',3,2,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','towing_roadside','vendor','TIER1',3,2,5,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','towing_roadside','buyer','TIER1',3,0,3,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','pest_control','vendor','TIER1',3,2,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','landscaping','vendor','TIER1',3,2,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','towing_roadside','vendor','TIER1',3,2,5,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','auto_glass','vendor','TIER1',3,2,5,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','rural_property','buyer','TIER1',2,1,3,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','junk_hauling','vendor','TIER1',2,3,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','rural_property','buyer','TIER1',2,1,3,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','vehicle_services','vendor','TIER1',2,3,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','hvac_heat','vendor','TIER1',2,3,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','junk_hauling','vendor','TIER1',2,3,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','towing_roadside','buyer','TIER1',2,1,3,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','facility_maintenance','buyer','TIER1',2,6,8,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','mobile_tire_battery','buyer','TIER1',2,1,3,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','towing_roadside','buyer','TIER1',2,1,3,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','auto_glass','buyer','TIER1',2,1,3,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','rural_property','vendor','TIER1',1,4,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','rural_property','buyer','TIER1',1,2,3,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','junk_hauling','vendor','TIER1',1,4,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','snow_service','vendor','TIER1',1,4,5,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','towing_roadside','buyer','TIER1',1,2,3,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','towing_roadside','buyer','TIER1',1,2,3,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','vehicle_services','buyer','TIER1',1,2,3,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','tree_service','buyer','TIER1',1,2,3,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','facility_maintenance','buyer','TIER1',1,7,8,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','vehicle_services','buyer','TIER1',1,2,3,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','str_property_care','buyer','TIER2',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','towing_roadside','buyer','TIER2',2,0,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','commercial_cleaning','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','mobile_tire_battery','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','mobile_tire_battery','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','towing_roadside','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','towing_roadside','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','pet_waste','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','pet_waste','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','towing_roadside','buyer','TIER2',2,0,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','window_cleaning','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','str_property_care','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','vehicle_services','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','commercial_cleaning','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','auto_glass','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','pest_control','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','mobile_detailing','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','mobile_detailing','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','towing_roadside','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','towing_roadside','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','vehicle_services','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','vehicle_services','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','auto_glass','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','auto_glass','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','pressure_washing','buyer','TIER2',2,0,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','rural_property','buyer','TIER2',2,0,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','vehicle_services','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','pressure_washing','buyer','TIER2',2,0,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','mobile_tire_battery','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','mobile_tire_battery','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','rural_property','buyer','TIER2',2,0,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','tree_service','buyer','TIER2',2,0,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','vehicle_services','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','commercial_cleaning','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','pest_control','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','junk_hauling','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','mobile_detailing','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','mobile_detailing','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','turnover_cleaning','buyer','TIER2',2,0,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','auto_glass','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','auto_glass','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','turnover_cleaning','buyer','TIER2',2,0,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','pool_desert_property','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','commercial_cleaning','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','junk_hauling','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','mobile_detailing','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','mobile_detailing','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','rural_property','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','rural_property','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','vehicle_services','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','vehicle_services','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','auto_glass','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','auto_glass','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','commercial_cleaning','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','junk_hauling','vendor','TIER2',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','mobile_detailing','vendor','TIER2',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','mobile_detailing','buyer','TIER2',2,0,2,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','commercial_cleaning','vendor','TIER2',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','towing_roadside','vendor','TIER2',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','tree_service','buyer','TIER2',1,1,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','commercial_cleaning','vendor','TIER2',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','turnover_cleaning','vendor','TIER2',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','junk_hauling','vendor','TIER2',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','pet_waste','vendor','TIER2',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','commercial_cleaning','vendor','TIER2',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','vehicle_services','buyer','TIER2',1,1,2,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','window_cleaning','vendor','TIER2',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','quote_sourcing','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','restaurant_maintenance','buyer','CONCIERGE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','sign_lighting','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','sign_lighting','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','turnover_cleaning','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','parking_lot','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','turnover_cleaning','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','turnover_cleaning','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','turnover_cleaning','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','turnover_cleaning','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','turnover_cleaning','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','parking_lot','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','turnover_cleaning','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','parking_lot','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','backflow_plumbing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','duct_vent','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','locksmith_access','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','pressure_washing','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','sign_lighting','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','epoxy_flooring','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','garage_door','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','turnover_cleaning','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','coffee_water','buyer','CORE',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','fire_safety','buyer','CORE',4,1,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','sign_lighting','buyer','CORE',4,1,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','fire_safety','buyer','CORE',4,1,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','sign_lighting','buyer','CORE',4,1,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','parking_lot','buyer','CORE',4,1,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','sign_lighting','buyer','CORE',4,1,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','fire_safety','buyer','CORE',4,1,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','fire_safety','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','turnover_cleaning','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','sign_lighting','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','sign_lighting','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','fire_safety','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','parking_lot','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','sign_lighting','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','sign_lighting','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','fire_safety','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','sign_lighting','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','sign_lighting','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','parking_lot','buyer','CORE',3,2,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','pest_control','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','pressure_washing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','fire_safety','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','turnover_cleaning','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','parking_lot','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','parking_lot','buyer','CORE',2,3,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','floor_carpet','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','pest_control','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','fire_safety','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','turnover_cleaning','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','parking_lot','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','pest_control','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','pest_control','buyer','CORE',2,3,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','pressure_washing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','fire_safety','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','parking_lot','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','floor_carpet','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','pest_control','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','pressure_washing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','fire_safety','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','turnover_cleaning','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','parking_lot','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','floor_carpet','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','pest_control','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','pressure_washing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','window_cleaning','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','fire_safety','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','turnover_cleaning','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','parking_lot','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','floor_carpet','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','pressure_washing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','window_cleaning','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','fire_safety','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','parking_lot','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','pest_control','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','fire_safety','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','floor_carpet','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','pest_control','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','fire_safety','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','turnover_cleaning','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','parking_lot','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','floor_carpet','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','pressure_washing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','window_cleaning','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','fire_safety','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','parking_lot','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','pest_control','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','pest_control','buyer','CORE',2,3,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','pressure_washing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','fire_safety','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','fire_safety','buyer','CORE',2,3,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','parking_lot','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','floor_carpet','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','pressure_washing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','window_cleaning','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','fire_safety','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','turnover_cleaning','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','parking_lot','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','backflow_plumbing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','duct_vent','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','floor_carpet','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','locksmith_access','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','pest_control','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','pressure_washing','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','sign_lighting','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','window_cleaning','vendor','CORE',2,1,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','epoxy_flooring','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','fire_safety','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','garage_door','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','turnover_cleaning','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','coffee_water','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','parking_lot','vendor','CORE',2,1,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','floor_carpet','vendor','CORE',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','window_cleaning','vendor','CORE',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','window_cleaning','vendor','CORE',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','parking_lot','buyer','CORE',1,4,5,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','floor_carpet','vendor','CORE',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','floor_carpet','buyer','CORE',1,4,5,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','window_cleaning','vendor','CORE',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','window_cleaning','buyer','CORE',1,4,5,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','fire_safety','buyer','CORE',1,4,5,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','duct_vent','vendor','CORE',1,2,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','turnover_cleaning','vendor','CORE',1,2,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','parking_lot','vendor','CORE',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','pest_control','buyer','CORE',1,4,5,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','window_cleaning','vendor','CORE',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','parking_lot','buyer','CORE',1,4,5,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','fire_safety','buyer','CORE',1,4,5,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','floor_carpet','vendor','CORE',1,2,3,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','backflow_plumbing','vendor','CORE',1,2,3,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','fire_safety','buyer','CORE',1,4,5,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','restaurant_repair','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','equipment_quotes','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','ice_machine','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','linen_laundry','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','grease_drain','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','hood_exhaust','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','restaurant_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','used_equipment','buyer','RESTAURANT',4,0,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','restaurant_repair','buyer','RESTAURANT',3,1,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','restaurant_repair','buyer','RESTAURANT',3,1,4,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','restaurant_repair','buyer','RESTAURANT',3,1,4,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','restaurant_repair','buyer','RESTAURANT',2,2,4,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','restaurant_repair','buyer','RESTAURANT',2,2,4,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','restaurant_repair','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','restaurant_repair','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','restaurant_repair','vendor','RESTAURANT',1,1,2,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','restaurant_repair','vendor','RESTAURANT',1,1,2,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','restaurant_repair','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','restaurant_repair','vendor','RESTAURANT',1,1,2,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','restaurant_repair','buyer','RESTAURANT',1,3,4,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','restaurant_repair','buyer','RESTAURANT',1,3,4,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','restaurant_repair','vendor','RESTAURANT',1,1,2,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','restaurant_repair','vendor','RESTAURANT',1,1,2,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','restaurant_repair','buyer','RESTAURANT',1,3,4,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','restaurant_repair','vendor','RESTAURANT',1,1,2,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','equipment_quotes','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','ice_machine','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','linen_laundry','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','grease_drain','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','hood_exhaust','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','restaurant_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','restaurant_repair','vendor','RESTAURANT',1,1,2,'LOW','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','restaurant_repair','buyer','RESTAURANT',1,3,4,'LOW','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','used_equipment','vendor','RESTAURANT',1,1,2,'MEDIUM','public business discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Camp Verde','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Chino Valley','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Cottonwood','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Flagstaff','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Kingman','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Phoenix','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Prescott Valley','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Scottsdale','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Sedona','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Tucson','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','growth_pack','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','waste_audit','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','competitor_intel','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','market_expansion','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
insert into research_backlog(market,service_key,side,market_priority,target_gap,current_count,goal,research_priority,research_method,status,notes)
values('Winslow','vendor_savings','buyer','INTERNAL',5,0,5,'MEDIUM','B2B buyer discovery','QUEUED','')
on conflict(market,service_key,side) do update set market_priority=excluded.market_priority,target_gap=excluded.target_gap,current_count=excluded.current_count,goal=excluded.goal,research_priority=excluded.research_priority,research_method=excluded.research_method,status=excluded.status,notes=excluded.notes,updated_at=now();
