terraform {
  backend "s3" {
    bucket = "ms-omron-test-1"
    region = "ap-south-1"
    key    = "terraform.tfstate"
  }
}