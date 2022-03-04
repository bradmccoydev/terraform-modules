variable "cluster_name" {
  description = "Name of the EKS Cluster"

  validation {
    condition     = 0 < length(var.cluster_name) < 101 && can(regex("^[0-9A-Za-z][A-Za-z0-9-_]+$", var.cluster_name))
    error_message = "'cluster_name' should be between 1 and 100 characters, start with alphanumeric character and contain alphanumeric characters, dashes and underscores."
  }
}

variable "fargate_profile_name" {
  description = "Name of the EKS Fargate Profile."
}

variable "aws_iam_role_arn" {
  description = "Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Fargate Profile."
}

variable "aws_subnet_ids" {
  description = "Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: kubernetes.io/cluster/CLUSTER_NAME (where CLUSTER_NAME is replaced with the name of the EKS Cluster)."
}

variable "selector_namespace" {
  description = "Configuration block(s) for selecting Kubernetes Pods to execute with this EKS Fargate Profile. Detailed below."
}

variable "selector_labels" {
  type        = map(string)
  description = "Key-value map of Kubernetes labels for selection."
}

variable "tags" {
  type        = map(string)
  description = "Key-value map of resource tags."
}