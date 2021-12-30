resource "cloudflare_record" "foobar" {
  zone_id = var.cloudflare_zone_id
  name    = var.name
  value   = var.value
  type    = var.type
  ttl     = 3600
}