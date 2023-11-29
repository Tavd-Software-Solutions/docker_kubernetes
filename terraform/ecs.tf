resource "aws_ecs_cluster" "avt_cluster" {
  name = "ecs_lab"
}

resource "aws_ecs_task_definition" "task_definition" {
  family = "ecs_lab"
  container_definitions = jsonencode([
    {
      name              = "ecs_lab"
      image             = "${aws_ecr_repository.front.repository_url}:6"
      cpu               = 1
      memory            = 2048
      memoryReservation = 256
      essential         = true
      environmet        = []
      compatibilities   = ["EC2"]
      portMappings = [
        {
          containerPort = 80
          hotsPort      = 5050
          protocol      = "tcp"
        }
      ]
    }
  ])
  depends_on = [aws_ecr_repository.front]
}


