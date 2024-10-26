terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "null_resource" "null" {
  triggers = {
    timestamp = timestamp()
  }

#   provisioner "local-exec" {
#     command = "echo Hello World!!!"
#   }

provisioner "local-exec" {
    command = "echo $FOO $BAR $BAZ $TIMESTAMP >> env_vars.txt"

    environment = {
      FOO = "bar"
      BAR = 1
      BAZ = "true"
      TIMESTAMP = timestamp()
    }
  }
}