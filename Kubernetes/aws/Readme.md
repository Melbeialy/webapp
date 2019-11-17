# WebApp Deployment

Welcome to WebApp Deployment!

## Overview 
This repository is used to build EKS Cluster and an EC2 Kubernetes Server in order to manage deployment of the `elbeialy/webapp` docker image which runs WebApp application.

## On Local Machine 
Download the Terraform resouces to a local folder from https://github.com/Melbeialy/webapp/tree/master/Kubernetes/aws

Make sure that public key is already uploaded to AWS and located on the local aws repository folder before running terrafom command.

## Terraform apply
```
terraform init
terraform run
terraform apply
```

## SSH provisioned EC2 Instance
Get Public IP from terraform output and ssh the EC2 Instance to install `kubectl`. Please login as: `ec2-user`
```
Kubenetes-server-ip = *.*.*.*
```

## Download kubectl
```
curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.7/2019-06-11/bin/linux/amd64/kubectl

chmod +x ./kubectl

mkdir -p $HOME/bin

cp ./kubectl $HOME/bin/kubectl

export PATH=$HOME/bin:$PATH

echo ‘export PATH=$HOME/bin:$PATH’ >> ~/.bashrc
```

## Download  aws-iam-authenticator
```
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.7/2019-06-11/bin/linux/amd64/aws-iam-authenticator

chmod +x ./aws-iam-authenticator

mkdir -p $HOME/bin

cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator

export PATH=$HOME/bin:$PATH

echo ‘export PATH=$HOME/bin:$PATH’ >> ~/.bashrc
```