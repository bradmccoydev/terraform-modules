output "id" {
  description = "IAM ID"
  value       = google_project_iam_custom_role.default.id
}

output "title" {
  description = "Title"
  value       = google_project_iam_custom_role.default.title
}