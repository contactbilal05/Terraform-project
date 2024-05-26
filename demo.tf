terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region = "us-east-1"
}


resource "aws_instance" "web" {
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}