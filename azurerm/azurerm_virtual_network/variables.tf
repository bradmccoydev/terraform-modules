variable "name" {
  type        = string
  description = "Network Name."
}

variable "location" {
  type        = string
  description = "Location."
}

variable "resource_group_name" {
  type        = string
  description = "Project Name."
}

variable "address_space" {
  type        = string
  description = "Project Name."
}

variable "tags" {
  type = map(string)
}