resource "aws_ecs_group" "esc_cluster" {
  name = "ecr_lab"
}

resource "aws_ecs_definition" "task_definition" {
  family = "ecr_lab"
  container_definitions = jsoncode([
    {
      name              = "esc_lab"
      image             = "${aws_ecr_repository.ecr_lab.respository_url}:6"
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

resource "aws_ecs_service" "esc_lab" {
  name            = "ecr_lab"
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.task_definition.arn
  desired_count   = 2

  Load_balancer {
    target_group_arn = aws_lb_target_group.elb_tg_lab.arn
    container_name   = "esc_lab"
    container_port   = 80
  }
}
