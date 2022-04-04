#common Tags
locals {
  commonTags = {
    Vpc = "Mumbai-VPC"
    Env = "Dev"
  }
  vpcTag = {
    Name = "Mumabi-VPC"
  }

}
#----------------------------------------------------------------------------------------------------
#vpc & IGW variables
variable "vpc-CIDR" {
  type    = string
  default = "10.0.0.0/16"
}

variable "instanceTenancy" {
  type    = string
  default = "default"
}

variable "dns-support" {
  type    = bool
  default = true
}

variable "igwTag" {
  type    = string
  default = "Mumbai-VPC-IGW"
}
#---------------------------------------------------------------------------------------------------------
#subnet variables

#public (bastion Host) subnet variables
variable "pubCIDR" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availabilityZone" {
  type    = list(any)
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "publicSubnet-Name" {
  type    = list(any)
  default = ["public-subnet-1a", "public-subnet-1b"]
}

#private (web servers) subnet variables
variable "priCIDR" {
  type    = list(any)
  default = ["10.0.3.0/24", "10.0.4.0/24", ]
}

variable "privateSubnet-Name" {
  type    = list(any)
  default = ["private-subnet-web-1a", "private-subnet-web-1b"]
}

#private (DB servers) subnet variables
variable "dbCIDR" {
  type    = list(any)
  default = ["10.0.5.0/24", "10.0.6.0/24", ]
}

variable "dbSubnet-Name" {
  type    = list(any)
  default = ["private-subnet-DB-1a", "private-subnet-DB-1b"]
}

#-------------------------------------------------------------------------------------------------

