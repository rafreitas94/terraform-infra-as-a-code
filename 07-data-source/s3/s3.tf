resource "random_pet" "this" {
  length = 5
}

resource "aws_s3_bucket" "this" {
  bucket = "my-bucket-${random_pet.this.id}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    UpdatedAt   = "2024-10-20"
  }
}

resource "aws_s3_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "instances/${local.instance.ami}.json"
  source       = "outputs.json"
  etag         = filemd5("outputs.json")
  content_type = "application/json"
}