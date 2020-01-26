terraform {
  backend "s3" {}
}

provider "aws" {
  region     = "ap-northeast-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name           = "module-webservers-prod"
  db_remote_state_bucket = "george-tf-up-running01"
  db_remote_state_key    = "prod/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.small"
}
