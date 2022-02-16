variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "tags" {
  type        = map(string)
  description = "AWS Tags"
}