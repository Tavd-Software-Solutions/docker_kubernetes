resource "aws_security_group" "esc_sg" {
  vpc_id = aws_vpc.eks_vpc.id

    ingress {
      from_port  = 22
      to_port    = 22
      protocol   = "tcp"
      cidr_blocks= ["192.168.56.1/16"]
    }
   
    ingress {
      from_port  = 443
      to_port    = 443
      protocol   = "tcp"
      cidr_blocks= ["0.0.0.0/0"]
    }

    ingress {
      from_port  = 80
      to_port    = 80
      protocol   = "tcp"
      cidr_blocks= ["0.0.0.0/0"]
    }

    egress {
      from_port  = 0
      to_port    = 65353
      protocol   = "tcp"
      cidr_blocks= ["0.0.0.0/0"]
    }
}