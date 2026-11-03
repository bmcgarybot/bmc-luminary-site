FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py official_research.py service_images.json ops_metrics.py growth_pdf.py growth_offers.py growth_review_packets.json growth_review_prospects.json nevada_pilot.py nevada-config.json warm_leads.py ./
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","8000","--no-access-log"]
