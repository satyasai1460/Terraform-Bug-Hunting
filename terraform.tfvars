aws_region          = "us-east-1"
vpc_cidr            = "10.7.0.0/16"
public_subnet_cidrs = ["10.7.1.0/24", "10.7.2.0/24", "10.7.3.0/24", "10.7.4.0/24"]
vpc_name            = "bughunting"
key_name            = "2AWSB46-KP"
azs                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
environment         = "DEVELOPMENT"
projectId           = "PHEONIX-007"
imagename           = "ami-0261755bbcb8c4a84"
instance_type = {
  development = "t2.micro"
  testing     = "t2.medium"
  production  = "t2.large"
}
amis = {
  us-east-1  = "ami-0261755bbcb8c4a84" # ubuntu 20.04 LTS, amd64
  ap-south-1 = "ami-0f58b397bc5c1f2e8" # Ubuntu, 24.04 LTS, amd64
}


