resource "null_resource" "delay_after_sp_created" {
  provisioner "local-exec" {
    command = "sleep 60"
  }
  triggers = {
    "before" = azuread_service_principal_password.default.value
  }
}

resource "azuread_service_principal_password" "default" {
  service_principal_id = var.service_principal_id
}
