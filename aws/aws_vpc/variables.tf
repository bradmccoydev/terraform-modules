variable "cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for VPC"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}
