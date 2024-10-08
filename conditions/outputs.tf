output "public_ip" {
  value       = aws_instance.Secure_demo_instance.public_ip
  sensitive   = false
  description = "description"
  depends_on  = []
}

output "private_ip"{

    value = aws_instance.Secure_demo_instance.private_ip
}

output "AMI_ID"{

    value = aws_instance.Secure_demo_instance.ami
}
output "sg_id"{

    value = aws_security_group.Secure_SSH.arn
}
