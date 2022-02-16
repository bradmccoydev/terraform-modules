resource "google_compute_address" "compute_address" {
  project = var.project_id
  name    = var.name
  region  = var.region
}