resource "azurerm_public_ip" "default" {
  name                = var.name
  location            = var.location
  resource_group_name = "${var.resource_group_name}-node"
  allocation_method   = var.allocation_method
  availability_zone   = "No-Zone"
  sku                 = var.sku

  tags = var.tags
}
