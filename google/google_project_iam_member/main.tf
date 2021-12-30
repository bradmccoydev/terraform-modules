resource "google_project_iam_member" "owner" {
  project = var.project
  role    = var.role
  member  = "${var.type}:${var.user}"
}