resource "aws_subnet" "public-subnets" {
  # count             = 3
  count             = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.bughunting.id
  cidr_block        = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name              = "${var.vpc_name}-Public-Subnet-${count.index + 1}"
    Terraform-Managed = "Yes"
  }
}

