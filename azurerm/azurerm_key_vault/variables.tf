variable "name" {
  type        = string
  description = "The Name to be given for the key vault."

  validation {
    condition     = length(var.name) <= 24 && length(regexall("[^\\w-]", var.name)) == 0
    error_message = "Key vault name must be between 3-24 characters, and only contain alphanumeric characters or '-'."
  }
}

variable "location" {
  type        = string
  description = "Cloud Location."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the App Service Plan component."
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID."
}

variable "soft_delete_retention_days" {
  type        = string
  description = "Soft delete retention days. Choose between 7-90 days"
}

variable "purge_protection_enabled" {
  type        = bool
  description = "Purge Protection Enabled."
  default     = true
}

variable "sku_name" {
  type        = string
  description = "SKU Name. Possible values: ['standard', 'premium']"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}
