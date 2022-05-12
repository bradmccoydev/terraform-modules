variable "name" {
  type        = string
  description = "S3 Bucket name"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}
