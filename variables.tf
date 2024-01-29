variable "dev_region" {
  default = "ap-south-1"
}

variable "vpc_cidr_dev" {
  default = "10.10.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.10.1.0/24"
}

variable "key_path" {
  default = "public_key"
}

variable "aws_key_pair" {
  default = "~/.ssh/pemfile/tgw-dev-vpc.pem"
}