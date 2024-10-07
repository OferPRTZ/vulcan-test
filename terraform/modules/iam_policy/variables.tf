variable "role_name" {
  description = "Name of the IAM role."
  type        = string
}

variable "policy_name" {
  description = "Name of the IAM policy."
  type        = string
}

variable "assume_role_service" {
  description = "The AWS service that will assume the role (e.g., EC2, Lambda)."
  type        = string
  default     = "ec2.amazonaws.com"
}

variable "policy_statements" {
  type = list(object({
    Effect   = string
    Action   = list(string)
    Resource = string
  }))
  description = "A list of IAM policy statements"
}

