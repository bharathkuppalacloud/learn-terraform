resource "aws_instance" "test" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-01c7b204ed4d4544b"]

  tags = {
    Name = "test"
  }
}

output "private" {
  value = aws_instance.test.private_ip
}