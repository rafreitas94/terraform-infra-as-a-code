variable "name" {
  type        = string
  description = "Bucket name"
}

variable "acl" {
  type        = string
  description = "ACL"
  default     = "public-read"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default = {
    "UpdatedAt" = "2024-10-24"
  }
}

variable "key_prefix" {
  type        = string
  description = ""
  default     = ""
}

variable "files" {
  type        = string
  description = ""
  default     = ""
}

variable "status_versioning" {
  type        = string
  description = ""
}