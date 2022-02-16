variable "project_id" {
  type        = string
  description = "The project ID to host the cluster in."
}

variable "region" {
  type        = string
  description = "The region to host the cluster in."
}

variable "cloud_transient_instance" {
  description = "The environment"
}

variable "cluster_name" {
  type        = string
  description = "gke username"
}

variable "gke_num_nodes" {
  default     = 3
  description = "number of gke nodes"
}

variable "max_node_count" {
  default     = 3
  description = "number of gke nodes"
}

variable "machine_type" {
  type        = string
  description = "Type of the node compute engines."
}

variable "kubernetes_node_disk_size" {
  type        = string
  description = "Kubernetes Node Disk Size"
}