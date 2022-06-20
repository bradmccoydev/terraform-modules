resource "azurerm_linux_web_app" "default" {
  name                = var.web_app_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  service_plan_id     = var.appservice_plan_id

  https_only = true

  site_config {
    http2_enabled          = true
    vnet_route_all_enabled = var.subnet_id != ""
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

data "azurerm_subnet" "swift" {
  count                = var.subnet_id != "" ? 1 : 0
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group_name
}

resource "azurerm_app_service_virtual_network_swift_connection" "appservice" {
  count = var.subnet_id != "" ? 1 : 0

  app_service_id = resource.azurerm_linux_web_app.default.id
  subnet_id      = data.azurerm_subnet.swift.0.id
}
