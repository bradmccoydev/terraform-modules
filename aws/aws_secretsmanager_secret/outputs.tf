output "id" {
  value       = aws_secretsmanager_secret.default.id
  description = "Secret ID"
}

output "arn" {
  value       = aws_secretsmanager_secret.default.arn
  description = "Secret ID"
}
