#creating the Route table for the private db subnets.

resource "aws_route_table" "private-db-cRT" {
  vpc_id = aws_vpc.vpc.id
  route =[]
  tags = {
    Name = "Private-db-RT"
    vpc  = local.commonTags.Vpc
    Env  = local.commonTags.Env
  }
}



