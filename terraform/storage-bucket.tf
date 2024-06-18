resource "google_storage_bucket" "static_assets" {
  name          = "personal-project-static-assets"
  location      = "US"
  force_destroy = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age = 365 # Example lifecycle rule to save costs by deleting old files
    }
  }
}
