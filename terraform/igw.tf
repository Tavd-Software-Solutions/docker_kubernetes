resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.eks_vpc.id
  tags = {
    Name = var.vpc_name
  }
}