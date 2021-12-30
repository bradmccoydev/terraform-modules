output "id" {
  value = azurerm_kubernetes_cluster.default.id
}

output "principal_id" {
  value = azurerm_kubernetes_cluster.default.identity[0].principal_id
}

output "private_fqdn" {
  value = azurerm_kubernetes_cluster.default.private_fqdn
}

output "host" {
  value = azurerm_kubernetes_cluster.default.kube_config[0].host
}