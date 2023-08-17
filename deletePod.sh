#!/bin/bash

pod=$1

echo "delete pod type $pod"

podid=$(kubectl get pods -n neuvector | grep $pod | awk '{print $1;}')
echo "Deleting $podid"
kubectl delete pod $podid -n neuvector
