resource "aws_s3_bucket" "static_assets" {
  bucket = "personal-project-static-assets-1"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "log"
    enabled = true

    prefix = "log/"
    tags = {
      "rule"      = "log"
      "autoclean" = "true"
    }

    transition {
      days          = 30
      storage_class = "GLACIER"
    }

    expiration {
      days = 365
    }
  }
}

output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.static_assets.id
}
