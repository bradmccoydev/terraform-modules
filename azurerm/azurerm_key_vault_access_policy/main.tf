resource "azurerm_key_vault_access_policy" "default" {
  key_vault_id = var.key_vault_id
  tenant_id    = var.tenant_id
  object_id    = var.object_id

  secret_permissions      = var.secret_permissions
  key_permissions         = var.key_permissions
  certificate_permissions = var.certificate_permissions
}
