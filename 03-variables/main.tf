variable "x" {
  default = 10
}

variable "y" {
  default = true
}

variable "z" {
  default = "helloworld"
}

# list variable
variable "l" {
  default = [1,'ad',false,21.1]
}



output "x" {
  value = var.x
}

output "x1" {
  value = var.x
}

output "x2" {
  value = "value of y - ${var.y}  ${var.z}"

}