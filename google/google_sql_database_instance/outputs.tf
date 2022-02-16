output "self_link" {
  description = "Databases Self Link"
  value       = google_sql_database_instance.sql_db.self_link
}

output "connection_name" {
  description = "Database Connection Name"
  value       = google_sql_database_instance.sql_db.connection_name
}

output "private_ip_address" {
  description = "Database Private IP Address"
  value       = google_sql_database_instance.sql_db.private_ip_address
}

output "name" {
  description = "Database Instance Name"
  value       = google_sql_database_instance.sql_db.name
}