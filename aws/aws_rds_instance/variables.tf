variable "name" {
  description = "Name"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "db_name" {
  description = "DB Name"
}

variable "db_username" {
  description = "db_username"
}

variable "db_port" {
  description = "db_username"
  type        = number
}

variable "db_instance_class" {
  description = "DB Instance Class"
}

variable "engine" {
  description = "Engine"
}

variable "ip_whitelist" {
  description = "IP Whitelist"
  type        = list(string)
}

variable "subnet_ids" {
  description = "Subnet ID"
  type        = list(string)
}

variable "tags" {
  type = map(string)
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = string
  default     = null
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
  default     = null
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted"
  type        = bool
  default     = true
}
