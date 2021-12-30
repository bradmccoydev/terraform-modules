output "id" {
  description = "Resource group Id"
  value       = azurerm_virtual_network_peering.default.id
}

# output "vnet1to2_id" {
#   description = "Virtual Network 1 to 2 Peering Id"
#   value       = azurerm_virtual_network_peering.vnet1to2.id
# }

# output "vnet2to1_id" {
#   description = "Virtual Network 2 to 1 Peering Id"
#   value       = azurerm_virtual_network_peering.vnet1to2.id
# }
