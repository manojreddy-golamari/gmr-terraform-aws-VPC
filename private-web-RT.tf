#creating the Route table for the private web subnets.

resource "aws_route_table" "private-web-cRT" {
  vpc_id = aws_vpc.vpc.id
  route  = []
  tags = {
    Name = "Private-web-RT"
    vpc  = local.commonTags.Vpc
    Env  = local.commonTags.Env
  }
}



