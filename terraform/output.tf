output "vpc_id" {
  value = aws_vpc.eks_vpc.id
}

output "subnet1_id" {
  value = aws_subnet.eks_subnet1.id
}

output "subnet2_id" {
  value = aws_subnet.eks_subnet2.id
}

output "ecr_url" {
  value = aws_ecr_repository.front.repository_url
}

output "public_ip" {
  value = aws_instance.avt.public_ip
}