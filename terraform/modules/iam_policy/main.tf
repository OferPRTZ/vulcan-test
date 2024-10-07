resource "aws_iam_role" "this" {
  name = var.role_name
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Principal": {
          "Service": var.assume_role_service
        },
        "Effect": "Allow",
        "Sid": ""
      }
    ]
  })
}

resource "aws_iam_policy" "this" {
  name   = var.policy_name
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": var.policy_statements
  })
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.this.arn
}

