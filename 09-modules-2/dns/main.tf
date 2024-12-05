variable "private_ip" {}

resource "aws_route53_record" "frontend" {
  zone_id = "Z06892942YSXS0PDMB6S5"
  name    = "test1.dev.codedeploywithbharath.tech"
  type    = "A"
  ttl     = 15
  records = [var.private_ip]
}