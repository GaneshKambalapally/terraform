resource "aws_route53_record" "expense" {
    count = length(var.instances)
  zone_id = "Z09901269SF0OMZ8IFG8"
  name    = "${var.instances[count.index]}" == "frontend" ? var.domain : "${var.instances[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = "${var.instances[count.index]}" == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
}