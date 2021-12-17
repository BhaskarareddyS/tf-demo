resource "aws_instance" "web" {
  ami           = "ami-0d37e07bd4ff37148"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "web-2" {
  ami           = "ami-0d37e07bd4ff37148"
  instance_type = "t3.micro"

  tags = {
    Name = "tomcat"
  }
}

