output "id" {
  value = azurerm_kubernetes_cluster.default.id
}

output "name" {
  value      = var.name
  depends_on = [azurerm_kubernetes_cluster.default]
}

output "principal_id" {
  value = azurerm_kubernetes_cluster.default.identity[0].principal_id
}

output "fqdn" {
  value = azurerm_kubernetes_cluster.default.fqdn
}

output "private_fqdn" {
  value = azurerm_kubernetes_cluster.default.private_fqdn
}

output "kube_config" {
  description = "Kubernetes Config block"
  sensitive   = true
  value       = azurerm_kubernetes_cluster.default.kube_config
}
output "host" {
  value = azurerm_kubernetes_cluster.default.kube_config[0].host
}
