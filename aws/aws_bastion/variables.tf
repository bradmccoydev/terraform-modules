variable "name" {
  type        = string
  description = "Name of services"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
  default     = "t2.micro"
}

variable "ips_to_whitelist" {
  type        = list(string)
  description = "IP's to whitelist"
}

variable "user_data" {
  description = "User Data"
}

variable "tags" {
  type = map(string)
}
