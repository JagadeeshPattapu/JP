resource "aws_s3_bucket" "test" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "test" {
  bucket = aws_s3_bucket.test.id

  versioning_configuration {
    status = "Enabled"
  }
}