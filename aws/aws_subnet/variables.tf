variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "cidr_block" {
  type        = string
  description = "CIDR Block"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone"
}

variable "tags" {
  type        = map(string)
  description = "AWS Tags"
}