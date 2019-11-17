# WebApp Deployment

Welcome to WebApp Deployment!

## Overview 
This repository is used to build EKS Cluster and an EC2 Kubernetes Server in order to manage deployment of the `elbeialy/webapp` docker image which runs WebApp application.

## On Local Machine 
Download the Terraform resouces to a local folder from https://github.com/Melbeialy/webapp/tree/master/Kubernetes/aws

Make sure that public key is already uploaded to AWS and located on the local aws repository folder before running terrafom command.

## Terraform apply
```
$ terraform init
$ terraform run
$ terraform apply
```

## SSH provisioned EC2 Instance
Get Public IP from terraform output and ssh the EC2 Instance to install `kubectl`. Please login as: `ec2-user`
```
Kubenetes-server-ip = *.*.*.*
```

## Download kubectl
```
$ curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.7/2019-06-11/bin/linux/amd64/kubectl

$ chmod +x ./kubectl

$ mkdir -p $HOME/bin

$ cp ./kubectl $HOME/bin/kubectl

$ export PATH=$HOME/bin:$PATH

$ echo ‘export PATH=$HOME/bin:$PATH’ >> ~/.bashrc
```

## Download  aws-iam-authenticator
```
$ curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.7/2019-06-11/bin/linux/amd64/aws-iam-authenticator

$ chmod +x ./aws-iam-authenticator

$ mkdir -p $HOME/bin

$ cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator

$ export PATH=$HOME/bin:$PATH

$ echo ‘export PATH=$HOME/bin:$PATH’ >> ~/.bashrc
```

## Configure kubectl for Amazon EKS
Use `aws configure` before creating kubeconfig file, then apply below command to create the profile and add required configuration to it.
```
$ aws configure
AWS Access Key ID []:
AWS Secret Access Key []:
Default region name []: ap-southeast-2
Default output format []: json
```
```
aws eks --region region update-kubeconfig --name cluster_name
```

## Test your `kubectl` configuration
```
kubectl get svc
```

## Enable worker nodes to EKS cluster
Download, edit, and apply the AWS IAM Authenticator configuration map
```
curl -o aws-auth-cm.yaml https://amazon-eks.s3-us-west-2.amazonaws.com/cloudformation/2019-02-11/aws-auth-cm.yaml
```
open the aws-auth-cm.yaml file and replace the <ARN of instance role (not instance profile)> with the Cluster IAM Role ARN.
```
apiVersion: v1
kind: ConfigMap
metadata:
  name: aws-auth
  namespace: kube-system
data:
  mapRoles: |
    - rolearn: <ARN of instance role (not instance profile)>
      username: system:node:{{EC2PrivateDNSName}}
      groups:
        - system:bootstrappers
        - system:nodes
```
Apply the configuration
```
kubectl apply -f aws-auth-cm.yaml
```
