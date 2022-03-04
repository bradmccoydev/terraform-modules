variable "cluster_name" {
  type        = string
  description = "Name of the EKS Cluster"

  validation {
    condition     = 0 < length(var.cluster_name) < 101 && can(regex("^[0-9A-Za-z][A-Za-z0-9-_]+$", var.cluster_name))
    error_message = "'cluster_name' should be between 1 and 100 characters, start with alphanumeric character and contain alphanumeric characters, dashes and underscores."
  }
}

variable "arn" {
  type        = string
  description = "Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group."
}

variable "node_group_name" {
  default = "default-node"
  type    = string
}

variable "subnet_ids" {
  type        = string
  description = "List of subnet IDs. Must be in at least two different availability zones."
}
