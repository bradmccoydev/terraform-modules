resource "random_string" "random" {
  length  = 3
  special = false
  upper   = false
  lower   = true
  number  = false
}

resource "aws_secretsmanager_secret" "default" {
  name = "${var.secret_name}-${random_string.random.result}"
  tags = var.tags
}

resource "aws_secretsmanager_secret_version" "default" {
  secret_id     = aws_secretsmanager_secret.default.id
  secret_string = var.tags
}
