variable "name" {
  description = "Link Service Name"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Resource Group location"
}

variable "auto_approval_subscription_ids" {
  type        = list(string)
  description = "A list of Subscription UUID/GUID's that will be automatically be able to use this Private Link Service."
}

variable "visibility_subscription_ids" {
  type        = list(string)
  description = "A list of Subscription UUID/GUID's that will be able to see this Private Link Service."
}

variable "load_balancer_frontend_ip_configuration_ids" {
  type        = list(string)
  description = "A list of Frontend IP Configuration IDs from a Standard Load Balancer, where traffic from the Private Link Service should be routed."

  validation {
    condition     = length(var.load_balancer_frontend_ip_configuration_ids) > 0
    error_message = "At least one load balancer frontend ip configuration id is required."
  }
}

variable "nat_ip_settings" {
  type = map(object({
    name       = string
    private_ip = string
    subnet_id  = string
    is_primary = string
  }))
  description = "Map of objects containing nat ip setting details"
}

variable "tags" {
  type = map(string)
}
