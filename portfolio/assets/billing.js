(function(){
  function apply(data){
    document.querySelectorAll('[data-bmc-checkout]').forEach(el=>{
      const key=el.dataset.bmcCheckout,offer=data.offers&&data.offers[key];
      if(!offer)return;
      const url=offer.payment_link_url||offer.fallback_url||'#';
      el.href=url;
      el.dataset.checkoutStatus=offer.payment_link_url?'live':'intake';
      if(el.dataset.liveText && offer.payment_link_url) el.textContent=el.dataset.liveText;
      if(el.dataset.fallbackText && !offer.payment_link_url) el.textContent=el.dataset.fallbackText;
    });
    document.querySelectorAll('[data-bmc-price]').forEach(el=>{
      const offer=data.offers&&data.offers[el.dataset.bmcPrice];
      if(offer)el.textContent='$'+Number(offer.amount_usd).toLocaleString('en-US');
    });
  }

  fetch('/data/billing.json')
    .then(r=>{if(!r.ok)throw new Error('live-root billing path unavailable'); return r.json();})
    .catch(()=>fetch('/portfolio/data/billing.json').then(r=>r.json()))
    .then(apply)
    .catch(()=>{});
})();
