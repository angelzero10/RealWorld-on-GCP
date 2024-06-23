output "kubernetes_cluster_name" {
  description = "The name of the Kubernetes cluster"
  value       = google_container_cluster.primary.name
}

output "bucket_name" {
  description = "The name of the storage bucket"
  value       = google_storage_bucket.static_assets.name
}
