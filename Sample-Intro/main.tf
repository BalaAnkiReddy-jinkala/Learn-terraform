terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
  }
}
provider "local" {}
resource "local_file" "anki" {
  content = "Hello to everyone"
  filename = "/tmp/bala"
}

variable "x" {
  default = 10
}

output "x" {
  value = "value of x =${var.x}"
}