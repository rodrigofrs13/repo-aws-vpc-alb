variable "cliente" {
  description = "Name Cliente VPC"
  default = "TESTEZ"
}

variable "region" {
  description = "Enter the Regio VPC"
  default = "us-east-1" 
}

variable "targetip" {
  description = "Enter the Target IP"
  default = "10.0.36.44" 
}

variable "az1" {
  description = "Define AvailabilityZone 1"
  default = "us-east-1a"
}

variable "az2" {
  description = "Define AvailabilityZone 2"
  default = "us-east-1b"
}

variable "vpccidr" {
  description = "Define cidr blocks"
  default = "10.225.200.0/27"
}

variable "publicblockaz1" {
  description = "Define Public Block AZ1"
  default = "10.225.200.0/28"
}

variable "publicblockaz2" {
  description = "Define Public Block AZ2"
  default = "10.225.200.16/28"
}

variable "publicip" {
  description = "Public IP"
  default = "true"
}

variable "instanceTenancy" {
    default = "default"
}
variable "dnsSupport" {
    default = true
}
variable "dnsHostNames" {
    default = true
}

variable "cidr" {
    default = "0.0.0.0/0"
}

variable "senips" {
  default = ["18.231.47.182/32", "189.41.29.197/32", "54.232.208.191/32", "54.233.177.110/32", "54.233.197.81/32", "3.221.178.170/32"]
}

variable "bastion" {
  default = "3.221.178.170/32"
}

variable "bucketname" {
  default = "testez-s3-alb-isd"
  
}
