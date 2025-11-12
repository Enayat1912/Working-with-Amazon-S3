# main.tf

# Random ID to create unique bucket suffix
resource "random_id" "bucket_suffix" {
  byte_length = 6
}

# S3 Bucket Creation with a unique name
resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-${random_id.bucket_suffix.hex}" # Unique bucket name with random suffix
}

