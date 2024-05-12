resource "aws_s3_bucket" "this" {
  bucket = "test-bucket-2024"
}


terraform {

  backend "s3" {
    bucket         = "manuchandrasekhar-tfstate"
    key            = "test"
    region         = "us-east-1"
    dynamodb_table = "tfstate"
  }
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
