variable "cluster_name" {
  type        = string
  description = "Name of the EKS Cluster"

  validation {
    condition     = 100 >= length(var.cluster_name) && length(var.cluster_name) > 0 && can(regex("^[0-9A-Za-z][A-Za-z0-9-_]+$", var.cluster_name))
    error_message = "'cluster_name' should be between 1 and 100 characters, start with alphanumeric character and contain alphanumeric characters, dashes and underscores."
  }
}

variable "node_group_name" {
  default = "example"
  type    = string
}

variable "node_role_arn" {
  type        = string
  description = "Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group."

  validation {
    condition     = length(var.node_role_arn) > 0
    error_message = "'node_role_arn' should nto be empty."
  }
}

variable "subnet_ids" {
  type        = list(string)
  description = "Identifiers of EC2 Subnets to associate with the EKS Node Group. These subnets must have the following resource tag: kubernetes.io/cluster/CLUSTER_NAME (where CLUSTER_NAME is replaced with the name of the EKS Cluster)."
}

variable "scaling_config" {
  type        = object({ desired_size : number, max_size : number, min_size : number })
  description = "Configuration block with scaling settings."

  default = {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }
}

variable "disk_size" {
  type        = number
  description = "Disk size in GiB for worker nodes. Defaults to 20."
}

variable "capacity_type" {
  type        = string
  description = "Whether to use spot or not."
  default = "SPOT"
}

variable "kubernetes_node_size" {
  type        = list(string)
  description = "List of instance types associated with the EKS Node Group. Defaults to ['t3.medium']."
}

variable "tags" {
  type = map(string)
}
