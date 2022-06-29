output "service_plan_id" {
  value = resource.azurerm_service_plan.default.id
}

output "service_plan_kind" {
  value = resource.azurerm_service_plan.default.kind
}

output "service_plan_is_reserved" {
  value = resource.azurerm_service_plan.default.reserved
}
