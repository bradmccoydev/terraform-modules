output "id" {
  description = "Subnet ID"
  value       = google_compute_subnetwork.vpc_subnetwork.id
}

output "creation_timestamp" {
  description = "Creation Timestamp"
  value       = google_compute_subnetwork.vpc_subnetwork.creation_timestamp
}

output "gateway_address" {
  description = "Gateway Address"
  value       = google_compute_subnetwork.vpc_subnetwork.gateway_address
}

output "self_link" {
  description = "Self Link"
  value       = google_compute_subnetwork.vpc_subnetwork.self_link
}