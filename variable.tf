variable "subnet_cidr_block" {
description = "cidr-block for subnet"	
type = list(string)
default = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
}

variable "vpc_cidr_block" {
description = "cidr-block for vpc"
type = list(string)
default = ["10.1.0.0/16", "192.168.0.0/16"]
}
#
#variable "environment" {}
#subnet_cidr_block = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
#vpc_cidr_block = ["10.1.0.0/16", "192.168.0.0/16"]
##
