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

  cluster_name           = "module-webservers-stage"
  db_remote_state_bucket = "george-tf-up-running01"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
}

resource "aws_security_group_rule" "allow_testing_inbound" {
  type              = "ingress"
  security_group_id = "${module.webserver_cluster.elb_security_group_id}"

  from_port   = 12345
  to_port     = 12345
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
