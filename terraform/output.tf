output "ecr_respository_ecs_lab_endpoint" {
  value = aws_ecr_repository.ecr_lab.repository_url
}

output "vpc_id" {
  value = aws_vpc.eks_vpc.id
}

output "subnet1_id" {
  value = aws_subnet.eks_subnet1.id
}

output "subnet2_id" {
  value = aws_subnet.eks_subnet2.id
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.ecs_cluster.name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.ecr_lab.repository_url
}
