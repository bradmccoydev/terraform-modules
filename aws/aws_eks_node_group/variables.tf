variable "cluster_name" {
    default = "default"
    type = string
}

variable "node_group_name" {
    default = "example"
    type = string
}

variable "arn" {}

variable "subnet_id" {}

variable "disk_size" {
    type = number
}

variable "kubernetes_node_size" {
    type = number
}

variable "tags" {
  type = map(string)
}