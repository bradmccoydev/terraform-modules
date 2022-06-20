variable "appservice_plan_name" {
  description = "Name of the app service plan"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "resource_group_location" {
  description = "App Service location name"
}

variable "appservice_plan_os_type" {
  description = "OS Type name"

  validation {
    condition     = contains(["Windows", "Linux", "WindowsContainer", var.appservice_plan_os_type])
    error_message = "appservice_plan_os_type should be one of [Windows, Linux, WindowsContainer]."
  }
}

variable "appservice_plan_sku" {
  description = "App Service SKU name. Defaults to B1."

  validation {
    condition     = contains(["B1", "B2", "B3", "D1", "F1", "FREE", "I1", "I2", "I3", "I1v2", "I2v2", "I3v2", "P1v2", "P2v2", "P3v2", "P1v3", "P2v3", "P3v3", "S1", "S2", "S3", "SHARED", "EP1", "EP2", "EP3", "WS1", "WS2", "WS3"], var.appservice_plan_sku)
    error_message = "SKU name should be one of the follwoing [B1, B2, B3, D1, F1, FREE, I1, I2, I3, I1v2, I2v2, I3v2, P1v2, P2v2, P3v2, P1v3, P2v3, P3v3, S1, S2, S3, SHARED, EP1, EP2, EP3, WS1, WS2, WS3]."
  }
}

variable "max_worker_count" {
  description = "Maximum number of workers allowed in Elastic SKU plans."
}

variable "worker_count" {
  description = "Number of workers to allocate for elastic SKU plan."
}

variable "per_site_scaling_enabled" {
  description = "Enables per site scaling."
  default     = false
}

variable "tags" {
  type = map(string)
}