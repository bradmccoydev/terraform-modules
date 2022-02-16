resource "azurerm_role_assignment" "default" {
  scope                            = var.scope
  role_definition_name             = var.role_definition_name
  principal_id                     = var.principal_id
  skip_service_principal_aad_check = true
}