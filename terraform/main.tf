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

resource "aws_ecr_repository" "front" {
  name = "front"
}

resource "aws_security_group" "ecs_security_group" {
  vpc_id = aws_vpc.eks_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "avt" {
  ami           = "ami-07d131ac12352754d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.eks_subnet1.id

  key_name = aws_key_pair.tf-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.ecs_security_group.id]

  tags = {
    Name = "avt"
  }
}