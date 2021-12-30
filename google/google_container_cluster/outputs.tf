output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "endpoint" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster Name"
  sensitive   = true
}

output "client_certificate" {
  value       = google_container_cluster.primary.master_auth.0.client_certificate
  description = "GKE Cluster Name"
  sensitive   = true
}

output "client_key" {
  value       = google_container_cluster.primary.master_auth.0.client_key
  description = "GKE Cluster Name"
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
  description = "GKE Cluster Name"
  sensitive   = true
}
