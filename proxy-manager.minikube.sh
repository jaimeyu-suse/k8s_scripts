#!/bin/bash

# This will expose a minikube cluster if you are running in a virtual environment.
# Example: 

kubectl port-forward  $(kubectl get pods | grep man | cut -d " " -f 1) 8443:8443 --address='0.0.0.0'

