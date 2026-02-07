terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
#create a s3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-learning-bucket"
}
