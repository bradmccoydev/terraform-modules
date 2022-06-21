resource "azurerm_private_link_service" "default" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  auto_approval_subscription_ids              = var.auto_approval_subscription_ids
  visibility_subscription_ids                 = var.visibility_subscription_ids
  load_balancer_frontend_ip_configuration_ids = var.load_balancer_frontend_ip_configuration_ids


  dynamic "nat_ip_configuration" {
    for_each = var.nat_ip_settings
    content {
      name                       = nat_ip_configuration.name
      private_ip_address         = nat_ip_configuration.private_ip
      private_ip_address_version = "IPv4"
      subnet_id                  = nat_ip_configuration.subnet_id
      primary                    = nat_ip_configuration.is_primary
    }
  }

  tags = var.tags
}
