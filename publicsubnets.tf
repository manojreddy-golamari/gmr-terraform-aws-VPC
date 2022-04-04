resource "aws_subnet" "public-Subnet" {
  vpc_id                                      = aws_vpc.vpc.id
  availability_zone                           = var.availabilityZone[count.index]
  cidr_block                                  = var.pubCIDR[count.index]
  map_public_ip_on_launch                     = true
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "ip-name"
  tags = {
    Name = var.publicSubnet-Name[count.index]
    AZ   = var.availabilityZone[count.index]
    vpc  = local.commonTags.Vpc
    Env  = local.commonTags.Env
  }
  count = 2
}
