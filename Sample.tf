terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
  }
}
provider "local" {}
resource "local_file" "first" {
  content = "Boss raa lucha"
  filename = "/tmp/anki"
}