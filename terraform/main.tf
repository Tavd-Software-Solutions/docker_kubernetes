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

resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.eks_vpc.id
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_route_table" "rt_public1" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }
}

resource "aws_route_table_association" "rt_association1" {
  subnet_id      = aws_subnet.eks_subnet1.id
  route_table_id = aws_route_table.rt_public1.id
}

data "aws_iam_policy_document" "ecs_agent1" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_security_group" "ecs_security_group" {
  vpc_id = aws_vpc.eks_vpc.id
  name   = "ecs_security_group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "avt" {
  ami           = "ami-0277bb082d41132d8"
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.eks_subnet1.id

  key_name = "avt-key"
  vpc_security_group_ids = [aws_security_group.ecs_security_group.id]

  tags = {
    Name = "avt"
  }
}