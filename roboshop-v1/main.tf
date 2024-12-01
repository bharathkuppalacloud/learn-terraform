resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-01c7b204ed4d4544b"]

  tags = {
    Name = "frontend.dev"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z06892942YSXS0PDMB6S5"
  name    = "frontend.dev.codedeploywithbharath.tech"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-01c7b204ed4d4544b"]

  tags = {
    Name = "mongo.dev"
  }
}
resource "aws_route53_record" "mongo" {
  zone_id = "Z06892942YSXS0PDMB6S5"
  name    = "mongo.dev.codedeploywithbharath.tech"
  type    = "A"
  ttl     = 15
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-01c7b204ed4d4544b"]

  tags = {
    Name = "catalogue.dev"
  }


}


resource "aws_route53_record" "catalogue" {
  zone_id = "Z06892942YSXS0PDMB6S5"
  name    = "catalogue.dev.codedeploywithbharath.tech"
  type    = "A"
  ttl     = 15
  records = [aws_instance.catalogue.private_ip]
}