variable "name" {
  description = "azure rg name"
}

variable "location" {
  description = "azure rg location"
}

variable "budget_amount" {
  description = "azure rg location"
  default = 0
}

variable "contact_emails" {
  description = "Team contact email"
  type = list(string)
  default = [ "brad@odysseycloud.io", "amit@odysseycloud.io" ]
}

variable "tags" {
  type        = map(string)
  description = "tags"

  validation {
    condition     = length(var.tags) > 0
    error_message = "Tags must contain more than 1 value."
  }
}