resource "google_project_service" "compute" {
  project = var.project
  service = var.compute_service
  disable_dependent_services=false
}

resource "google_project_service" "container" {
  project = var.project
  service = var.container_service
  disable_dependent_services=false
}