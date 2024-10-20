resource "random_pet" "this" {
  length = 5
}

resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.this.id}-${var.env}"

  tags = local.commom_tags
}

# resource "aws_s3_object" "this" {
#   bucket = aws_s3_bucket.this.bucket
#   key    = "${uuid()}.${local.file_ext}"
#   source = data.archive_file.json.output_path

#   # The filemd5() function is available in Terraform 0.11.12 and later
#   # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
#   # etag = "${md5(file("path/to/file"))}"
#   etag = filemd5(data.archive_file.json.output_path)
#   content_type = "application_zip"
# }