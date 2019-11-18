variable "profile" {
  description = "AWS User account Profile"

}

variable  "AWS_ACCESS_KEY" {
  description = "Enter Access Key"
}

variable  "AWS_SECRET_KEY" {
  description = "Enter Secret Key"
}

variable "region" {
  description = "Enter Region - For Sydney region, enter ap-southeast-2"
}

variable "key" {
  description = "Enter Key name - Please make sure that your public key is already uploaded to AWS"

}

variable "sub_ids" {
  default = []
}

#variable "instance-ami" {
#  default = "ami-075caa3491def750b" # AMI Linux of Sydney region
#}

variable "instance-ami" {
  type = map(string)
  default = {
 	ap-northeast-1  = "ami-04b2d1589ab1d972c"
	ap-northeast-2  = "ami-0be3e6f84d3b968cd"
  	ap-south-1  = "ami-0b99c7725b9484f9e"
	ap-southeast-1  = "ami-0fb6b6f9e81056553"
	ap-southeast-2  = "ami-075caa3491def750b"
	ca-central-1	= "ami-0a67d15f2858e33cb"
	eu-central-1	= "ami-026d3b3672c6e7b66"
	eu-north-1	= "ami-8c169ef2"
	eu-west-1	= "ami-0862aabda3fb488b5"
	eu-west-2	= "ami-0bdfa1adc3878cd23"
	eu-west-3	= "ami-05b93cd5a1b552734"
	sa-east-1	= "ami-0bb96001cf2299257"
	us-east-1	= "ami-035b3c7efe6d061d5"
	us-east-2	= "ami-02f706d959cedf892"
	us-west-1	= "ami-0fcdcdb074d2bac5f"
	us-west-2	= "ami-0f2176987ee50226e"
  }
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
  
