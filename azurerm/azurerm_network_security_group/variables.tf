variable "name" {
  description = "azure vm name"
}

variable "location" {
  description = "azure rg location"
}

variable "resource_group_name" {
  description = "azure rg name"
}

variable "subnet_id" {
  description = "Subnet ID"
}

variable "tags" {
  type = map(string)
}
