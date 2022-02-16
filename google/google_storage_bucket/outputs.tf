output "address" {
  description = "IP Address"
  value       = google_compute_address.compute_address.address
}