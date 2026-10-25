-- Authoritative Arizona research sources used for buyer/provider discovery and verification.
insert into research_sources(source_key,source_name,side,source_type,market,county,source_domain,source_url,query_hint,priority,notes)
values
('az_roc_active','Arizona Registrar of Contractors - Active Contractors','vendor','bulk_registry',null,null,'roc.az.gov','https://roc.az.gov/posting-list','licensed contractors by classification and location','CRITICAL','Statewide active contractor posting list; use to source and verify licensed trades.'),
('az_roc_search','Arizona Registrar of Contractors - Contractor Search','vendor','registry',null,null,'roc.az.gov','https://roc.az.gov/search','contractor search by license class and area','HIGH','Verify license class and active status before credential-sensitive routing.'),
('az_opm_registry','Arizona Office of Pest Management - Business Registry','vendor','registry',null,null,'agriculture.az.gov','https://agriculture.az.gov/termites','licensed pest management businesses','HIGH','Verify pest-control business licensing and insurance status.'),
('az_acc_entities','Arizona Corporation Commission - Entity Search','both','verification',null,null,'azcc.gov','https://www.azcc.gov/corporations','corporation LLC entity search','MEDIUM','Entity verification/enrichment; not proof of trade licensing.'),
('adhs_facilities','Arizona Department of Health Services - Licensed Facilities','buyer','registry',null,null,'hsapps.azdhs.gov','https://hsapps.azdhs.gov/ls/sod/Provider.aspx','hospital clinic behavioral health assisted living childcare outpatient','CRITICAL','Large statewide licensed-facility directory for medical, behavioral, residential and care facilities.'),
('adhs_gis','Arizona Department of Health Services - GIS Data','buyer','bulk_registry',null,null,'data.azdhs.gov','https://data.azdhs.gov/maps-gis/search-gis-data-gsheet-list','hospitals medical facilities long-term care pharmacies childcare clinics','HIGH','State GIS datasets include hospitals, medical facilities, long-term care, pharmacies and other facilities.'),
('maricopa_food','Maricopa County Food Establishments','buyer','inspection_registry','Phoenix','Maricopa','envapp.maricopa.gov','https://envapp.maricopa.gov/EnvironmentalHealth/FoodInspections','restaurants grocery food establishments permits inspections','CRITICAL','Primary food-establishment source for Phoenix/Scottsdale and Maricopa County.'),
('pima_food','Pima County Consumer Health & Food Safety','buyer','inspection_registry','Tucson','Pima','pima.gov','https://www.pima.gov/consumer-health-food-safety','restaurants food establishments inspection reports','CRITICAL','Primary food-establishment inspection source for Tucson/Pima County.'),
('yavapai_food','Yavapai County Food Facilities','buyer','inspection_registry','Prescott','Yavapai','yavapaiaz.gov','https://www.yavapaiaz.gov/Resident-Services/Health-Services/Community-Health-Services/Health-Inspections-and-Food-Safety/Food-Safety/Food-Facilities-Inspections','restaurants grocery schools food establishments','CRITICAL','Covers Prescott, Prescott Valley, Chino Valley, Camp Verde, Cottonwood and Yavapai-side Sedona.'),
('coconino_food','Coconino County Inspection Results','buyer','inspection_registry','Flagstaff','Coconino','coconino.az.gov','https://www.coconino.az.gov/environmentalhealth','food establishments hotels pools schools campgrounds','HIGH','Covers Flagstaff and Coconino-side Sedona; portal includes several facility types.'),
('mohave_food','Mohave County Food Safety Inspection Reports','buyer','inspection_registry','Kingman','Mohave','mohave.gov','https://www.mohave.gov/departments/public-health/environmental-health/reports-public-information/food-safety-inspection-reports/','food establishments monthly inspection reports','HIGH','Primary food-establishment source for Kingman/Mohave County.'),
('navajo_food','Navajo County Environmental Health','buyer','inspection_registry','Winslow','Navajo','navajocountyaz.gov','https://www.navajocountyaz.gov/318/Environmental-Health','food establishments hotels motels schools pools inspections','HIGH','Primary regulated-facility source for Winslow/Navajo County.')
on conflict(source_key) do update set
  source_name=excluded.source_name,
  side=excluded.side,
  source_type=excluded.source_type,
  market=excluded.market,
  county=excluded.county,
  source_domain=excluded.source_domain,
  source_url=excluded.source_url,
  query_hint=excluded.query_hint,
  priority=excluded.priority,
  is_active=true,
  notes=excluded.notes,
  updated_at=now();
