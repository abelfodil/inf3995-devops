#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

REGISTRY_URL=$(cat "$SCRIPT_DIR/registry_url")

# Cross-compiler build
BUILDER_ARM_TAG="$REGISTRY_URL/inf3995-arm-builder"
docker pull --platform linux/arm/v7 alpine
docker build --platform linux/arm/v7 -t $BUILDER_ARM_TAG "$SCRIPT_DIR/builder"
docker push $BUILDER_ARM_TAG

# CI build
CI_TAG="$REGISTRY_URL/inf3995-ci"
docker pull --platform linux/amd64 alpine
docker build -t builder "$SCRIPT_DIR/builder"
docker build -t $CI_TAG "$SCRIPT_DIR/ci"
docker push $CI_TAG
