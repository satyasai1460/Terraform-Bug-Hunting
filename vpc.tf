resource "aws_vpc" "bughunting" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name              = var.vpc_name
    Owner             = "Satya sai Devarapalli"
    environment       = var.environment
    Terraform-Managed = "Yes"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.bughunting.id
  tags = {
    Name              = "${var.vpc_name}-IGW"
    Terraform-Managed = "Yes"
  }
}
