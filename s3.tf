resource "aws_s3_bucket" "b" {
  bucket = "my-tf-bas-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket" "bas" {
  bucket = "my-tf-bas-bucketi222"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

