output "public_ip" {
  value       = aws_instance.Secure_demo_instance[1].public_ip
  sensitive   = false
  description = "description"
  depends_on  = []
}

# output "private_ip"{

#     value = aws_instance.Secure_demo_instance.private_ip[0]
# }

# output "AMI_ID"{

#     value = aws_instance.Secure_demo_instance.ami[0]
# }
# output "sg_id"{

#     value = aws_security_group.Secure_SSH.arn[0]
# }
