resource "aws_s3_bucket" "this" {
  bucket = "test-bucket-20242"
}

resource "aws_s3_bucket" "this2" {
  bucket = "test-bucket-202421"
}


terraform {
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}
