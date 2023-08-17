#!/bin/sh

helm repo add neuvector https://neuvector.github.io/neuvector-helm/
helm search repo neuvector/core
kubectl label  namespace neuvector "pod-security.kubernetes.io/enforce=privileged"

