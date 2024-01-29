resource "aws_route_table" "rt-aps1-dev" {
  vpc_id = aws_vpc.vpc_dev.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-aps1-dev.id
  }
  tags = {
    Name = "RT-APS1-DEV"
  }
}

resource "aws_route_table_association" "rta-aps1-dev" {
  subnet_id      = aws_subnet.vpc_dev_subnet10.id
  route_table_id = aws_route_table.rt-aps1-dev.id
}