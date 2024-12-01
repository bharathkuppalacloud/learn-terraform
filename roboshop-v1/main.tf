resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-01c7b204ed4d4544b"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongo" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-01c7b204ed4d4544b"]

  tags = {
    Name = "mongo"
  }
}

resource "aws_instance" "catalogue" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-01c7b204ed4d4544b"]

  tags = {
    Name = "catalogue"
  }


}
