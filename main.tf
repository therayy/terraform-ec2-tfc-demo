terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "lesson_03" {
  ami           = "ami-0b671272c81662a99"
  instance_type = "t2.micro"

  tags = {
    Name = "my-ec2-instance"
  }
}