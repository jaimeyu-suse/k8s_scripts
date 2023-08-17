#!/bin/sh
set -e
set -x
helm upgrade --install neuvector --namespace neuvector --create-namespace neuvector/core --set tag=5.2.0 --set cve.scanner.replicas=1 --set controller.replicas=1 --set controller.path.debug=true --set enforcer.monitor.debug=true

# For rke2
# --k3s.enabled=true
