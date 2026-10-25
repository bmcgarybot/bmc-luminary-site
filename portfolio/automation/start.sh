#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
ENV_FILE="${1:-.env}"

if [ ! -f "$ENV_FILE" ]; then
  echo "$ENV_FILE is missing."
  exit 1
fi

env_value(){
  grep -m1 "^$1=" "$ENV_FILE" 2>/dev/null | cut -d= -f2-
}

docker compose --env-file "$ENV_FILE" up -d postgres
bash ./migrate.sh "$ENV_FILE"
docker compose --env-file "$ENV_FILE" up -d ops_api n8n webhook_proxy scheduler searxng

if [ "$(env_value LOCAL_AI_ENABLED)" = "true" ]; then
  echo "LOCAL_AI_ENABLED=true; starting Ollama..."
  docker compose --env-file "$ENV_FILE" --profile local-ai up -d ollama
  MODEL="$(env_value LOCAL_AI_MODEL)"
  ready=0
  for i in $(seq 1 45); do
    if curl -fsS http://127.0.0.1:11434/api/tags >/tmp/bmc_ollama_tags.json 2>/dev/null; then
      ready=1
      break
    fi
    sleep 2
  done
  if [ "$ready" -ne 1 ]; then
    echo "Ollama did not become reachable."
    exit 1
  fi
  if [ -n "$MODEL" ]; then
    if ! docker compose --env-file "$ENV_FILE" --profile local-ai exec -T ollama ollama list | awk 'NR>1 {print $1}' | grep -qx "$MODEL"; then
      echo "Pulling configured local AI model: $MODEL"
      docker compose --env-file "$ENV_FILE" --profile local-ai exec -T ollama ollama pull "$MODEL"
    else
      echo "Configured local AI model is present: $MODEL"
    fi
  fi
else
  echo "LOCAL_AI_ENABLED is not true; deterministic classification remains available."
fi

docker compose --env-file "$ENV_FILE" ps
