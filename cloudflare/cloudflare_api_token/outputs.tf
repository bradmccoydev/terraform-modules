output "id" {
  description = "API Token Id"
  value       = cloudflare_api_token.default.id
}

output "value" {
  description = "API Token Value"
  value       = cloudflare_api_token.default.value
  sensitive   = true
}
