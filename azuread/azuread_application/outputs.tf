output "application_id" {
  value       = azuread_application.default.application_id
  description = "The Application ID (also called Client ID)."
}

output "object_id" {
  value       = azuread_application.default.object_id
  description = "The Object ID."
}


output "application_secret" {
  value       = azuread_application_password.default.value
  description = "The password /secret for this application to be stored in a key vault / equivalent."
  sensitive   = true
}
