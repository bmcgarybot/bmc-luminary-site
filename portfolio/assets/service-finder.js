(function(){
  const DATA_URL="/data/services.json";
  const BACKEND_SEARCH_URL="https://hooks.bmcservicenetwork.com/api/service-search";
  const DEFAULT_IMAGE="https://images.unsplash.com/photo-1505798577917-a65157d3320a?auto=format&fit=crop&w=900&q=78";

  const images={
    restaurant_equipment:"https://images.pexels.com/photos/28704740/pexels-photo-28704740.jpeg?auto=compress&cs=tinysrgb&w=900",
    restaurant_repair:"https://images.pexels.com/photos/28704740/pexels-photo-28704740.jpeg?auto=compress&cs=tinysrgb&w=900",
    ice_machine:"https://images.pexels.com/photos/28704740/pexels-photo-28704740.jpeg?auto=compress&cs=tinysrgb&w=900",
    restaurant_maintenance:"https://images.pexels.com/photos/28704740/pexels-photo-28704740.jpeg?auto=compress&cs=tinysrgb&w=900",
    equipment_quotes:"https://images.pexels.com/photos/6375553/pexels-photo-6375553.jpeg?auto=compress&cs=tinysrgb&w=900",
    used_equipment:"https://images.pexels.com/photos/6375553/pexels-photo-6375553.jpeg?auto=compress&cs=tinysrgb&w=900",
    electrical_service:"https://images.pexels.com/photos/27928760/pexels-photo-27928760.jpeg?auto=compress&cs=tinysrgb&w=900",
    hvac_heat:"https://images.pexels.com/photos/5463575/pexels-photo-5463575.jpeg?auto=compress&cs=tinysrgb&w=900",
    handyman_repairs:"https://images.pexels.com/photos/4981812/pexels-photo-4981812.jpeg?auto=compress&cs=tinysrgb&w=900",
    residential_cleaning:"https://images.pexels.com/photos/5591854/pexels-photo-5591854.jpeg?auto=compress&cs=tinysrgb&w=900",
    turnover_cleaning:"https://images.pexels.com/photos/5591854/pexels-photo-5591854.jpeg?auto=compress&cs=tinysrgb&w=900",
    tree_service:"https://images.pexels.com/photos/31127615/pexels-photo-31127615.jpeg?auto=compress&cs=tinysrgb&w=900",
    landscaping:"https://images.pexels.com/photos/9029162/pexels-photo-9029162.jpeg?auto=compress&cs=tinysrgb&w=900",
    junk_hauling:"https://images.pexels.com/photos/33222182/pexels-photo-33222182.jpeg?auto=compress&cs=tinysrgb&w=900",
    realtor_listing_prep:"https://images.pexels.com/photos/5591854/pexels-photo-5591854.jpeg?auto=compress&cs=tinysrgb&w=900",
    home_staging:"https://images.pexels.com/photos/8927361/pexels-photo-8927361.jpeg?auto=compress&cs=tinysrgb&w=900",
    str_property_care:"https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=900&q=78",
    facility_maintenance:"https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=900&q=78",
    commercial_cleaning:"https://images.pexels.com/photos/4098315/pexels-photo-4098315.jpeg?auto=compress&cs=tinysrgb&w=900",
    towing_roadside:"https://images.pexels.com/photos/8931963/pexels-photo-8931963.jpeg?auto=compress&cs=tinysrgb&w=900",
    vehicle_services:"https://images.pexels.com/photos/8985613/pexels-photo-8985613.jpeg?auto=compress&cs=tinysrgb&w=900",
    auto_repair_shop:"https://images.pexels.com/photos/8985613/pexels-photo-8985613.jpeg?auto=compress&cs=tinysrgb&w=900",
    auto_glass:"https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&w=900&q=78",
    pet_sitting:"https://images.pexels.com/photos/9354904/pexels-photo-9354904.jpeg?auto=compress&cs=tinysrgb&w=900",
    mobile_pet_grooming:"https://images.pexels.com/photos/6131568/pexels-photo-6131568.jpeg?auto=compress&cs=tinysrgb&w=900",
    pet_waste:"https://images.pexels.com/photos/11400229/pexels-photo-11400229.jpeg?auto=compress&cs=tinysrgb&w=900",
    vendor_savings:"https://images.unsplash.com/photo-1556761175-b413da4baf72?auto=format&fit=crop&w=900&q=78",
    quote_sourcing:"https://images.unsplash.com/photo-1554224155-6726b3ff858f?auto=format&fit=crop&w=900&q=78",
    growth_pack:"https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&w=900&q=78",
    competitor_intel:"https://images.unsplash.com/photo-1460925895917-afdab827c52f?auto=format&fit=crop&w=900&q=78",
    market_expansion:"https://images.unsplash.com/photo-1521737711867-e3b97375f902?auto=format&fit=crop&w=900&q=78",
    waste_audit:"https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?auto=format&fit=crop&w=900&q=78"
    rural_property:"https://images.pexels.com/photos/37636298/pexels-photo-37636298.jpeg?auto=compress&cs=tinysrgb&w=900",
    snow_service:"https://images.pexels.com/photos/11508827/pexels-photo-11508827.jpeg?auto=compress&cs=tinysrgb&w=900",
    pool_desert_property:"https://images.pexels.com/photos/6436202/pexels-photo-6436202.jpeg?auto=compress&cs=tinysrgb&w=900",
    hood_exhaust:"https://images.pexels.com/photos/10511959/pexels-photo-10511959.jpeg?auto=compress&cs=tinysrgb&w=900",
    grease_drain:"https://images.pexels.com/photos/15945555/pexels-photo-15945555.jpeg?auto=compress&cs=tinysrgb&w=900",
    window_cleaning:"https://images.pexels.com/photos/13755909/pexels-photo-13755909.jpeg?auto=compress&cs=tinysrgb&w=900",
    pressure_washing:"https://images.pexels.com/photos/12919779/pexels-photo-12919779.jpeg?auto=compress&cs=tinysrgb&w=900",
    pest_control:"https://images.pexels.com/photos/4099468/pexels-photo-4099468.jpeg?auto=compress&cs=tinysrgb&w=900",
    linen_laundry:"https://images.pexels.com/photos/8774639/pexels-photo-8774639.jpeg?auto=compress&cs=tinysrgb&w=900",
    floor_carpet:"https://images.pexels.com/photos/5591854/pexels-photo-5591854.jpeg?auto=compress&cs=tinysrgb&w=900",
    fire_safety:"https://images.pexels.com/photos/34206461/pexels-photo-34206461.jpeg?auto=compress&cs=tinysrgb&w=900",
    backflow_plumbing:"https://images.pexels.com/photos/32588548/pexels-photo-32588548.jpeg?auto=compress&cs=tinysrgb&w=900",
    sign_lighting:"https://images.pexels.com/photos/16368418/pexels-photo-16368418.jpeg?auto=compress&cs=tinysrgb&w=900",
    locksmith_access:"https://images.pexels.com/photos/35287856/pexels-photo-35287856.jpeg?auto=compress&cs=tinysrgb&w=900",
    duct_vent:"https://images.pexels.com/photos/5463575/pexels-photo-5463575.jpeg?auto=compress&cs=tinysrgb&w=900",
    fleet_washing:"https://images.pexels.com/photos/27312708/pexels-photo-27312708.jpeg?auto=compress&cs=tinysrgb&w=900",
    mobile_tire_battery:"https://images.pexels.com/photos/17600886/pexels-photo-17600886.jpeg?auto=compress&cs=tinysrgb&w=900",
    coffee_water:"https://images.pexels.com/photos/11206191/pexels-photo-11206191.jpeg?auto=compress&cs=tinysrgb&w=900",
    parking_lot:"https://images.pexels.com/photos/33966251/pexels-photo-33966251.jpeg?auto=compress&cs=tinysrgb&w=900",
    epoxy_flooring:"https://images.pexels.com/photos/29257600/pexels-photo-29257600.jpeg?auto=compress&cs=tinysrgb&w=900",
    mobile_detailing:"https://images.pexels.com/photos/27312708/pexels-photo-27312708.jpeg?auto=compress&cs=tinysrgb&w=900",
    garage_door:"https://images.pexels.com/photos/7996765/pexels-photo-7996765.jpeg?auto=compress&cs=tinysrgb&w=900",
  };

  const aliases={
    restaurant_equipment:"fryer fryers oven ovens stove stoves range ranges griddle grill grills charbroiler steamer steam table warmer holding cabinet dishwasher dish machine commercial kitchen equipment cooking equipment hot side kitchen appliance",
    restaurant_repair:"restaurant down restaurant repair kitchen down emergency restaurant refrigeration cooler freezer walk in reach in",
    ice_machine:"ice machine ice maker no ice commercial ice",
    hood_exhaust:"hood exhaust fan kitchen hood grease hood",
    grease_drain:"grease trap drain clog restaurant drain",
    restaurant_maintenance:"restaurant maintenance restaurant upkeep kitchen maintenance multiple restaurant repairs",
    equipment_quotes:"equipment quote equipment price buy equipment restaurant equipment quote compare equipment",
    used_equipment:"used restaurant equipment sell restaurant equipment buy used equipment liquidation",
    realtor_listing_prep:"real estate realtor listing home sale sell house sell home listing prep make ready property sale market ready curb appeal",
    home_staging:"real estate staging home staging stage house furniture styling listing photos",
    turnover_cleaning:"real estate move out turnover rental turnover apartment turnover move in move out",
    junk_hauling:"real estate junk junk removal cleanout estate cleanout furniture removal hauling",
    landscaping:"real estate landscaping yard cleanup curb appeal weeds yard",
    electrical_service:"electric electrician electrical breaker breakers outlet outlets switch switches wiring panel panels lights lighting ev charger power no power",
    hvac_heat:"hvac ac a/c air conditioning heat heating furnace heat pump mini split no heat no cooling not cooling not heating",
    handyman_repairs:"handyman repair repairs drywall door doors mounting fixture fixtures punch list small jobs odd jobs",
    residential_cleaning:"house cleaning house cleaner maid housekeeping deep clean home cleaning cleaner",
    tree_service:"tree trees branch limb trimming removal dead tree brush defensible space fuel reduction fire mitigation",
    facility_maintenance:"building maintenance facility maintenance church school theater theatre daycare office medical dental gym apartment apartments property manager multiple repairs building upkeep",
    commercial_cleaning:"office cleaning janitorial commercial cleaning church cleaning school cleaning building cleaning",
    quote_sourcing:"quote quotes bid bids estimate estimates compare vendors find vendors sourcing rfp pricing options",
    vendor_savings:"vendor cost vendor costs bills recurring bills overpaying save money lower costs rebid consolidate vendors spend review",
    waste_audit:"trash bill waste recycling dumpster garbage cost trash cost recycling cost",
    growth_pack:"leads customers sales prospects prospect list customer list find customers more customers business leads",
    competitor_intel:"competitor competitors competition market competitors what competitors are doing",
    market_expansion:"expand expansion new market new city open new location market research",
    towing_roadside:"tow towing roadside jump start lockout stranded car",
    vehicle_services:"mobile mechanic mechanic comes to me mobile car repair on site mechanic roadside mechanic fleet mobile repair",
    auto_repair_shop:"mechanic auto repair auto shop repair shop car repair brake brakes check engine diagnostics oil change tune up maintenance transmission suspension steering alignment exhaust alternator starter engine repair radiator overheating",
    auto_glass:"windshield auto glass cracked windshield chip windshield",
    mobile_tire_battery:"flat tire tire battery dead battery mobile tire",
    mobile_detailing:"car detail detailing vehicle detail ceramic",
    fleet_washing:"fleet washing trucks vans wash fleet",
    pet_sitting:"dog walker dog walking pet sitting pet sitter cat sitter drop in",
    mobile_pet_grooming:"dog grooming pet grooming groomer mobile groomer",
    pet_waste:"dog poop pet waste pooper scooper yard poop"
  };

  const intentGroups=[
    {phrases:["fryer","fryers","commercial kitchen","cooking equipment","oven","griddle","charbroiler","steamer","dish machine"],keys:["restaurant_equipment","restaurant_repair","restaurant_maintenance"],label:"Restaurant equipment help"},
    {phrases:["real estate","realtor","listing","sell my house","sell my home","home sale","listing prep"],keys:["realtor_listing_prep","home_staging","turnover_cleaning","junk_hauling","landscaping"],label:"Getting a property ready"},
    {phrases:["church","school","theater","theatre","daycare","medical office","building maintenance","facility"],keys:["facility_maintenance","commercial_cleaning","handyman_repairs","electrical_service"],label:"Building & facility help"},
    {phrases:["quotes","quote","bids","bid","compare vendors","find vendors"],keys:["quote_sourcing","equipment_quotes","vendor_savings"],label:"Quotes & vendor options"},
    {phrases:["vendor cost","vendor costs","overpaying","lower bills","save money","rebid","consolidate vendors"],keys:["vendor_savings","waste_audit","quote_sourcing"],label:"Cut business costs"},
    {phrases:["more customers","find customers","leads","prospects","prospect list"],keys:["growth_pack","competitor_intel","market_expansion"],label:"Grow the business"},
    {phrases:["restaurant","kitchen"],keys:["restaurant_repair","restaurant_equipment","ice_machine","restaurant_maintenance"],label:"Restaurant help"},
    {phrases:["brake","brakes","check engine","auto shop","repair shop","oil change","transmission","alignment","alternator","starter","car repair"],keys:["auto_repair_shop","vehicle_services","mobile_tire_battery","towing_roadside"],label:"Auto repair"},
    {phrases:["mobile mechanic","mechanic comes to me","mobile car repair","on site mechanic"],keys:["vehicle_services","mobile_tire_battery","towing_roadside"],label:"Mobile vehicle help"}
  ];

  let cache=null;

  function normalize(v){return String(v||"").toLowerCase().replace(/[^a-z0-9\s/+-]+/g," ").replace(/\s+/g," ").trim();}
  function publicHref(s){return "/"+String(s.live_front||"").replace(/^\/portfolio\//,"").replace(/^\//,"");}
  function imageFor(s){return images[s.service_key]||DEFAULT_IMAGE;}
  function enrichedText(s){
    return normalize([s.display_name,s.category,s.primary_offer,aliases[s.service_key]||""].join(" "));
  }

  async function load(){
    if(cache)return cache;
    const r=await fetch(DATA_URL,{cache:"no-store"});
    if(!r.ok)throw new Error("Could not load service list");
    const data=await r.json();
    cache=data.services||[];
    return cache;
  }

  async function remoteSearch(services,query){
    const q=String(query||"").trim();
    if(q.length<3)return null;
    try{
      const controller=new AbortController();
      const timer=setTimeout(()=>controller.abort(),2200);
      const r=await fetch(BACKEND_SEARCH_URL,{
        method:"POST",
        headers:{"Content-Type":"application/json"},
        body:JSON.stringify({query:q}),
        signal:controller.signal
      });
      clearTimeout(timer);
      if(!r.ok)return null;
      const data=await r.json();
      if(!data||!data.match)return null;
      const keys=[data.match.service_key].concat((data.related||[]).map(x=>x.service_key));
      const results=[];
      keys.forEach((key,i)=>{
        const s=services.find(x=>x.service_key===key);
        if(s && !results.some(x=>x.service.service_key===key)){
          results.push({
            service:s,
            score:i===0?120:70-(i*5),
            reason:i===0?(data.source==="local_ai"?"AI match":"Best match"):"Related option",
            remoteSource:data.source
          });
        }
      });
      return {results,data};
    }catch(e){
      return null;
    }
  }


  // General plumbing is not the same as specialist backflow certification.
  // Offer one honest request path instead of pretending a provider is active.
  const PLUMBING_QUERY=/\b(plumb(?:er|ers|ing)?|pipe leak|leak(?:ing|y)? pipe|burst pipe|clogged (?:toilet|drain|sink)|toilet (?:repair|overflow)|water heater|sewer backup|no hot water)\b/i;
  function plumbingRequest(query){
    return {service:{
      service_key:"plumbing_request",
      display_name:"Plumbing help",
      primary_offer:"Describe your plumbing problem. We can take the request and check whether a suitable provider is available.",
      live_front:"/portfolio/request/?problem="+encodeURIComponent(query)
    },score:125,reason:"Plumbing request"};
  }

  function find(services,query,limit){
    const q=normalize(query);
    if(!q)return [];
    if(PLUMBING_QUERY.test(query))return [plumbingRequest(query)];
    const tokens=q.split(" ").filter(t=>t.length>1);
    const boosts={};
    let intentLabel="";
    intentGroups.forEach(group=>{
      const hit=group.phrases.some(p=>q.includes(normalize(p)));
      if(hit){
        if(!intentLabel)intentLabel=group.label;
        group.keys.forEach((k,i)=>boosts[k]=Math.max(boosts[k]||0,80-(i*8)));
      }
    });

    const ranked=services.map(s=>{
      const text=enrichedText(s);
      let score=boosts[s.service_key]||0;
      if(text.includes(q))score+=55;
      tokens.forEach(t=>{
        if(text.includes(t))score+=t.length>4?8:4;
        if(normalize(s.display_name).includes(t))score+=5;
      });
      if(q.includes("broken")||q.includes("not working")||q.includes("won t work")||q.includes("wont work")){
        if(["restaurant_equipment","restaurant_repair","electrical_service","hvac_heat","garage_door","vehicle_services","auto_repair_shop","ice_machine"].includes(s.service_key))score+=5;
      }
      return {service:s,score,reason:intentLabel||s.primary_offer};
    }).filter(x=>x.score>0).sort((a,b)=>b.score-a.score||String(a.service.display_name).localeCompare(String(b.service.display_name)));

    const unique=[];
    const seen=new Set();
    ranked.forEach(x=>{if(!seen.has(x.service.service_key)){seen.add(x.service.service_key);unique.push(x);}});
    return unique.slice(0,limit||5);
  }

  function fallback(services){
    const keys=["electrical_service","hvac_heat","handyman_repairs","residential_cleaning","facility_maintenance","quote_sourcing"];
    return keys.map(k=>services.find(s=>s.service_key===k)).filter(Boolean).map(s=>({service:s,score:1,reason:"Popular place to start"}));
  }

  function cardHTML(result,index,query){
    const s=result.service;
    const best=index===0&&result.score>=30;
    return '<a class="finder-card" href="'+publicHref(s)+'" data-service-key="'+s.service_key+'">'
      +'<div class="finder-card-image"><img src="'+imageFor(s)+'" alt="" loading="lazy"><span class="finder-match-badge">'+(best?'Best match':'Another option')+'</span></div>'
      +'<div class="finder-card-copy"><strong>'+escapeHTML(s.display_name)+'</strong><span>'+escapeHTML(s.primary_offer||"")+'</span>'
      +'<em>'+(best?'This looks closest to “'+escapeHTML(query)+'”.':'This may also fit.')+'</em></div></a>';
  }

  function escapeHTML(v){
    const d=document.createElement("div"); d.textContent=String(v||""); return d.innerHTML;
  }

  function render(container,results,query,options){
    if(!container)return;
    options=options||{};
    const list=results&&results.length?results:[];
    if(!query){container.hidden=true;container.innerHTML="";return;}
    const title=list.length
      ? (list.length===1?'This looks like the best fit.':'These look like the best fits.')
      : 'We did not find an exact match, but you still have options.';
    const shown=list.length?list:(options.fallback||[]);
    const isPlumbing=PLUMBING_QUERY.test(query);
    if(isPlumbing){
      container.hidden=false;
      container.innerHTML='<div class="finder-result-head"><div><div class="editorial-kicker">Plumbing help</div><h2>Need a plumber?</h2><p>Tell us what needs fixing and where. We will check whether a suitable provider is available. No contractor is confirmed yet.</p></div></div>'
        +'<a class="btn btn-primary" href="/request/?problem='+encodeURIComponent(query)+'">Request plumbing help</a>';
      return;
    }
    container.hidden=false;
    container.innerHTML='<div class="finder-result-head"><div><div class="editorial-kicker">What we found</div><h2>'+title+'</h2><p>Choose the closest one. You can change course later.</p></div>'
      +'<a class="btn btn-secondary" href="/request/?problem='+encodeURIComponent(query)+'">None of these</a></div>'
      +'<div class="finder-result-grid">'+shown.map((r,i)=>cardHTML(r,i,query)).join("")+'</div>';
  }

  async function attach(input,container,options){
    const services=await load();
    const opts=options||{};
    const fallbackResults=fallback(services);
    let timer=null,runId=0;

    async function run(){
      const current=++runId;
      const q=input.value.trim();
      const local=find(services,q,opts.limit||5);
      render(container,local,q,{fallback:fallbackResults});
      if(opts.onResults)opts.onResults(local,q,{source:"local"});

      if(q.length<3 || PLUMBING_QUERY.test(q))return;
      const remote=await remoteSearch(services,q);
      if(current!==runId || !remote || !remote.results.length)return;

      const merged=[];
      const seen=new Set();
      remote.results.concat(local).forEach(item=>{
        const key=item.service.service_key;
        if(!seen.has(key)){seen.add(key);merged.push(item);}
      });
      const finalResults=merged.slice(0,opts.limit||5);
      render(container,finalResults,q,{fallback:fallbackResults});
      if(opts.onResults)opts.onResults(finalResults,q,{source:remote.data.source,remote:remote.data});
    }

    input.addEventListener("input",()=>{clearTimeout(timer);timer=setTimeout(run,160);});
    input.addEventListener("focus",()=>{if(input.value.trim())run();});
    if(opts.initialQuery){input.value=opts.initialQuery;run();}
    return {services,run,find:q=>find(services,q,opts.limit||5),remoteSearch:q=>remoteSearch(services,q)};
  }

  window.BMCServiceFinder={load,find,fallback,render,attach,imageFor,publicHref,remoteSearch};
})();