resource "null_resource" "test" {}


terraform {
  backend "s3" {
    bucket = "bharatdemobucket"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
