#creating the Route table for the public subnets.

resource "aws_route_table" "publicRT" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "Public-RT"
    vpc  = local.commonTags.Vpc
    Env  = local.commonTags.Env
  }
}



