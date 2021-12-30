variable "scope" {
  type        = string
  description = "ID of Subscription / Group / Resource to be provided access to."
}

variable "role_definition_name" {
  type        = string
  description = "Azure RBAC role name. Eg: Contributor, Reader, Storage Blob Data Contributor"
}

variable "principal_id" {
  type        = string
  description = "ID of the Principal (User, Group, Service Principal, Application) to assign the Role Definition to."
}