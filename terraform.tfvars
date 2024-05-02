aws_region          = "us-east-1"
vpc_cidr            = "10.7.0.0/16"
public_subnet_cidrs = ["10.7.1.0/24", "10.7.2.0/24", "10.7.3.0/24"]
vpc_name            = "bughunting"
key_name            = "2AWSB46-KP"
Main_Routing_Table  = "bughunting-Main-RT"
azs                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
environment         = "Development"
instance_type = {
  dev  = "t2.nano"
  test = "t2.micro"
  prod = "t2.medium"
}
amis = {
  us-east-1 = "ami-97785bed" # ubuntu 14.04 LTS
  us-east-2 = "ami-f63b1193" # ubuntu 14.04 LTS
  us-west-1 = "ami-824c4ee2" # ubuntu 14.04 LTS
  us-west-2 = "ami-f2d3638a" # ubuntu 14.04 LTS
}
