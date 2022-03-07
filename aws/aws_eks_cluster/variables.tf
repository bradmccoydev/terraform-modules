variable "cluster_name" {
  type        = string
  description = "Name of the EKS Cluster"

  validation {
    condition     = 100 >= length(var.cluster_name) && length(var.cluster_name) > 0 && can(regex("^[0-9A-Za-z][A-Za-z0-9-_]+$", var.cluster_name))
    error_message = "'cluster_name' should be between 1 and 100 characters, start with alphanumeric character and contain alphanumeric characters, dashes and underscores."
  }
}

variable "cluster_role_arn" {
  type        = string
  description = "Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group."
}


variable "subnet_ids" {
  type        = list(any)
  description = "List of subnet IDs. Must be in at least two different availability zones."
}
