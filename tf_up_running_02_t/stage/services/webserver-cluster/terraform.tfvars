terragrunt = {
  dependencies {
    paths = ["../../data-stores/mysql"]
  }

  include {
    path = "${find_in_parent_folders()}"
  }
}
