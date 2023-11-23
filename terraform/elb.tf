resource "aws_lb" "lb_ecs_lab" {
  name               = "lb-ecs-lab"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ecs_sg.id]
  subnets            = [aws_subnet.eks_subnet1.id, aws_subnet.eks_subnet2.id]

  enable_deletion_protection = false

  tags = {
    Name = "alb-ecs-lab"
  }
}

resource "aws_lb_target_group" "elb_tg_lab" {
  name        = "tg-ecs-lab"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = aws_vpc.eks_vpc.id

  depends_on = [aws_lb.lb_ecs_lab]
}

resource "aws_lb_listener" "elb_lst_lab" {
  load_balancer_arn = aws_lb.lb_ecs_lab.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.elb_tg_lab.arn
  }
} 