resource "aws_route53_record" "expense" {
    count = length(local.instance)
  zone_id = "Z09901269SF0OMZ8IFG8"
  name    = "${local.instance[count.index]}" == "frontend" ? var.domain : "${local.instance[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = "${local.instance[count.index]}" == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
}