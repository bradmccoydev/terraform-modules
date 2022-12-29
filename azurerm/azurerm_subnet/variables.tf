variable "name" {
  type        = string
  description = "Subnet Name."
}

variable "virtual_network_name" {
  type        = string
  description = "Virtual Network Name."
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name."
}

variable "address_prefixes" {
  description = "Address Prefixes."
}
