terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.16.1"
    }
  }
  backend "s3" {
    bucket = "dsarkar-terraform-state"
    key = "vpc-githubactions-prac/terraform.tfstate"
    region = "ap-south-2"
  }
}

provider "aws" {
  region = "ap-south-2"
}