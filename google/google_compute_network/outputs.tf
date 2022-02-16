output "id" {
  description = "Compute Network ID"
  value       = google_compute_network.vpc_network.id
}

output "gateway_ipv4" {
  description = "Ipv4 gateway address"
  value       = google_compute_network.vpc_network.gateway_ipv4
}

output "self_link" {
  description = "Compute Network ID"
  value       = google_compute_network.vpc_network.self_link
}