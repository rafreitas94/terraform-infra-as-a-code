import {
  to = aws_s3_bucket.manual
  id = "my-bucket-manual"
}

resource "aws_s3_bucket" "manual" {
  bucket = "my-bucket-manual"

  tags = {
    Name        = "My manual bucket"
    Description = "Bucket was created manually and after configured to be modified by Terraform."
    Environment = "Dev"
    UpdatedAt   = "2024-10-20"
  }
}