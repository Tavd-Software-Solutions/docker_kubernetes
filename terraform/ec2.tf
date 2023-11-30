resource "aws_instance" "avt" {
  ami           = "ami-751212661018"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.eks_subnet1.id
}