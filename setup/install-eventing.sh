#!/bin/bash

#set -v

DIR="$(dirname "$0")"
. "${DIR}/config.sh"

# Install Eventing CRDs
kubectl apply -l knative.dev/crd-install=true \
-f "https://github.com/knative/eventing/releases/download/v${KNATIVE_VERSION}/eventing.yaml"

# Install Eventing
kubectl apply \
-f "https://github.com/knative/eventing/releases/download/v${KNATIVE_VERSION}/eventing.yaml"

# Check all eventing pods have STATUS 'Running'
# kubectl get pods -n knative-eventing
