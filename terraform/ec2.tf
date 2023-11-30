resource "aws_instance" "avt" {
  ami           = "ami-07d131ac12352754d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.eks_subnet1.id
}