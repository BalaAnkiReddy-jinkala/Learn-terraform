variable "x" {
  default = 10
}

output "x" {
  value = var.x
}

variable "y" {
  default = [1,"abc",0.3,false]

}

output "y" {
  value = var.y[1]
}