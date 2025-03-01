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
variable "y" {
  default = [1,"anki",4.43,"boss"]
}

variable "z" {
  default = {
    name= "happy"
    age=40
  }
}
output "x1" {
  value = "value of x =${var.x}"
}
output "y1" {
  value = var.y[2]
}
output "z" {
  value = "name=${var.z["name"]},age=${var.z["age"]}"
}

variable "class" {}
output "class" {
  value = var.class
}

variable "trainer" {}
output "trainer" {
  value = var.trainer
}