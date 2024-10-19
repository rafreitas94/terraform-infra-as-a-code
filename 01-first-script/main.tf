terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-tf-bucket-raphael"

  tags = {
    Name        = "My bucket Raphael"
    Environment = "Dev"
    UpdatedAt    = "2024-10-19"
  }
}