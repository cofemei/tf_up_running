variable "access_key" {
  default = "AKIAS74ZU7JUIYVA7CMR"
}

variable "secret_key" {
  default = "P2Vi3jerWR8N5un18X9AW0z+cpWAAx6s0zLj9XhY"
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  default = ""
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  default = ""
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 8080
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "min_size" {
  default = "1"
}

variable "max_size" {
  default = "1"
}



