terragrunt = {
  remote_state {
    backend = "s3"

    config {
      bucket = "george-tf-up-running01"
      key    = "stage/${path_relative_to_include()}/terraform.tfstate"
      region = "ap-northeast-1"
    }
  }
}
