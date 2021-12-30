variable "name" {
  type        = string
  description = "Secret name"
}

variable "value" {
  type        = string
  sensitive   = true
  description = "Secret value"
}

variable "key_vault_id" {
  type        = string
  description = "Key vault ID"
}

variable "content_type" {
  type        = string
  description = "Content type of the secret"
}
