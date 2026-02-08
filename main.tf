terraform {
  required_providers {
    variable "bucket_name" {
    description = "Name of the S3 bucket"
    type        = string
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}
