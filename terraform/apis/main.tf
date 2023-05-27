resource "google_project_service" "compute" {
  project = var.project
  service = var.compute_service
}

resource "google_project_service" "container" {
  project = var.project
  service = var.container_service
}