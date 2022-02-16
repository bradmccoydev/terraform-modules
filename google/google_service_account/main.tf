resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = var.display_name
  project      = var.project_id
}