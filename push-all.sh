#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
REGISTRY_URL=$(cat "$SCRIPT_DIR/registry_url")

CI_TAG="$REGISTRY_URL/ci"
docker build -t builder "$SCRIPT_DIR/builder"
docker build -t $CI_TAG "$SCRIPT_DIR/ci"
docker push $CI_TAG
