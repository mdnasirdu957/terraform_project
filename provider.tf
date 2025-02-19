terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.87.0"
    }
  }
}

provider "aws" {
  region = var.aws_region # Ensure this is the correct region for your S3 bucket
}
