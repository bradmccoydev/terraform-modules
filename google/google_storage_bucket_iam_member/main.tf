resource "google_storage_bucket_iam_member" "default" {
  bucket = var.bucket_id
  role   = var.role
  member = var.member
}