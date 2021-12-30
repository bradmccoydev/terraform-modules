resource "google_project_iam_binding" "service_account" {
  project = var.project_id
  role    = var.role
  members = [
    "serviceAccount:${var.member}"
  ]
}