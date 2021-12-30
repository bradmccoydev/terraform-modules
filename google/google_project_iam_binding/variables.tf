variable "project_id" {
  type        = string
  description = "GCP Project Id."
}

variable "role" {
  type        = string
  description = "Iam Role."
}

variable "member" {
  description = "Service Account Email."
}