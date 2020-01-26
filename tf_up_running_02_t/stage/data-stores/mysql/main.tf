terraform {
  backend "s3" {}
}

provider "aws" {
  region = "ap-northeast-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

module "example" {
  source = "../../../modules/data-stores/mysql"
  example_instance_type = "t2.nano"
}
