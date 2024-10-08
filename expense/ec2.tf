
resource "aws_instance" "expense" {

  count = length(var.instances)
    
  ami                     = var.ami_id
  instance_type           = var.instance_type
  vpc_security_group_ids = [aws_security_group.Secure_SSH.id]

  tags = {
    Name = var.instances[count.index]
  }


  }
resource "aws_security_group" "Secure_SSH" {
  name        = var.sg_name
  description = "allow secure connections"

  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cidr_ingress
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.tags
}
