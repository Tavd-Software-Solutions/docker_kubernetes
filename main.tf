provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
  token      = var.token
}

resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.vpc_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "eks_subnet1" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = var.vpc_subnet1_block
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t3.medium"
  key_name      = "ua-lab"
  iam_instance_profile = "LabInstanceProfile"

  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update -y
    EOF

  tags = {
    Name = "EC2-Instance"
  }

  vpc_security_group_ids = [aws_security_group.ua-sg.id]
  subnet_id = aws_subnet.eks_subnet1.id
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

resource "aws_security_group" "ua-sg" {
  name        = "ua-sg"
  description = "Security group for EC2 instance"
  vpc_id = aws_vpc.eks_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}