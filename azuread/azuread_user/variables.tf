variable "user_principal_name" {
  type        = string
  description = "Azure AD User Principal Name."
}

variable "display_name" {
  type        = string
  description = "Display Name."
}

variable "mail_nickname" {
  type        = string
  description = "Mail Nickname."
}

variable "password" {
  type        = string
  sensitive   = true
  description = "Password."
}
