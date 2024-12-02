resource "null_resource" "fruits" {
  for_each = var.fruits
}

variable "fruits" {
  default = {
    apple = {
      name = "Apple"
      quantity = 100
    }
    banana = {
      name = "Banana"
      quantity = 299
    }
  }
}

variable "instances" {
  default = {
    frontend = {}
    mongo = {}
    catalogue = {}
  }
}

resource "null_resource" "instances" {
  for_each = var.instances
}

resource "null_resource1" "instances" {
  for_each = var.instances.frontend
}

resource "null_resource2" "instances" {
  for_each = var.instances.mongo
}

resource "null_resource3" "instances" {
  for_each = var.instances.catalogue
}