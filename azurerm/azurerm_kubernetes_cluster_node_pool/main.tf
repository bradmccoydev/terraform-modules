resource "azurerm_kubernetes_cluster_node_pool" "default" {
  name                  = var.name
  kubernetes_cluster_id = var.kubernetes_cluster_id
  vm_size               = var.vm_size
  enable_auto_scaling   = true
  max_count             = var.max_count
  min_count             = var.min_count
  max_pods              = 250
  vnet_subnet_id        = var.kubernetes_subnet_id

  tags = var.tags
}
