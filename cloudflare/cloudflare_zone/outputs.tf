output "id" {
  description = "Zone Id"
  value       = cloudflare_zone.default.id
}

output "status" {
  description = "Zone Status"
  value       = cloudflare_zone.default.status
}
