resource "random_string" "random" {
  length  = var.length
  special = var.special
  upper   = var.contains_upper
}