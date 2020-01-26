terraform {
  required_version = "> 0.8"
  backend "s3" {
    bucket = "george-tf-up-running01"
    key    = "global/s3/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.bucket_name}"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
