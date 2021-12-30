resource "azurerm_virtual_machine_extension" "default" {
  name                 = var.name
  virtual_machine_id   = var.virtual_machine_id
  publisher            = var.publisher
  type                 = var.type
  type_handler_version = var.type_handler_version

  protected_settings = <<PROT
  {
      "script": "${base64encode(file(var.script))}"
  }
  PROT

  tags = var.tags
}