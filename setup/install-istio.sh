#!/bin/bash

set -v

DIR="$(dirname "$0")"
. "${DIR}/config"

# Install Istio CRDs
kubectl apply -f https://raw.githubusercontent.com/knative/serving/master/third_party/istio-${ISTIO_VERSION}/istio-crds.yaml

#while [[ $(kubectl get crd gateways.networking.istio.io -o jsonpath='{.status.conditions[?(@.type=="Established")].status}') != 'True' ]]; do
#  echo "Waiting on Istio CRDs"; sleep 1
#done

# Install Istio
#kubectl apply -f https://raw.githubusercontent.com/knative/serving/master/third_party/istio-${ISTIO_VERSION}/istio-minimal.yaml

# Check all Istio pods have STATUS 'Running'
# kubectl get pods -n istio-system

# Install Cluster Local Gateway
#kubectl apply -f https://raw.githubusercontent.com/knative/serving/master/third_party/istio-${ISTIO_VERSION}/istio-knative-extras.yaml

# Check that cluster-local-gateway exists
# kubectl get svc -n istio-system
