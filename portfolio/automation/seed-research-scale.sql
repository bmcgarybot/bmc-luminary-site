-- Scale research depth for the Arizona operating footprint without resetting reviewed data.
-- Metro markets should build large prospect pools; regional markets remain broad enough for redundancy.

update research_backlog
set goal = greatest(goal,
  case
    when market in ('Phoenix','Scottsdale','Tucson') and side='vendor' then 25
    when market in ('Phoenix','Scottsdale','Tucson') and side='buyer' then 50
    when market in ('Prescott','Prescott Valley','Flagstaff','Sedona') and side='vendor' then 12
    when market in ('Prescott','Prescott Valley','Flagstaff','Sedona') and side='buyer' then 25
    when side='vendor' then 8
    else 15
  end),
  research_priority = case
    when market in ('Phoenix','Scottsdale','Tucson') then 'HIGH'
    else research_priority
  end,
  research_pass = case
    when coalesce(research_pass,0)=0 and last_attempt_at is not null then 1
    else coalesce(research_pass,0)
  end,
  updated_at=now();

update research_backlog
set target_gap=greatest(0,goal-current_count),
    status=case
      when coalesce(candidates_found,0) < goal
       and coalesce(research_pass,0) < 4
       and status in ('review','searched_no_results','completed')
      then 'queued'
      else status
    end,
    updated_at=now();
