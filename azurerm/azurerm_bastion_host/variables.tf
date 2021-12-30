variable "name" {
  description = "Bastion Host and Ip Config name"
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

variable "public_ip_address_id" {
  description = "Public IP Address ID"
}

variable "tags" {
  type = map(string)
}
