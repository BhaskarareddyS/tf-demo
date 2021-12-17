resource "aws_s3_bucket" "b" {
  bucket = "my-tf-bas-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}







