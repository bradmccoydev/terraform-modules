variable "length" {
  type        = number
  description = "Length of String."
}

variable "special" {
  description = "If It has special characters or not."
  default     = false
}

variable "contains_upper" {
  description = "If It has special characters or not."
  default     = true
}