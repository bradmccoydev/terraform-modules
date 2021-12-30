resource "google_container_registry" "default" {
  project  = var.project
  location = var.location
}