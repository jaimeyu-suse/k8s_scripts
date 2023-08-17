#!/bin/bash

pod=$1

echo "Exce into pod type $pod"

podid=$(kubectl get pods -n neuvector | grep $pod | awk '{print $1;}')
echo "Exc'ing into $podid"
kubectl exec --stdin --tty -n neuvector  $podid sh
