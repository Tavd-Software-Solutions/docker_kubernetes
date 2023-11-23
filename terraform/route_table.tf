resource "aws_route_table" "rt_public" {
  vpc_id            = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "rt_association" {
  subnet_id      = aws_subnet.eks_subnet1.id
  route_table_id = aws_route_table.rt_public.id
}