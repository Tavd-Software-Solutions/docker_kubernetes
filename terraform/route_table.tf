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