output "id" {
  description = "Service account ID"
  value       = google_service_account.service_account.id
}

output "name" {
  description = "Service Account Name"
  value       = google_service_account.service_account.name
}

output "email" {
  description = "Service Account Email"
  value       = google_service_account.service_account.email
}

output "unique_id" {
  description = "Service Account Unique ID"
  value       = google_service_account.service_account.unique_id
}