resource "tls_private_key" "default" {
  algorithm = var.algorithm
  rsa_bits  = var.rsa_bits
}