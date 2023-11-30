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