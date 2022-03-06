variable "aws_cluster_name" {
  type        = string
  description = "Name of the EKS Cluster"

  validation {
    condition     = 100 >= length(var.aws_cluster_name) && length(var.aws_cluster_name) > 0 && can(regex("^[0-9A-Za-z][A-Za-z0-9-_]+$", var.aws_cluster_name))
    error_message = "'cluster_name' should be between 1 and 100 characters, start with alphanumeric character and contain alphanumeric characters, dashes and underscores."
  }
}

variable "client_id" {
  description = "Client ID for the OpenID Connect identity provider."
}

variable "id_provider_config_name" {
  description = "The name of the identity provider config."
}

variable "issuer_url" {
  description = "Issuer URL for the OpenID Connect identity provider."
}

variable "tags" {
  type        = map(string)
  description = "Key-value map of resource tags."
}
