variable "db_depends_on" {
  description = "Variable to force module to wait for the Service Networking"
}

variable "project_id" {
  type        = string
  description = "GCP Project Id."
}

variable "name" {
  type        = string
  description = "Project Name."
}

variable "region" {
  type        = string
  description = "Region."
}

variable "database_version" {
  type        = string
  description = "Database Tier."
}

variable "database_tier" {
  type        = string
  description = "Database Tier."
}

variable "availability_type" {
  type        = string
  description = "Database Tier."
}

variable "private_network" {
  type        = string
  description = "IP Private Network."
}