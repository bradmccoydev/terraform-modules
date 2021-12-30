resource "cloudflare_custom_ssl" "default" {
  zone_id = var.zone_id

  custom_ssl_options {
    certificate = var.certificate
    private_key = var.private_key
  }
}
