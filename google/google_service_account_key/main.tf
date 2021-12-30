resource "google_service_account_key" "key" {
  service_account_id = var.service_account_name
}