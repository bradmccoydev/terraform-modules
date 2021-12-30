variable "name" {
  description = "azure rg name"
}

variable "virtual_machine_id" {
  description = "Virtual Machine ID"
}

variable "publisher" {
  description = "Publisher"
}

variable "type" {
  description = "Type"
}

variable "type_handler_version" {
  description = "Type Handler Version"
}

variable "script" {
  description = "Script location"
}

variable "tags" {
  type = map(string)
}
