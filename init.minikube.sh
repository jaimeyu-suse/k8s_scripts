#!/bin/bash

echo "start minikube"
minikube start --driver=docker --memory 7000 --nodes 3

sleep 3
minikube addons enable metrics-server


sleep 3
echo "Installing load balancer"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.13.10/config/manifests/metallb-native.yaml

