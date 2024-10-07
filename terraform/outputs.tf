output "ecr_push_role_arn" {
  value = module.ecr_push_role.role_arn
}

output "ecr_pull_role_arn" {
  value = module.ecr_pull_role.role_arn
}

