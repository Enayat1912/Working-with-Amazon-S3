# Define an IAM Role for S3
resource "aws_iam_role" "example_role" {
  name = "example_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "s3.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}

# Attach IAM Policy to the IAM Role
resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  role       = aws_iam_role.example_role.name
  policy_arn = aws_iam_policy.s3_policy.arn
}

