variable "subnet_id" {
  type        = string
  description = "VPC ID"
}

variable "route_table_id" {
  type        = string
  description = "VPC ID"
}

variable "tags" {
  type        = map(string)
  description = "AWS Tags"
}