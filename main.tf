provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "lesson_03" {
  ami           = "ami-0e68dc81dc36750a1"
  instance_type = var.instance_type

  subnet_id              = "subnet-PASTE-HERE"
  vpc_security_group_ids = ["sg-01f98efb69bc5320"]

  associate_public_ip_address = true

  tags = {
    Name = "my-ec2-instance"
  }
}