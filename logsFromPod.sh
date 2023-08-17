#!/bin/bash

pod=$1

echo "logs for pod type $pod"

podid=$(kubectl get pods -n neuvector | grep $pod | awk '{print $1;}')
echo "Exc'ing into $podid"
kubectl logs -f -n neuvector $podid
