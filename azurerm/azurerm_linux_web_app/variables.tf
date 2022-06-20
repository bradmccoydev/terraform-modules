variable "web_app_name" {
  description = "Name of the web app"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "resource_group_location" {
  description = "App Service location name"
}

variable "appservice_plan_id" {
  description = "Id of the associated app service plan"
}

variable "vnet_name" {
  description = "Name of the VNet containing subnet."
}

variable "subnet_name" {
  description = "Name of subnet associated with app service"
}

variable "tags" {
  type = map(string)
}