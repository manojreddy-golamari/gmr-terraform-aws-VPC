#private web servers subnets

resource "aws_subnet" "private-web-Subnet" {
  vpc_id                                      = aws_vpc.vpc.id
  availability_zone                           = var.availabilityZone[count.index]
  cidr_block                                  = var.priCIDR[count.index]
  map_public_ip_on_launch                     = false
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "ip-name"
  tags = {
    Name = var.privateSubnet-Name[count.index]
    AZ   = var.availabilityZone[count.index]
    vpc  = local.commonTags.Vpc
    Env  = local.commonTags.Env
  }
  count = 2
}


#private DB servers subnets

resource "aws_subnet" "private-db-Subnet" {
  vpc_id                                      = aws_vpc.vpc.id
  availability_zone                           = var.availabilityZone[count.index]
  cidr_block                                  = var.dbCIDR[count.index]
  map_public_ip_on_launch                     = false
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "ip-name"
  tags = {
    Name = var.dbSubnet-Name[count.index]
    AZ   = var.availabilityZone[count.index]
    vpc  = local.commonTags.Vpc
    Env  = local.commonTags.Env
  }
  count = 2
}


