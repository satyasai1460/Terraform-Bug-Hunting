resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.bughunting.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name              = "${var.vpc_name}-Main-RT"
    Terraform-Managed = "Yes"
    Env               = local.new_env
    ProjectID         = local.projectId
  }
}

resource "aws_route_table_association" "terraform-public1" {
  # count             = 3
  count          = length(local.new_public_subnet_cidrs)
  subnet_id      = element(aws_subnet.public-subnets.*.id, count.index)
  route_table_id = aws_route_table.public_rt.id
}

