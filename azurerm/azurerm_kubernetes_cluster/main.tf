resource "azurerm_kubernetes_cluster" "default" {
  name                    = var.name
  dns_prefix              = var.dns_prefix
  location                = var.location
  resource_group_name     = var.resource_group_name
  private_cluster_enabled = var.private_cluster_enabled
  //api_server_authorized_ip_ranges = ["34.83.219.216/32"]
  node_resource_group = "${var.resource_group_name}-node"
  default_node_pool {
    name                = "agentpool"
    node_count          = var.node_count
    vm_size             = var.node_size
    os_disk_size_gb     = var.node_disk_size
    vnet_subnet_id      = var.kubernetes_subnet_id
    enable_auto_scaling = true
    min_count           = 1
    max_count           = 10
    max_pods            = 200
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = var.kubernetes_network_plugin // [azure,kubenet]
    network_policy = var.kubernetes_network_policy
  }

  tags = var.tags
}
