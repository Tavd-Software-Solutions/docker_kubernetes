provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t3.medium"
  key_name      = "ua-lab"
  iam_instance_profile = "LabInstanceProfile"

  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update -y
    EOF

  tags = {
    Name = "EC2-Instance"
  }

  vpc_security_group_ids = [aws_security_group.ua-sg.id]
  subnet_id = "subnet-0523f004cccb21f09"
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

resource "aws_security_group" "ua-sg" {
  name        = "ua-sg"
  description = "Security group for EC2 instance"
  vpc_id = "vpc-0567388655fb4952d"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}