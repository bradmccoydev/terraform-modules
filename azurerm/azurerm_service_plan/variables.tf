variable "service_plan_name" {
  type        = string
  description = "Name of the app service plan"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group containing this service plan"
}

variable "location" {
  type        = string
  description = "Location of the service plan"
}

variable "os_type" {
  type        = string
  description = "OS type used for running the service plan on VM. Allowed values are ['Windows', 'Linux', 'WindowsContainer']"

  validation {
    condition     = contains(["Windows", "Linux", "WindowsContainer"], var.os_type)
    error_message = "OS Type should be one of the following: ['Windows', 'Linux', 'WindowsContainer']."
  }
}

variable "sku" {
  type        = string
  description = "SKU to use for the service plan"

  validation {
    condition     = contains(["B1", "B2", "B3", "D1", "F1", "FREE", "I1", "I2", "I3", "I1v2", "I2v2", "I3v2", "P1v2", "P2v2", "P3v2", "P1v3", "P2v3", "P3v3", "S1", "S2", "S3", "SHARED", "EP1", "EP2", "EP3", "WS1", "WS2", "WS3"], var.sku)
    error_message = "SKU should be one of:B1, B2, B3, D1, F1, FREE, I1, I2, I3, I1v2, I2v2, I3v2, P1v2, P2v2, P3v2, P1v3, P2v3, P3v3, S1, S2, S3, SHARED, EP1, EP2, EP3, WS1, WS2, and WS3."
  }
}

variable "max_elastic_workers" {
  type        = number
  description = "Maximum number of workers for elastic plans (Y1, EP1, EP2, and EP3)"
}

variable "worker_count_to_allocate" {
  type        = number
  description = "Number of worker instances to start with"
}

variable "allow_per_site_scaling" {
  type        = bool
  description = "Allow scaling individual sites"
  default     = false
}

variable "allow_zone_balancing" {
  type        = bool
  description = "Allows balancing the service plan across availability zones in region"
  default     = false
}

variable "tags" {
  type = map(string)
}
