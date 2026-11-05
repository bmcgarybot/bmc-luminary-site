FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY scoped_launch.py provider_source_gate.py api_pilot_import.py property_visible_source.py api_pilot_property.py recipient_history.py campaign_reentry.py historical_growth.py auto_scoped_offer.py vendor_published_area.py contact_enrichment.py contact_enrichment_api.py rolling_vendor_research.py reply_review.py scoped_batch.py scoped_dispatch.py census_research_queue.py qualification_scope.py census_research_api.py channel_scan_state.py scoped_quote_api.py scoped_growth.py scoped_journey_api.py research_policy.py research_policy.json held_packets.py held_packet_api.py owner_research_export.py owner_research_public.pem app.py official_research.py service_images.json ops_metrics.py growth_pdf.py growth_offers.py growth_strategy.py growth_review_packets.json growth_review_prospects.json growth_phoenix_cohort.json nevada_pilot.py nevada-config.json warm_leads.py ./
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","8000","--no-access-log"]
