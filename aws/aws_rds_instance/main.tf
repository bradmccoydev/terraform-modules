resource "random_password" "default" {
  length           = 10
  special          = true
  override_special = "_%@"
}

resource "random_string" "random" {
  length           = 3
  special          = false
  override_special = "/@£$"
}

locals {
  cluster_details = {
    db_endpoint = aws_db_instance.default.endpoint
    db_name     = var.db_name
    db_username = var.db_username
    db_password = random_password.default.result
  }
}

resource "aws_secretsmanager_secret" "default" {
  name = "${var.name}-${random_string.random.result}"
  tags = var.tags
}

resource "aws_secretsmanager_secret_version" "default" {
  secret_id     = aws_secretsmanager_secret.default.id
  secret_string = jsonencode(local.cluster_details)
}

resource "aws_security_group" "default" {
  name        = var.name
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.db_port
    to_port     = var.db_port
    protocol    = "tcp"
    cidr_blocks = var.ip_whitelist
  }
}

resource "aws_db_subnet_group" "default" {
  name        = var.name
  description = "${var.name} subnet group"
  subnet_ids  = var.subnet_ids

  tags = var.tags
}

resource "aws_db_instance" "default" {
  instance_class                      = var.db_instance_class
  identifier                          = var.name
  engine                              = var.engine
  engine_version                      = var.engine_version
  allocated_storage                   = var.allocated_storage
  db_name                             = var.db_name
  username                            = var.db_username
  password                            = random_password.default.result
  db_subnet_group_name                = aws_db_subnet_group.default.name
  vpc_security_group_ids              = [aws_security_group.default.id]
  publicly_accessible                 = false
  skip_final_snapshot                 = true
  iam_database_authentication_enabled = true
  apply_immediately                   = true
  tags                                = var.tags
  storage_encrypted                   = var.storage_encrypted
}
