terraform {
  backend "s3" {
    bucket = "voltron-testing-terraform-tf-poc"
    region = "ap-south-1"
    key    = "terraform.tfstate"
  }
}
