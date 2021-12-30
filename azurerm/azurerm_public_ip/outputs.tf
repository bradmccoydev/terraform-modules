output "id" {
  description = "Public IP Id"
  value       = azurerm_public_ip.default.id
}

output "ip_address" {
  description = "Public IP Address"
  value       = azurerm_public_ip.default.ip_address
}