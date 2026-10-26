FROM python:3.12-slim
RUN apt-get update \
    && apt-get install -y --no-install-recommends postgresql-client ca-certificates \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY assistant-directory-bootstrap.py /app/assistant-directory-bootstrap.py
COPY assistant-homversa-bootstrap.py /app/assistant-homversa-bootstrap.py
COPY research-refresher-loop.sh /app/research-refresher-loop.sh
RUN chmod +x /app/assistant-directory-bootstrap.py /app/assistant-homversa-bootstrap.py /app/research-refresher-loop.sh
CMD ["/bin/sh","/app/research-refresher-loop.sh"]
