
resource "aws_instance" "frontend" {
  ami           = var.ami-image
  instance_type = var.instance_type
  vpc_security_group_ids=[var.security_group_id]

  tags = {
    Name = "frontend.dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone
  name    = "frontend.dev.codedeploywithbharath.tech"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "mongo" {
  ami           = var.ami-image
  instance_type = var.instance_type
  vpc_security_group_ids=[var.security_group_id]

  tags = {
    Name = "mongo.dev"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = var.zone
  name    = "mongo.dev.codedeploywithbharath.tech"
  type    = "A"
  ttl     = 15
  records = [aws_instance.mongo.private_ip]
}


resource "aws_instance" "catalogue" {
  ami           = var.ami-image
  instance_type = var.instance_type
  vpc_security_group_ids=[var.security_group_id]

  tags = {
    Name = "catalogue.dev"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = var.zone
  name    = "catalogue.dev.codedeploywithbharath.tech"
  type    = "A"
  ttl     = 15
  records = [aws_instance.catalogue.private_ip]
}


