# WebApp Deployment Procedure using yaml

## Overview 

This repository is used to store `yaml` deployment resources that are used to deploy WebApp application on EKS cluster  via a LoadBalancer.
The result of running this web application is displaying "Hello Platform Engineering!" that can be viewed by using load balancer DNS name 

## Download `yaml` resources
Download the following `yaml` files to EC2 Kubernetes Server. 
```
webapp-deployment.yaml
webapp-lb-service.yaml
```

## Perform Pods Deployment
Run the following command.
```
kubectl create -f webapp-deployment.yaml
```
## Test Pods is coming up
```
$ kubectl get nodes.
```
## Perform Load Balancer Deployment
Run the following command.
```
kubectl create -f webapp-lb-service.yaml
```
## Test Load Balancer is coming up
```
$ kubectl get service.
```
## Test WebApp application from public internet
```
http://<load_balancer_DNS_name>:5000
```