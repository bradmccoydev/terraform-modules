resource "azurerm_resource_group" "default" {
  name     = var.name
  location = var.location
  tags     = var.tags
}
resource "azurerm_consumption_budget_resource_group" "default" {
  count             = var.budget_amount == 0 ? 0 : 1
  name              = var.name
  resource_group_id = azurerm_resource_group.default.id

  amount     = var.budget_amount
  time_grain = "Monthly"

  time_period {
    start_date = formatdate("YYYY-MM-01'T'00:00:00Z", timestamp())
  }

    notification {
    enabled   = true
    threshold = 50.0
    operator  = "EqualTo"

    contact_emails = var.contact_emails

    contact_roles = [
      "Owner",
    ]
  }

  notification {
    enabled   = true
    threshold = 70.0
    operator  = "EqualTo"

    contact_emails = var.contact_emails

    contact_roles = [
      "Owner",
    ]
  }

  lifecycle {
    ignore_changes = [
      time_period
    ]
  }
}
