#!/bin/bash


helm install appd ./appdynamics/helm/ -n appdynamics --create-namespace
sleep 5s

helm install trafficgen ./trafficgen/helm/ -n trafficgen --create-namespace
sleep 5s

helm install extpayment ./app_extpayment/helm/ -n ext --create-namespace
sleep 5s

helm install extprod ./app_extprod/helm/ -n automation --create-namespace
sleep 5s

helm install iwo ./iwo/helm/ -n iwo --create-namespace
sleep 5s

helm install stealthwatch ./stealthwatch_cloud/helm/ -n swc --create-namespace
sleep 5s

helm install app ./app_main/helm/ -n default --create-namespace