variable "env" {

}

variable "aws_region" {
  type        = string
  description = "Region"
  default     = "us-east-1"
}

variable "instance_ami" {
  type        = string
  description = "Instance AMI"
  default     = "ami-06b21ccaeff8cd686"

  validation {
    condition     = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    error_message = "The instance_ami value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })
  description = "Number of instances to create"
  default = {
    dev  = 1
    prod = 3
  }
}

variable "instance_type" {
  type = object({
    dev  = string
    prod = string
  })
  description = "Type of instances to create"
  default = {
    dev  = "t2.micro"
    prod = "t2.micro"
  }
}