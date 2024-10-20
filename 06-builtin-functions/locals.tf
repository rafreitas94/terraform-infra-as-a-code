locals {
  instance_number = lookup(var.instance_number, var.env)

  file_ext    = "zip"
  object_name = "my-file-built-from-a-template"

  commom_tags = {
    "Owner" : "Raphael"
    "UpdatedAt" : "2024-10-20"
  }
}