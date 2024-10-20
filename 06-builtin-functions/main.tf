terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.1"
    }

    archive = {
      source  = "hashicorp/archive"
      version = "2.6.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }

    # template = {
    #   source = "hashicorp/template"
    #   version = "2.2.0"
    # }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

provider "archive" {
  # Configuration options
}

provider "random" {
  # Configuration options
}

# provider "template" {
#   # Configuration options
# }