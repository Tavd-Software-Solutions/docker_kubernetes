resource "aws_instance" "avt" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.eks_subnet1.id
}