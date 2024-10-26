resource "aws_s3_bucket_object" "this" {
  bucket = var.bucket
  key    = var.key
  source = var.src

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag         = md5(var.src)
  content_type = lookup(var.file_types, regex("\\.[^\\.]+\\z", var.src), var.default_file_type)
}