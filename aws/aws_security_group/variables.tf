variable "name" {
  type        = string
  description = "Security Group Name"
}

variable "description" {
  type        = string
  description = "Security Group Description"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "tags" {
  type = map(string)
}