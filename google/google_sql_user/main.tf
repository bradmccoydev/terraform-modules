resource "google_sql_user" "user" {
  project  = var.project_id
  name     = var.name
  password = var.password
  instance = var.instance
}