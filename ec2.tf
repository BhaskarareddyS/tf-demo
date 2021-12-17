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

resource "aws_ebs_volume" "ebs" {
  availability_zone = "eu-west-2a"
  size              = 2

  tags = {
    Name = "tomcat-ebs"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs.id
  instance_id = aws_instance.web-2.id
}
