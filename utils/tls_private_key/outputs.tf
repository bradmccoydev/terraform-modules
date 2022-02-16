output "tls_private_key" {
  value     = tls_private_key.default.private_key_pem
  sensitive = true
}

output "public_key_openssh" {
  value = tls_private_key.default.public_key_openssh
}