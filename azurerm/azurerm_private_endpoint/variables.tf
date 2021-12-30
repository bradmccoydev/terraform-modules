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
  description = "The name of the subnet id."
}

variable "private_service_connection_name" {
  type        = string
  description = "The name of the private service connection name."
}

variable "private_connection_resource_id" {
  type        = string
  description = "The id of the private connection resource."
}

variable "tags" {
  type = map(string)
}