variable "name" {
  description = "azure vm name"
}

variable "location" {
  description = "azure rg location"
}

variable "resource_group_name" {
  description = "azure rg name"
}

variable "size" {
  description = "Size"
}

variable "computer_name" {
  description = "Computer Name"
}

variable "bastion_username" {
  description = "Username"
}

variable "public_key" {
  description = "Public Key"
  sensitive = true
}

variable "disable_password_authentication" {
  description = "Disable Password Auth"
}

variable "source_image_offer" {
  description = "Source Image Offer"
}

variable "source_image_sku" {
  description = "Source Image SKU"
}

variable "bastion_network_interface_id" {
  description = "Bastion Network Interface ID"
}

variable "tags" {
  type = map(string)
}
