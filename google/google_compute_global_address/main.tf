resource "google_compute_global_address" "compute_global_address" {
  project       = var.project_id
  provider      = google-beta
  name          = var.name
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = var.vpc_network_name
}