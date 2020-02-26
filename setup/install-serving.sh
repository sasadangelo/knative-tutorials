#!/bin/bash

#set -v

DIR="$(dirname "$0")"
. "${DIR}/config.sh"

# Install Serving CRDs
kubectl apply -l knative.dev/crd-install=true \
-f "https://github.com/knative/serving/releases/download/v${KNATIVE_VERSION}/serving.yaml" \
-f "https://github.com/knative/serving/releases/download/v${KNATIVE_VERSION}/monitoring.yaml"

# Install Serving
kubectl apply \
-f "https://github.com/knative/serving/releases/download/v${KNATIVE_VERSION}/serving.yaml" \
-f "https://github.com/knative/serving/releases/download/v${KNATIVE_VERSION}/monitoring.yaml"

# Check all serving pods have STATUS 'Running'
# kubectl get pods -n knative-serving

# Check all monitoring pods have STATUS 'Running'
# kubectl get pods -n knative-monitoring
