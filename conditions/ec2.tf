resource "aws_security_group" "Secure_SSH" {
  name        = "Secure SSH"
  description = "allow secure connections"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "SSH Secure"
  }
}

resource "aws_instance" "Secure_demo_instance" {
    
  ami                     = "ami-09c813fb71547fc4f"
  instance_type           = var.Env == "prod" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.Secure_SSH.id]

  tags = {
    Name = "Secure Demo"
  }


  }
