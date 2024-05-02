provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = "= 1.6.2" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 5.0.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
}

# resource "aws_s3_bucket" "tf-bugbucket" {
#   bucket        = "tf-bugbucket"
#   force_destroy = true
# }

terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "tf-bugbucket"
    dynamodb_table = "bugbountystate-lock"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}
