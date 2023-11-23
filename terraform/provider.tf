provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
  token      = var.token
}

terraform {
    backend "s3" {
        bucket = "backendterraformavt"
        key    = "state.tfstate"
    }
}

 
resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.vpc_block
  enable_dns_hostnames = true

  tags = {
    "Name" = var.vpc_name
  }
}



resource "aws_subnet" "eks_subnet1" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = var.vpc_subnet1_block

  tags = {
    "Name" = "${var.vpc_name}-subnet1"
  }
}

resource "aws_subnet" "eks_subnet2" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = var.vpc_subnet2_block

  tags = {
    "Name" = "${var.vpc_name}-subnet2"
  }
}

# Security group for the EKS cluster
resource "aws_security_group" "eks_sg" {
  name        = "${var.vpc_name}-sg"
  vpc_id      = aws_vpc.eks_vpc.id
}

resource "aws_iam_user" "eks_user" {
  name = "user2864196=Vitor_Adams"
}

resource "aws_iam_user_policy" "eks_user_policy" {
  name   = "eks_user_policy"
  user   = aws_iam_user.eks_user.name

  policy = <<-EOT
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Action": "iam:CreateUser",
          "Resource": "arn:aws:iam::751212661018:user/user2864195=Vitor_Daniel_Adams"
        }
      ]
    }
  EOT
}