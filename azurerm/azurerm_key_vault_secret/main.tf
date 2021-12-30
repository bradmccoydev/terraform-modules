resource "azurerm_key_vault_secret" "default" {
  name         = var.name
  value        = var.value
  key_vault_id = var.key_vault_id
  content_type = var.content_type
}
