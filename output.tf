# Output the name of the created S3 bucket
output "aws_s3_bucket_name" {
  value       = aws_s3_bucket.example_bucket.bucket
  description = "The name of the S3 bucket"
}
