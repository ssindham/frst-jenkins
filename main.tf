terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.11.0"
    }
  }
  required_version = ">=1.1.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "ec2-instance" {
  ami           = "ami-0f9fc25dd2506cf6d" #us-east-1
  instance_type = "t2.micro"
  tags = {
    "Name" = var.ec2-instance-name
  }
}