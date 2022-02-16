variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

variable "allocation_id" {
  type        = string
  description = "Allocation ID"
}

variable "tags" {
  type        = map(string)
  description = "AWS Tags"
}