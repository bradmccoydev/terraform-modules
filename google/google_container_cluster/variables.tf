variable "cluster_name" {
  type        = string
  description = "The Cluster Name to host the cluster in."
}

variable "project_id" {
  type        = string
  description = "The project ID to host the cluster in."
}

variable "region" {
  type        = string
  description = "The region to host the cluster in."
}

variable "vpc_name" {
  type        = string
  description = "The region to host the cluster in."
}

variable "subnet_name" {
  type        = string
  description = "The region to host the cluster in."
}
variable "initial_node_count" {
  type        = string
  description = "Kubernetes Inital Node Count."
}

variable "network_policy" {
  type        = string
  description = "Kubernetes Network Policy."
}

variable "tags" {
  description = "Tags to be applied to the deployed resources"
}