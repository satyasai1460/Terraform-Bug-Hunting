variable "aws_region" { type = string }
variable "vpc_cidr" { type = string }
variable "vpc_name" { type = string }
variable "key_name" { type = string }
variable "public_subnet_cidrs" { type = list(any) }
variable "Main_Routing_Table" { type = string }
variable "azs" { type = list(any) }
variable "environment" { type = string }
variable "amis" { type = map(any) }
variable "instance_type" { type = map(any) }

