output "rds_endpoint" {
  value = aws_db_instance.default.endpoint
}

output "secret_arn" {
  value = aws_secretsmanager_secret_version.default.arn
}
