resource "aws_s3_bucket" "this" {
  bucket = "test-bucket-2024"
}


terraform {

  backend "s3" {
    bucket         = "digger-tfstate"
    key            = "test"
    region         = "us-east-1"
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
