output "id" {
  description = "Database ID"
  value       = google_sql_database.database.id
}

output "number" {
  description = "DB self link"
  value       = google_sql_database.database.self_link
}