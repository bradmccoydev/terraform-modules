resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_network_name
  auto_create_subnetworks = var.auto_create_subnetworks
  project                 = var.project_id
}