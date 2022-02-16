resource "random_password" "default" {
  length           = var.length
  special          = var.special
  override_special = "_%@"
}