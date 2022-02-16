resource "google_sql_database" "database" {
  project  = var.project_id
  name     = var.db_name
  instance = var.instance
}