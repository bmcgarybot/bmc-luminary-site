(function(){
  // BMC_TWO_SIDED_NAV: keep the two audiences obvious without hiding either path.
  const markets=["Prescott","Prescott Valley","Chino Valley","Dewey-Humboldt","Mayer","Cordes Lakes","Williamson Valley","Ash Fork","Seligman","Skull Valley","Cottonwood","Camp Verde","Sedona","Flagstaff","Winslow","Kingman","Golden Valley","Bullhead City","Phoenix","Scottsdale","Tucson"];
  const GLOBAL_WEBHOOK=window.BMC_WEBHOOK_URL||"https://hooks.bmcservicenetwork.com/api/intake";
  const CONTACT_EMAIL="contact@bmcservicenetwork.com";

  // BMC_AUDIENCE_SWITCH_V9: persistent customer/provider switch across public pages.
  (function(){
    const providerSide=/\/(providers|vendor-partner|provider-pilot|provider-pilot-activate|provider-response|provider-job-update|provider-login|provider-dashboard)\//.test(location.pathname);
    const navIn=document.querySelector(".nav .nav-in");
    if(document.body.classList.contains("growth-seller-page")) return;
    if(!navIn || navIn.querySelector("[data-audience-switch]")) return;
    const tools=document.createElement("div");
    tools.className="nav-tools";
    tools.dataset.audienceSwitch="true";
    tools.innerHTML='<div class="audience-switch" aria-label="Choose site area">'
      +'<a href="/services/" class="'+(providerSide?'':'is-active')+'">I need service</a>'
      +'<a href="/providers/" class="'+(providerSide?'is-active':'')+'">I provide services</a>'
      +'</div>';
    navIn.appendChild(tools);
  })();

  // BMC_SCROLL_MOTION_V7: lightweight progressive motion for the editorial customer experience.
  const reduceMotion=window.matchMedia&&window.matchMedia("(prefers-reduced-motion: reduce)").matches;
  if(document.body.classList.contains("editorial-site")&&!reduceMotion){
    document.documentElement.classList.add("js-motion");
    const revealTargets=[...document.querySelectorAll(
      ".editorial-intro,.image-service-card,.category-tile,.service-card,.venture-card,.steps .card,.reassure-strip,.soft-panel,.request-card,.provider-story,.provider-compare,.provider-lead-demo,.provider-proof-band,.provider-step,.provider-cta-band"
    )];
    revealTargets.forEach(function(el,i){
      el.classList.add("reveal-item");
      el.style.setProperty("--reveal-delay",Math.min((i%6)*55,275)+"ms");
    });
    const observer=new IntersectionObserver(function(entries){
      entries.forEach(function(entry){
        if(entry.isIntersecting){entry.target.classList.add("is-visible");observer.unobserve(entry.target);}
      });
    },{threshold:.12,rootMargin:"0px 0px -5% 0px"});
    revealTargets.forEach(function(el){observer.observe(el);});

    const heroImg=document.querySelector(".hero-photo img");
    let ticking=false;
    function motionFrame(){
      const y=Math.min(window.scrollY,700);
      if(heroImg&&window.innerWidth>850)heroImg.style.transform="translateY("+(y*.035)+"px) scale(1.055)";
      document.querySelector(".editorial-site .nav")?.classList.toggle("is-scrolled",window.scrollY>18);
      ticking=false;
    }
    window.addEventListener("scroll",function(){
      if(!ticking){requestAnimationFrame(motionFrame);ticking=true;}
    },{passive:true});
    motionFrame();

    const providerSteps=[...document.querySelectorAll("[data-provider-step]")];
    const progressFill=document.querySelector(".provider-progress-fill");
    if(providerSteps.length){
      const stepObserver=new IntersectionObserver(function(entries){
        const visible=entries.filter(e=>e.isIntersecting).sort((a,b)=>b.intersectionRatio-a.intersectionRatio)[0];
        if(!visible)return;
        const idx=providerSteps.indexOf(visible.target);
        providerSteps.forEach((el,i)=>el.classList.toggle("is-active",i===idx));
        if(progressFill)progressFill.style.height=(((idx+1)/providerSteps.length)*100)+"%";
      },{threshold:[.25,.45,.65],rootMargin:"-18% 0px -40% 0px"});
      providerSteps.forEach(el=>stepObserver.observe(el));
    }
  } else {
    document.querySelector(".editorial-site .nav")?.classList.toggle("is-scrolled",window.scrollY>18);
  }

  document.querySelectorAll("[data-market-select]").forEach(function(sel){
    if(sel.options.length>1)return;
    markets.forEach(function(city){const o=document.createElement("option");o.value=city;o.textContent=city;sel.appendChild(o);});
    const other=document.createElement("option");other.value="Other Arizona";other.textContent="Other Arizona";sel.appendChild(other);
  });
  // Prefill campaign landing forms without exposing email addresses in URLs.
  const landingQuery=new URLSearchParams(location.search);
  const prefillMap={market:"market",business:"business_name",target:"source_target_id"};
  Object.entries(prefillMap).forEach(function([queryKey,fieldName]){
    const value=landingQuery.get(queryKey);
    if(!value)return;
    document.querySelectorAll('[name="'+fieldName+'"]').forEach(function(field){
      if(field.tagName==="SELECT"){
        const option=[...field.options].find(o=>o.value===value);
        if(option)field.value=value;
      }else field.value=value;
    });
  });

  document.querySelectorAll("[data-year]").forEach(function(el){el.textContent=new Date().getFullYear();});
  document.querySelectorAll(".footer-in").forEach(function(el){
    if(el.querySelector("[data-bmc-legal-links]"))return;
    const span=document.createElement("span");span.dataset.bmcLegalLinks="true";
    span.innerHTML='<a href="/how-it-works/">How it works</a> · <a href="/privacy/">Privacy</a> · <a href="/terms/">Terms</a>';
    el.appendChild(span);
  });

  if(!document.querySelector('link[rel="canonical"]')){
    const canonical=document.createElement("link");canonical.rel="canonical";canonical.href="https://bmcservicenetwork.com"+location.pathname;document.head.appendChild(canonical);
  }
  if(!document.querySelector('script[data-bmc-org-schema]')){
    const schema=document.createElement("script");schema.type="application/ld+json";schema.dataset.bmcOrgSchema="true";
    schema.textContent=JSON.stringify({
      "@context":"https://schema.org","@type":"Organization","name":"BMC Luminary Ventures LLC","alternateName":"BMC Service Network",
      "url":"https://bmcservicenetwork.com/","areaServed":{"@type":"State","name":"Arizona"},
      "description":"Arizona managed local-service matching, sourcing, and business services."
    });
    document.head.appendChild(schema);
  }

  function payloadFrom(form){
    const data={};
    new FormData(form).forEach(function(v,k){if(k!=="website")data[k]=String(v).trim();});
    data.form_type=form.dataset.formType||"general";
    data.customer_path=form.dataset.customerPath||data.customer_path||(
      document.body.classList.contains("service-page")?"fix_or_handle_job":""
    );
    if(!form.dataset.submissionId){
      form.dataset.submissionId=(crypto.randomUUID?crypto.randomUUID():("sub_"+Date.now()+"_"+Math.random().toString(36).slice(2)));
    }
    data.submission_id=form.dataset.submissionId;
    data.page=location.href;data.path=location.pathname;data.referrer=document.referrer||"";
    const q=new URLSearchParams(location.search);
    ["utm_source","utm_medium","utm_campaign","utm_content","utm_term"].forEach(k=>{if(q.get(k))data[k]=q.get(k)});
    if(q.get("session_id"))data.stripe_session_id=q.get("session_id");
    if(q.get("offer"))data.offer_key=q.get("offer");
    data.submitted_at=new Date().toISOString();
    return data;
  }

  function showSubmissionSuccess(form,response){
    let card=form.querySelector("[data-success-card]");
    if(!card){
      card=document.createElement("div");
      card.className="submission-success";
      card.dataset.successCard="";
      const note=form.querySelector("[data-form-notice]");
      if(note && note.parentNode)note.parentNode.insertBefore(card,note.nextSibling);
      else form.appendChild(card);
    }
    const formType=form.dataset.formType||"";
    let title=response.service_name
      ? "We matched this to "+response.service_name+"."
      : response.status==="split"
        ? "We broke this into the right building jobs."
        : "We got your request.";
    let steps=[];
    if(formType==="growth_snapshot"){
      if(response.status==="sample_pending"){
        title="We saved your target request.";
        steps=[
          "BMC will not pad a sample with weak records just to reach five.",
          "This exact market needs an inventory check before the five can be sent.",
          "You do not need to submit the form again."
        ];
      }else{
        title="Your 5 commercial targets are ready.";
        steps=[
          "Use the five free targets and judge the fit for yourself.",
          response.checkout_url?"If they match the work you want, the full pack is 100 total qualified prospects for $499.":"BMC is not offering the 100-prospect pack in this market until the reserve inventory clears the quality gate.",
          "If a paid prospect later fails the published qualification standard, BMC replaces it."
        ];
      }
    }else if(formType==="vendor_response"){
      if(response.status==="accepted"){
        title="Job accepted.";
        steps=[
          "Use the customer details in the confirmation above to follow up promptly.",
          "The customer is also being told which provider accepted the request.",
          "Use the secure job-update link to mark contacted, estimate, won, or lost."
        ];
      }else{
        title="Request passed.";
        steps=[
          "BMC saved your response.",
          "We’ll try the next matching provider when one is available.",
          "Passing does not hurt your provider account."
        ];
      }
    }else if(formType==="job_update"){
      title="Job update saved.";
      steps=[
        "BMC recorded the latest stage you reported.",
        "You can use the same secure link again while the job is still moving forward.",
        "A won or lost update closes this match."
      ];
    }else if(formType==="vendor_partner"){
      title="Application received.";
      steps=[
        "You’re done for now. There is no second application to fill out.",
        "BMC will review the jobs, area, capacity, and credentials you submitted.",
        "If approved, you’ll receive a secure provider dashboard link by email."
      ];
    }else if(formType==="vendor_pilot_activation"){
      title="Pilot details received.";
      steps=[
        "BMC will review the work, area, capacity, and credentials you submitted.",
        "You do not need to submit this form again.",
        "If approved, you’ll receive a secure provider dashboard link by email."
      ];
    }else if(response.status==="provider_offered"){
      steps=[
        "A matching provider can review the job details.",
        "If they accept, you’ll get their business contact information and they’ll get the contact details you submitted.",
        "The provider handles its own price, schedule, warranty, and job terms directly with you."
      ];
    }else if(response.status==="exception"){
      steps=[
        "BMC understood the service, but an active provider was not available automatically.",
        "The request is flagged for the next available option instead of disappearing into a dead end."
      ];
    }else if(response.status==="payment_required"){
      title="Project details saved.";
      steps=[
        "Your project details are safely on file.",
        "Research has not started yet because this is a paid BMC product.",
        "Complete the matching checkout and BMC will move the paid order into fulfillment."
      ];
    }else if(response.status==="payment_verification_pending"){
      title="Project details saved.";
      steps=[
        "You do not need to submit this form again.",
        "BMC is linking the Stripe payment confirmation to these project details.",
        "Once the paid order is confirmed, it moves into the fulfillment queue automatically."
      ];
    }else if(response.status==="internal_queue"){
      steps=[
        "BMC has the request and the service it belongs to.",
        "The next research, quote, sourcing, or review step is now in the internal work queue.",
        "We’ll use the contact information you provided for the next update."
      ];
    }else if(response.status==="split"){
      const names=Array.isArray(response.service_names)?response.service_names:[];
      steps=[
        names.length?("We separated this into: "+names.join(", ")+"."):"We separated the building request into the jobs you selected.",
        "Each job can now move to the right provider or next step without making you start over.",
        "You’ll receive updates using the contact information you provided."
      ];
    }else if(response.status==="needs_classification"){
      steps=[
        "The request is saved.",
        "It needs one more classification step before it can be sent to the right place.",
        "You do not need to submit it again."
      ];
    }else{
      steps=[
        "Your request is saved.",
        "BMC will use the details you provided to move it to the next step.",
        "You do not need to submit the same request again."
      ];
    }
    card.replaceChildren();
    const heading=document.createElement("h3");
    heading.textContent=title;
    const message=document.createElement("p");
    message.textContent=response.message||"Your request is in.";
    const list=document.createElement("ol");
    steps.forEach(function(step){
      const item=document.createElement("li");
      item.textContent=step;
      list.appendChild(item);
    });
    card.appendChild(heading);
    card.appendChild(message);
    card.appendChild(list);
    if(formType==="growth_snapshot" && Array.isArray(response.sample) && response.sample.length){
      const sampleWrap=document.createElement("div");
      sampleWrap.className="growth-sample-results";
      response.sample.forEach(function(row,index){
        const item=document.createElement("div");
        item.className="soft-panel";
        const h=document.createElement("h4");
        h.textContent=(index+1)+". "+(row.business_name||"Commercial prospect")+" · "+(row.fit_score||0)+"/100";
        const why=document.createElement("p");
        why.textContent=row.fit_reason||"Qualified commercial fit.";
        const contact=document.createElement("p");
        contact.textContent="Public contact route: "+(row.contact_route||"See source");
        const angle=document.createElement("p");
        angle.textContent="Suggested angle: "+(row.sales_angle||"Lead with the relevant commercial use case.");
        item.append(h,why,contact,angle);
        if(row.source_url && /^https?:\/\//i.test(row.source_url)){
          const source=document.createElement("a");
          source.href=row.source_url;source.target="_blank";source.rel="noopener";
          source.textContent="View source";
          item.appendChild(source);
        }
        sampleWrap.appendChild(item);
      });
      card.appendChild(sampleWrap);
      if(response.checkout_url && /^https:\/\/buy\.stripe\.com\//i.test(response.checkout_url)){
        const actions=document.createElement("div");actions.className="actions";
        const checkout=document.createElement("a");checkout.className="btn btn-primary";
        checkout.href=response.checkout_url;checkout.textContent="Get the full 100 for $499";
        actions.appendChild(checkout);card.appendChild(actions);
      }
    }
    card.classList.add("show");
    card.scrollIntoView({behavior:"smooth",block:"center"});
  }

  async function maybeClaimGrowthSample(){
    const q=new URLSearchParams(location.search);
    const target=q.get("target"),claim=q.get("claim");
    if(!target||!claim)return;
    const form=document.querySelector('form[data-form-type="growth_snapshot"]');
    if(!form)return;
    const note=form.querySelector("[data-form-notice]");
    const pageEndpoint=document.querySelector('meta[name="bmc-webhook"]')?.content||GLOBAL_WEBHOOK;
    const endpoint=pageEndpoint.replace(/\/api\/intake(?:\?.*)?$/,"/api/growth/claim-free-five");
    const payload={target_id:target,claim:claim,preview:q.get("preview")||"",page:location.href,referrer:document.referrer||""};
    ["utm_source","utm_medium","utm_campaign","utm_content","utm_term"].forEach(function(k){if(q.get(k))payload[k]=q.get(k)});
    if(note){note.textContent="Building your 5 researched commercial targets…";note.classList.add("show");}
    try{
      const controller=new AbortController(),timer=setTimeout(()=>controller.abort(),15000);
      const r=await fetch(endpoint,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(payload),signal:controller.signal});
      clearTimeout(timer);
      if(!r.ok)throw new Error("Claim returned "+r.status);
      const response=await r.json();
      showSubmissionSuccess(form,response);
      [...form.children].forEach(function(el){if(!el.matches("[data-success-card]"))el.hidden=true;});
    }catch(err){
      console.error(err);
      if(note){
        note.textContent="We couldn't load the one-click sample automatically. Your invitation details are still saved below, so you can use the form without starting from scratch.";
        note.classList.add("show");
      }
    }
  }
  maybeClaimGrowthSample();

  document.querySelectorAll("form[data-bmc-form]").forEach(function(form){
    form.addEventListener("submit",async function(e){
      e.preventDefault();
      if(form.querySelector('[name="website"]')?.value)return;
      const button=form.querySelector('button[type="submit"]'),note=form.querySelector("[data-form-notice]"),data=payloadFrom(form);
      const pageEndpoint=document.querySelector('meta[name="bmc-webhook"]')?.content||"";
      const endpoint=form.dataset.endpoint||((pageEndpoint&&!pageEndpoint.includes("REPLACE_ME"))?pageEndpoint:GLOBAL_WEBHOOK);
      if(button){button.disabled=true;button.textContent="Sending…";}
      try{
        const controller=new AbortController(),timer=setTimeout(()=>controller.abort(),15000);
        const r=await fetch(endpoint,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(data),signal:controller.signal});
        clearTimeout(timer);
        if(!r.ok)throw new Error("Webhook returned "+r.status);
        const response=await r.json().catch(()=>({}));
        if(note){note.textContent=response.message||"We got your request.";note.classList.add("show");}
        showSubmissionSuccess(form,response);
        form.reset();
        delete form.dataset.submissionId;
        try{sessionStorage.removeItem("bmc_pending_submission");}catch(_){};
      }catch(err){
        console.error(err);
        if(note){
          note.textContent="We couldn't send this request automatically. Your entries are still here. Please try again in a moment. If it keeps failing, use the contact link in the site footer.";
          note.classList.add("show");
        }
      }finally{
        if(button){button.disabled=false;button.textContent=button.dataset.label||"Submit request";}
      }
    });
  });
})();