variable "route_table_id" {
  type        = string
  description = "Route Table ID"
}

variable "destination_cidr_block" {
  type        = string
  description = "Destination cidr block"
}

variable "gateway_id" {
  type        = string
  description = "Gateway ID"
}

variable "tags" {
  type        = map(string)
  description = "AWS Tags"
}