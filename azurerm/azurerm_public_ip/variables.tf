variable "name" {
  type        = string
  description = "IP Name"
}

variable "location" {
  type        = string
  description = "Cloud Location"
}

variable "resource_group_name" {
  type        = string
  description = "Project Name"
}

variable "allocation_method" {
  type        = string
  description = "Project Name"
}

variable "sku" {
  type        = string
  description = "SKU"
}

variable "tags" {
  type = map(string)
}
