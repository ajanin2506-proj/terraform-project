variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

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

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "ajan-terraform-learning-bucket-0110"
}

resource "aws_s3_bucket" "my_bucket_1" {
  bucket = "ajan-terraform-learning-bucket-0320"
}


