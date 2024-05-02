data "aws_vpc" "AWSB47-vpc" {
  id = "vpc-0d0b7f0a28984bbeb"
}


resource "aws_subnet" "subnet1-public" {
  vpc_id            = data.aws_vpc.AWSB47-vpc.id
  cidr_block        = "10.47.4.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "AWSB47-subnet-public4-us-east-1a"
  }
}
