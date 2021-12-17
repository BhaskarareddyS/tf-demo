terraform {
  backend "s3"{
    region     = "eu-west-2"
    bucket     = "my-tf-bas-bucket"
    key        = "terraform.tfstate"
    encrypt    = "false"
    profile    = "MyAWS"
  }
}
