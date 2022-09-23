provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6OY4UMVQP6IVLYXS"
  secret_key = "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"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#EC2 Instnace

resource "aws_instance" "git-jenkin" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"  
  tags = {
    Name = "git-jenkin"
   } 
}
