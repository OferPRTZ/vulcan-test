module "ecr_push_role" {
  source             = "./modules/iam_policy"
  role_name          = "ecr-push-role"
  policy_name        = "ecr-push-policy"
  assume_role_service = "ec2.amazonaws.com"

  policy_statements = [
    {
      Effect   = "Allow"
      Action   = [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ]
      Resource = "*"
    }
  ]
}

module "ecr_pull_role" {
  source             = "./modules/iam_policy"
  role_name          = "ecr-pull-role"
  policy_name        = "ecr-pull-policy"
  assume_role_service = "ec2.amazonaws.com"

  policy_statements = [
    {
      Effect   = "Allow"
      Action   = [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage"
      ]
      Resource = "*"
    }
  ]
}

