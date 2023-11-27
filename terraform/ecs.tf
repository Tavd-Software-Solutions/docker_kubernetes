resource "aws_ecs_cluster" "avt_cluster" {
  name = "avt_front"
}

resource "aws_ecs_task_definition" "task_definition" {
  family = "avt_front"
  container_definitions = jsonencode([
    {
      name              = "avt_front"
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

resource "aws_ecs_service" "avt_front" {
  name            = "avt_front"
  cluster         = aws_ecs_cluster.avt_cluster.id
  task_definition = aws_ecs_task_definition.task_definition.arn
  desired_count   = 2

  load_balancer {
    target_group_arn = aws_lb_target_group.elb_tg_lab1.arn
    container_name   = "avt_front"
    container_port   = 80
  }
}
