output "private_key" {
  description = "Private Key"
  value       = google_service_account_key.key.private_key
  sensitive   = true
}