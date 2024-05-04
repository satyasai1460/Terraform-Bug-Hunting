# locals {
#   ingress    = toset([89, 443, 22, 21, 3306, 3389, 53, 23, 444, 555, 666, 222, 444, 223, 2343, 1433])
#   egress     = toset([444, 555, 333, 222, 111, 666, 777, 888, 999, 1001])
#   tag_keys   = distinct(["Name", "Owner", "Location"])
#   tag_values = distinct(["Bug-hUnting", "SatyaDeva-sai-Devarapalli", "United-States"])

#   my_tags = {
#     Name     = "Dynamic_sg"
#     Owner    = "Satya sai Devarapalli"
#     Location = "United States"
#   }
# }

# resource "aws_security_group" "allow_all" {
#   name        = "allow_all"
#   description = "Allow all inbound traffic"
#   vpc_id      = aws_vpc.bughunting.id

#   dynamic "ingress" {
#     for_each = local.ingress
#     content {
#       from_port   = ingress.value
#       to_port     = ingress.value
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0", "${chomp(data.http.myip.response_body)}/32"]
#     }
#   }

#   dynamic "egress" {
#     for_each = local.egress
#     content {
#       from_port   = egress.value
#       to_port     = egress.value
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0", "${chomp(data.http.myip.response_body)}/32"]
#     }
#   }
# }
