resource "google_sql_database_instance" "sql_db" {
  provider         = google-beta
  depends_on       = [var.db_depends_on]
  name             = var.name
  project          = var.project_id
  database_version = var.database_version
  region           = var.region

  settings {
    tier              = var.database_tier
    availability_type = var.availability_type

    ip_configuration {
      ipv4_enabled    = false
      private_network = var.private_network
    }
  }
}