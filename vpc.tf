#Creating up the VPC in the aws umbai region
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc-CIDR
  instance_tenancy     = var.instanceTenancy
  enable_dns_support   = var.dns-support
  enable_dns_hostnames = var.dns-support
  tags = {
    Name        = local.vpcTag.Name
    Environment = local.commonTags.Env
  }
}

output "vpcID" {
  value = aws_vpc.vpc.id
}

#creating up the IGW for the VPC
resource "aws_internet_gateway" "igw" {
  tags = {
    Name        = var.igwTag
    Environment = local.commonTags.Env
    vpc         = local.commonTags.Vpc
  }
}

output "igwID" {
  value = aws_internet_gateway.igw.id
}

#attaching the IGW to the vpc
resource "aws_internet_gateway_attachment" "igw-attaching" {
  internet_gateway_id = aws_internet_gateway.igw.id
  vpc_id              = aws_vpc.vpc.id
}