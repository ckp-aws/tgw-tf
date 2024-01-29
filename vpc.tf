resource "aws_vpc" "vpc_dev" {
  cidr_block = var.vpc_cidr_dev

  tags = {
    Name = "VPC-DEV"
  }
}

resource "aws_subnet" "vpc_dev_subnet10" {
  vpc_id            = aws_vpc.vpc_dev.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = "${var.dev_region}a"

  tags = {
    Name = "VPC-DEV-SUBNET10"
  }
}