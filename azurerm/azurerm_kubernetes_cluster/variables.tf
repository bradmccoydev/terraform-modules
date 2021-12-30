variable "name" {
  type        = string
  description = "Container Name"
}

variable "location" {
  type        = string
  description = "Cloud Location"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "private_cluster_enabled" {
  type        = string
  description = "Private Cluster Enabled"
}

variable "dns_prefix" {
  type        = string
  description = "DNS Prefix"
}

variable "node_count" {
  type        = string
  description = "Node Count"
}

variable "node_size" {
  type        = string
  description = "Node Size"
}

variable "node_disk_size" {
  type        = string
  description = "Node Disk Size"
}

variable "kubernetes_network_plugin" {
  type        = string
  description = "Kubernetes Network Plugin"
}

variable "kubernetes_network_policy" {
  type        = string
  description = "Kubernetes Network Policy"
}

variable "kubernetes_subnet_id" {
  type        = string
  description = "Kubernetes Subnet Id"
}

variable "enable_http_application_routing" {
  description = "Enable HTTP application Routing"
}

variable "tags" {
  type = map(string)
}
