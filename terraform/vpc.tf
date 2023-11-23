locals {
  common_tags = {
    Name = var.vpc_name
  }
}

resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.vpc_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = locals.common_tags
}