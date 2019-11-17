variable "profile" {
  description = "AWS User account Profile"
  default = ""
}

variable  "AWS_ACCESS_KEY" {
  default = ""
}

variable  "AWS_SECRET_KEY" {
  default = ""
}

variable "region" {
  default = "ap-southeast-2"
}

variable "key" {
  description = "Enter Key name"
  default = ""
}

variable "sub_ids" {
  default = []
}

variable "instance-ami" {
  default = "ami-075caa3491def750b" # AMI Linux of Sydney region
}

variable "instance_type" {
  default = "t3.medium"
}


variable "cluster-name" {
  description = "Cluster Name"
  default = "webappcluster"
}

variable "server-name" {
  description = "Ec2 Server Name"
  default = "webappec2"
}

variable "vpc_name" {
  description = "VPC name"
  default = "webappvpc"
}
  