output "vpc-id" {
  value = aws_vpc.bughunting.id
}

output "subnets-ids" {
  value = aws_subnet.public-subnets.*.id
}

output "sg-id" {
  value = aws_security_group.allow_all.id
}
