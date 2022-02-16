output "id" {
  description = "ID"
  value       = google_compute_global_address.compute_global_address.id
}

output "self_link" {
  description = "Compute Network ID"
  value       = google_compute_global_address.compute_global_address.self_link
}

output "name" {
  description = "Beta Provider address Name"
  value       = google_compute_global_address.compute_global_address.name
}