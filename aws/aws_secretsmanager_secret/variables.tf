variable "secret_name" {
  type        = string
  description = "Secret Name"
}

variable "secret_string" {
  type        = string
  description = "jsonencoded map of secrets"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}
