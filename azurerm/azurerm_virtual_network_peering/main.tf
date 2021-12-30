resource "azurerm_virtual_network_peering" "default" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.virtual_network_name
  remote_virtual_network_id = var.remote_virtual_network_id
}

# resource "azurerm_virtual_network_peering" "vnet1to2" {
#   resource_group_name  = var.virtual_network_1_resource_group_name
#   virtual_network_name = var.virtual_network_1_name

#   name                      = var.virtual_network_2_name
#   remote_virtual_network_id = var.virtual_network_2_id
# }

# resource "azurerm_virtual_network_peering" "vnet2to1" {
#   resource_group_name  = var.virtual_network_2_resource_group_name
#   virtual_network_name = var.virtual_network_2_name

#   name                      = var.virtual_network_1_name
#   remote_virtual_network_id = var.virtual_network_1_id
# }
