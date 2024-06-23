resource "google_container_cluster" "primary" {
  name     = "personal-project-cluster"
  location = var.region

  node_pool {
    name       = "default-pool"
    node_count = 1 # Minimal node count to save cost

    node_config {
      machine_type = "e2-medium" # Use a cost-effective machine type

      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform",
      ]
    }
  }
}
