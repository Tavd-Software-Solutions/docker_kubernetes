resource "aws_ecs_cluster" "ecs_cluster" {
  name = "ecs_lab"
}

resource "aws_ecs_task_definition" "task_definition" {
  family = "ecs_lab"
  container_definitions = jsonencode([
    {
      name              = "ecs_lab"
      image             = "${aws_ecr_repository.ecr_lab.repository_url}:6"
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
  depends_on = [aws_ecr_repository.ecr_lab]
}

resource "aws_ecs_service" "ecs_lab" {
  name            = "ecs_lab"
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.task_definition.arn
  desired_count   = 2

  load_balancer {
    target_group_arn = aws_lb_target_group.elb_tg_lab.arn
    container_name   = "ecs_lab"
    container_port   = 80
  }
}
