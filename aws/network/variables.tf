
variable "cidr_block" {
  description = "VPC Cidr block"
  default     = "10.1.0.0/16"
}

variable "availability_zones" {
  description = "Availability zone 1"
  type        = list(string)
  default     = ["ap-southeast-2a", "ap-southeast-2b"]
}

variable "public_subnet_cidrs" {
  description = "public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.1.10.0/24", "10.1.20.0/24"]
}

variable "private_subnet_cidrs" {
  description = "private subnet CIDR blocks"
  default     = ["10.1.50.0/24", "10.1.60.0/24"]
}

variable "tags" {
  type = map(string)
}
