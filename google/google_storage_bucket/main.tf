resource "google_storage_bucket" "bucket" {
  name     = local.bucket_name
  project  = var.project_id
  location = local.bucket_location
  versioning {
    # So that we can only accidently enable, not disable versioning
    enabled = var.versioning == "false" ? false : true
  }
  # logging = {
  #   log_bucket = "${var.log_bucket_name}"
  #   #log_object_prefix is defaulted to bucket_name
  # }
  labels = local.bucket_labels
  ## DANGER ZONE ##
  ## Setting the ephemeral_bucket variable
  ## to "true" will allow this bucket to be
  ## deleted even if it contains objects.
  ## USE WITH CARE
  force_destroy = var.ephemeral_bucket == "true" ? true : false
  # as terraform has no count  = 0/1 for this, have to set up an infinite day for disable
  lifecycle_rule {
    condition {
      age = var.disable_gcs_delete == "true" ? "100000" : "90"
    }
    action {
      type          = var.disable_gcs_delete == "true" ? "SetStorageClass" : "Delete"
      storage_class = var.disable_gcs_delete == "true" ? "ARCHIVE" : ""
    }
  }
  lifecycle_rule {
    condition {
      age = var.disable_gcs_delete == "true" ? "100000" : "90"
    }
    action {
      type          = var.disable_gcs_delete == "true" ? "SetStorageClass" : "Delete"
      storage_class = var.disable_gcs_delete == "true" ? "ARCHIVE" : ""
    }
  }
  # as terraform has no count  = 0/1 for this, have to set up an infinite day for disable
  lifecycle_rule {
    condition {
      age = var.disable_gcs_codeline == "true" ? "90000" : "30"
    }
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }
}