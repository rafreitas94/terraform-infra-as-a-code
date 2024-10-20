data "terraform_remote_state" "server" {
  backend = "s3"

  config = {
    bucket = "tfstate-510057413085"
    key    = "dev/terraform.tfstate"
    region = var.aws_region
  }
}