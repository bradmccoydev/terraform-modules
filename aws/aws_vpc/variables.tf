variable "cidr_block" {
  type        = string
  description = "VPC ID"
}

variable "tags" {
  type        = map(string)
  description = "AWS Tags"
}