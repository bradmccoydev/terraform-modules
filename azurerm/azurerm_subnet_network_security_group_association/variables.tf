variable "name" {
  type        = string
  description = "Network Security Group"
}

variable "location" {
  type        = string
  description = "Location"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "tags" {
  type = map(string)
}