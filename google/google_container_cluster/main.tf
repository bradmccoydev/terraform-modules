resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  project  = var.project_id
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count

  monitoring_service = "monitoring.googleapis.com/kubernetes"
  logging_service    = "logging.googleapis.com/kubernetes"

  network_policy {
    provider = upper(var.network_policy)
    enabled  = true
  }

  ip_allocation_policy {}

  network    = var.vpc_name
  subnetwork = var.subnet_name
}