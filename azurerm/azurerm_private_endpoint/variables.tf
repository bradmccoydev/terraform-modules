variable "name" {
  description = "Private Endpoint name"
}

variable "location" {
  type        = string
  description = "Cloud Location."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint."
}

variable "private_service_connection_name" {
  type        = string
  description = "The name of the private service connection name."
}

variable "private_connection_resource_id" {
  type        = string
  description = "The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to."
}

variable "is_manual_connection" {
  type        = bool
  description = "Does the Private Endpoint require Manual Approval from the remote resource owner?"
  default     = false
}


variable "tags" {
  type = map(string)
}
