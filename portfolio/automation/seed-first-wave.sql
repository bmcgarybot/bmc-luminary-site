-- Curated Prescott-area launch cohort.
-- Global outreach switches remain OFF by default. This only selects which queued records are eligible when enabled.

update outreach set wave='pilot1'
where entity_type='vendor' and entity_id in (
  'v_prescott_zebrascapes',
  'v_prescott_yavapai_land',
  'v_yavapai_firewise_bradshaw',
  'v_prescott_tree_jonny',
  'v_prescott_tree_ac',
  'v_chino_vicente',
  'v_chino_kbd',
  'v_pv_pet_scoop',
  'v_pv_sweptaway',
  'v_prescott_americancrown',
  'v_prescott_windowwranglers',
  'v_prescott_sourceone'
);

update outreach set wave='pilot1'
where entity_type='buyer' and entity_id in (
  'b_pv_lifepointe',
  'b_pv_pvumc',
  'b_pv_mainstreettheatre',
  'b_prescott_basis',
  'b_prescott_latierra',
  'b_prescott_trinityschool',
  'b_prescott_pusd'
);
