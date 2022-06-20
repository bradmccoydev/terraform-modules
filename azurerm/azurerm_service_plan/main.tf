resource "azurerm_service_plan" "default" {
  name                = var.appservice_plan_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  os_type             = var.appservice_plan_os_type
  sku_name            = var.appservice_plan_sku

  maximum_elastic_worker_count = var.max_worker_count
  worker_count                 = var.worker_count
  per_site_scaling_enabled     = var.per_site_scaling_enabled

  tags = var.tags
}
