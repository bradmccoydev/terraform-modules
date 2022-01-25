variable "name" {
  type        = string
  description = "Container Name"
}

variable "kubernetes_cluster_id" {
  type        = string
  description = "Container Name"
}

variable "vm_size" {
  type        = string
  description = "Container Name"
}
variable "max_count" {
  description = "Max Count"
}

variable "min_count" {
  description = "Min Count"
}

variable "tags" {
  type = map(string)
}

variable "kubernetes_subnet_id" {
  type        = string
  description = "Kubernetes Subnet Id"
}
