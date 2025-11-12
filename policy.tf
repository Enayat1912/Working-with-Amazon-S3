

# Define an IAM policy to allow access to the S3 bucket
resource "aws_iam_policy" "s3_policy" {
  name        = "s3-access-policy"
  description = "Policy to allow S3 access"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject"
        ]
        Effect   = "Allow"
        Resource = "arn:aws:s3:::${aws_s3_bucket.example_bucket.bucket}/*" # Dynamically reference the bucket name
      }
    ]
  })
}
