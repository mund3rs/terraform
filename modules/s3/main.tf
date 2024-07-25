resource "aws_s3_bucket" "wordpress" {
  bucket = "dmws-wp-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "log"
    enabled = true

    noncurrent_version_expiration {
      days = 90
    }

    expiration {
      days = 365
    }
  }

  tags = {
    Name = "DMWS-WP-S3"
    Environment = "prod"
  }
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.wordpress.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
