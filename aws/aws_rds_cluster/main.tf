resource "aws_db_subnet_group" "default" {
  name        = "certifid"
  description = "Certif-id subnet group"
  subnet_ids  = [aws_subnet.public_1.id, aws_subnet.public_2.id]

  tags = var.tags
}

resource "aws_rds_cluster" "default" {
  apply_immediately       = true
  enable_http_endpoint    = true
  cluster_identifier      = var.application_name
  vpc_security_group_ids  = [aws_security_group.vpc-sg.id]
  db_subnet_group_name    = aws_db_subnet_group.default.name
  engine                  = "aurora-postgresql"
  engine_mode             = "serverless"
  master_username         = var.db_username
  master_password         = random_password.password.result
  database_name           = var.database_name
  backup_retention_period = 7
  skip_final_snapshot     = true
  tags                    = var.tags

  scaling_configuration {
    auto_pause               = true
    max_capacity             = 2
    min_capacity             = 2
    seconds_until_auto_pause = 600
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      engine_version,
    ]
  }
}
