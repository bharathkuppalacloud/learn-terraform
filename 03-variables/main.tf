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
  default = [1,"ad",false,21.1]
}

#map variable

variable "m" {
  default = {
    course = "DevOps"
    trainer = "John"
  }
}

output "x" {
  value = var.x
}

output "x1" {
  value = var.x
}

output "x2" {
  value = "value of y,z,m - ${var.y}  ${var.z} ${var.m.course}  ${var.m.trainer}"

}

output "map" {
  value = "Course name - ${var.m["course"]} , ${var.m["trainer"]}"
}

variable "c" {
  type = number
  default = ""
}

output "c1" {
  value = var.c
}