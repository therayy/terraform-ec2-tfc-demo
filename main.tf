provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "lesson_03" {
  ami           = "ami-0b671272c81662a99"
  instance_type = var.instance_type

  subnet_id                   = "subnet-0637c661ee87c4e9e"
  vpc_security_group_ids      = ["sg-01f98fefb69bc5320"]
  associate_public_ip_address = true

  tags = {
    Name        = "my-ec2-instance"
    Owner       = "ray.abaid@hashicorp.com"
    Environment = "test"
    Project     = "terraform-learning"
  }
}
