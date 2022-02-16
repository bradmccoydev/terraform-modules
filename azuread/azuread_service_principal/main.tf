resource "azuread_service_principal" "default" {
  application_id               = var.application_id
  app_role_assignment_required = false
}