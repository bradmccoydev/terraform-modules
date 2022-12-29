resource "azurerm_subnet" "default" {
  name                 = var.name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.address_prefixes
}
