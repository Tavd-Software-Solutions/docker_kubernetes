resource "aws_subnet" "eks_subnet1" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = var.vpc_subnet1_block
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "eks_subnet2" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = var.vpc_subnet2_block
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = {
    Name = var.vpc_name
  }
}