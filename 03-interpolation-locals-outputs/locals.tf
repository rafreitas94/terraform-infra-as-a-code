locals {
  ip_filepath = "ips.json"

  commons_tags = {
    Name        = "My bucket with Interpolation"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}