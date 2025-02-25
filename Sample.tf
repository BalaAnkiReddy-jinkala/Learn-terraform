terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "Sample" {
  ami= "ami-05b10e08d247fb927"
  instance_type = "t2.mirco"
  tags= {
    Name= "terraform"
  }
}