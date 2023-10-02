#!/bin/bash


# Prereqs
# helm repo add open https://simonmisencik.github.io/helm-charts
#kubectl create namespace debug

helm install 1.2.1 open/ubuntu --namespace debug
