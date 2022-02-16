variable "zone_id" {
  description = "The Cloudflare Zone ID."
}

variable "certificate" {
  description = "The Certificate."
  sensitive   = true
}

variable "private_key" {
  description = "The Private Key."
  sensitive   = true
}
