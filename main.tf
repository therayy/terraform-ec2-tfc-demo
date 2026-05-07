provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "lesson_03" {
  ami           = "ami-0b671272c81662a99"
  instance_type = var.instance_type

  tags = {
    Name        = "my-ec2-instance"
    Owner       = "ray.abaid@hashicorp.com"
    Environment = "test"
    Project     = "terraform-learning"
  }
}
