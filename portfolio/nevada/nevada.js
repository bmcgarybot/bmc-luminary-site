"use strict";
const api="https://hooks.bmcservicenetwork.com/api/nevada";
const form=document.querySelector("#nv-request");
const submit=document.querySelector("#request-submit");
const result=document.querySelector("#request-result");
const business=document.querySelector("#business-name");
const audience=document.querySelector("#audience");
const service=document.querySelector("#service");
const allOptions=Array.from(service.options).map(o=>o.cloneNode(true));
const householdKeys=new Set(["solar_panel_cleaning","residential_cleaning","housekeeping_service","groundskeeping","home_watch","estate_maintenance","errand_service","home_organization"]);
function updateAudience(){
 business.required=audience.value==="business";
 const selected=service.value;
 const options=audience.value==="household"?allOptions.filter(o=>householdKeys.has(o.value)):allOptions;
 service.replaceChildren(...options.map(o=>o.cloneNode(true)));
 if(options.some(o=>o.value===selected))service.value=selected;
}
audience.addEventListener("change",updateAudience);updateAudience();
fetch(api+"/status",{credentials:"omit"}).then(r=>{if(!r.ok)throw Error();return r.json();}).then(s=>{
 if(s.state_code==="NV" && s.intake_open===true){
  submit.disabled=false;submit.textContent="Check research availability";
  document.querySelector("#launch-status").textContent="Nevada research requests are open. We confirm scope and capacity before offering payment.";
 }
}).catch(()=>{});
form.addEventListener("submit",async e=>{
 e.preventDefault();if(submit.disabled)return;
 const data=Object.fromEntries(new FormData(form));data.consent=form.elements.consent.checked;
 submit.disabled=true;result.textContent="Submitting your request…";
 try{const r=await fetch(api+"/request",{method:"POST",headers:{"Content-Type":"application/json"},credentials:"omit",body:JSON.stringify(data)});
  const response=await r.json();if(!r.ok)throw Error(typeof response.detail==="string"?response.detail:"Please check your request and try again.");
  result.textContent=response.message;form.reset();business.required=false;
 }catch(err){result.textContent=err.message||"Unable to submit. Please try again later.";}
 finally{submit.disabled=false;}
});
