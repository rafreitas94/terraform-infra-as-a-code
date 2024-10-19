variable "aws_region" {
  type        = string
  description = "Region"
  #   default     = "us-east-1"
}

variable "instance_ami" {
  type        = string
  description = "Instance AMI"
  #   default     = "ami-06b21ccaeff8cd686"
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
  #   default     = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = "Tags map"
  #   default = {
  #     "OS" = "Linux"
  #     "UpdatedAt" : "2024-10-19"
  #   }
}