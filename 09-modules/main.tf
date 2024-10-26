terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}

resource "random_pet" "this" {
  length = 5
}

module "bucket" {
  source            = "./s3_module"
  name              = random_pet.this.id
  files             = "${path.root}/website"
  status_versioning = "Enabled"
}