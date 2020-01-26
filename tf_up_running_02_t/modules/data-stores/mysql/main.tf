terraform {
  required_version = ">= 0.8"
  backend          "s3"             {}
}

provider "aws" {
  region     = "ap-northeast-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "example" {
  instance_type = "${var.example_instance_type}"
  ami           = "ami-06c43a7df16e8213c"

  tags = {
    Name = "${var.db_password}"
  }
}