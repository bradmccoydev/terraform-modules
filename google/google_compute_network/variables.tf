variable "project_id" {
  type        = string
  description = "GCP Project Id."
}

variable "vpc_network_name" {
  type        = string
  description = "Auto Create Subnetworks."
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "Auto Create Subnetworks."
}