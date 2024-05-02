output "vpc-id" {
  value = aws_vpc.bughunting.id
}

# output "subnet1-id" {
#   value = aws_subnet.subnet1-public.id
# }

output "sg-id" {
  value = aws_security_group.allow_all.id
}
