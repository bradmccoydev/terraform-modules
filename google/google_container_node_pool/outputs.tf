output "google_container_node_pool_id" {
  value       = google_container_node_pool.primary_nodes.id
  description = "Google container node pool ID"
}