resource "azurerm_service_plan" "default" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location

  os_type  = var.os_type
  sku_name = var.sku


  maximum_elastic_worker_count = var.max_elastic_workers
  worker_count                 = var.worker_count_to_allocate
  per_site_scaling_enabled     = var.allow_per_site_scaling
  zone_balancing_enabled       = var.allow_zone_balancing

  tags = var.tags
}
