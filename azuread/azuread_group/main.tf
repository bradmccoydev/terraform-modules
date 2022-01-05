data "azuread_client_config" "current" {}

resource "azuread_group" "default" {
  assignable_to_role = true
  display_name       = var.display_name
  owners             = [data.azuread_client_config.current.object_id]
  description        = var.description
  security_enabled   = true
}
