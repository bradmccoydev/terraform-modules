resource "azuread_application" "default" {
  display_name = var.name
}

resource "azuread_application_password" "default" {
  display_name          = "Auto-generated password"
  application_object_id = azuread_application.default.object_id
}
