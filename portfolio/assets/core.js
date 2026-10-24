(function(){
  const markets=["Prescott","Prescott Valley","Chino Valley","Cottonwood","Camp Verde","Sedona","Flagstaff","Winslow","Kingman","Phoenix","Scottsdale","Tucson"];
  const GLOBAL_WEBHOOK=window.BMC_WEBHOOK_URL||"https://hooks.bmcluminaryventures.com/api/intake";

  document.querySelectorAll("[data-market-select]").forEach(function(sel){
    if(sel.options.length>1)return;
    markets.forEach(function(city){const o=document.createElement("option");o.value=city;o.textContent=city;sel.appendChild(o);});
    const other=document.createElement("option");other.value="Other Arizona";other.textContent="Other Arizona";sel.appendChild(other);
  });
  document.querySelectorAll("[data-year]").forEach(function(el){el.textContent=new Date().getFullYear();});
  document.querySelectorAll(".footer-in").forEach(function(el){
    if(el.querySelector("[data-bmc-legal-links]"))return;
    const span=document.createElement("span");span.dataset.bmcLegalLinks="true";
    span.innerHTML='<a href="/portfolio/how-it-works/">How it works</a> · <a href="/portfolio/privacy/">Privacy</a> · <a href="/portfolio/terms/">Terms</a>';
    el.appendChild(span);
  });

  if(!document.querySelector('link[rel="canonical"]')){
    const canonical=document.createElement("link");canonical.rel="canonical";canonical.href=location.origin+location.pathname;document.head.appendChild(canonical);
  }
  if(!document.querySelector('script[data-bmc-org-schema]')){
    const schema=document.createElement("script");schema.type="application/ld+json";schema.dataset.bmcOrgSchema="true";
    schema.textContent=JSON.stringify({
      "@context":"https://schema.org","@type":"Organization","name":"BMC Luminary Ventures LLC",
      "url":"https://bmcluminaryventures.com/","areaServed":{"@type":"State","name":"Arizona"},
      "description":"Arizona managed local-service matching, sourcing, and business services."
    });
    document.head.appendChild(schema);
  }

  function payloadFrom(form){
    const data={};
    new FormData(form).forEach(function(v,k){if(k!=="website")data[k]=String(v).trim();});
    data.form_type=form.dataset.formType||"general";
    data.submission_id=(crypto.randomUUID?crypto.randomUUID():("sub_"+Date.now()+"_"+Math.random().toString(36).slice(2)));
    data.page=location.href;data.path=location.pathname;data.referrer=document.referrer||"";
    const q=new URLSearchParams(location.search);
    ["utm_source","utm_medium","utm_campaign","utm_content","utm_term"].forEach(k=>{if(q.get(k))data[k]=q.get(k)});\n    if(q.get("session_id"))data.stripe_session_id=q.get("session_id");\n    if(q.get("offer"))data.offer_key=q.get("offer");
    data.submitted_at=new Date().toISOString();
    return data;
  }

  function mailFallback(form,data){
    const to=form.dataset.email||"contact@bmcluminaryventures.com";
    const subject=form.dataset.subject||("BMC website inquiry: "+(data.form_type||"general"));
    const body=Object.entries(data).map(([k,v])=>k.replaceAll("_"," ")+": "+v).join("\n");
    location.href="mailto:"+encodeURIComponent(to)+"?subject="+encodeURIComponent(subject)+"&body="+encodeURIComponent(body);
  }

  document.querySelectorAll("form[data-bmc-form]").forEach(function(form){
    form.addEventListener("submit",async function(e){
      e.preventDefault();
      if(form.querySelector('[name="website"]')?.value)return;
      const button=form.querySelector('button[type="submit"]'),note=form.querySelector("[data-form-notice]"),data=payloadFrom(form);
      const pageEndpoint=document.querySelector('meta[name="bmc-webhook"]')?.content||"";
      const endpoint=form.dataset.endpoint||((pageEndpoint&&!pageEndpoint.includes("REPLACE_ME"))?pageEndpoint:GLOBAL_WEBHOOK);
      if(button){button.disabled=true;button.textContent="Sending…";}
      try{
        const controller=new AbortController(),timer=setTimeout(()=>controller.abort(),5000);
        const r=await fetch(endpoint,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(data),signal:controller.signal});
        clearTimeout(timer);
        if(!r.ok)throw new Error("Webhook returned "+r.status);
        const response=await r.json().catch(()=>({}));
        if(note){note.textContent=response.message||"Received. We’ll route this request and follow up using the contact method you selected.";note.classList.add("show");}
        form.reset();
      }catch(err){
        console.error(err);
        if(note){note.textContent="Automated intake is not reachable yet. Your email app will open with the request details so nothing is lost.";note.classList.add("show");}
        mailFallback(form,data);
      }finally{
        if(button){button.disabled=false;button.textContent=button.dataset.label||"Submit request";}
      }
    });
  });
})();