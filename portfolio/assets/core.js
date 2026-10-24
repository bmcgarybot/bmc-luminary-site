(function(){
  const markets=["Prescott","Prescott Valley","Chino Valley","Cottonwood","Camp Verde","Sedona","Flagstaff","Winslow","Kingman","Phoenix","Scottsdale","Tucson"];
  document.querySelectorAll("[data-market-select]").forEach(function(sel){
    if(sel.options.length>1)return;
    markets.forEach(function(city){const o=document.createElement("option");o.value=city;o.textContent=city;sel.appendChild(o);});
    const other=document.createElement("option");other.value="Other Arizona";other.textContent="Other Arizona";sel.appendChild(other);
  });
  document.querySelectorAll("[data-year]").forEach(function(el){el.textContent=new Date().getFullYear();});

  function payloadFrom(form){
    const data={};
    new FormData(form).forEach(function(v,k){if(k!=="website")data[k]=String(v).trim();});
    data.form_type=form.dataset.formType||"general";
    data.page=location.href;
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
      const button=form.querySelector('button[type="submit"]');
      const note=form.querySelector("[data-form-notice]");
      const data=payloadFrom(form);
      const endpoint=form.dataset.endpoint||document.querySelector('meta[name="bmc-webhook"]')?.content||"";
      if(button){button.disabled=true;button.textContent="Sending…";}
      try{
        if(endpoint && !endpoint.includes("REPLACE_ME")){
          const r=await fetch(endpoint,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify(data)});
          if(!r.ok)throw new Error("Webhook returned "+r.status);
          if(note){note.textContent="Received. We’ll route this request and follow up using the contact method you selected.";note.classList.add("show");}
          form.reset();
        }else{
          mailFallback(form,data);
        }
      }catch(err){
        console.error(err);mailFallback(form,data);
      }finally{
        if(button){button.disabled=false;button.textContent=button.dataset.label||"Submit request";}
      }
    });
  });
})();