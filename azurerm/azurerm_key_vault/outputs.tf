output "id" {
  value = azurerm_key_vault.default.id
}

output "name" {
  description = "Key vault name"
  depends_on  = [azurerm_key_vault.default]
  value       = "${var.name}-kv"
}
