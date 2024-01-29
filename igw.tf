resource "aws_internet_gateway" "igw-aps1-dev" {
  vpc_id = aws_vpc.vpc_dev.id

  tags = {
    Name = "IGW-APS1-DEV"
  }
}