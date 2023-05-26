module "apis" {
  source            = "./apis"
  compute_service   = var.COMPUTE_SERVICE
  container_service = var.CONTAINER_SERVICE
  project           = var.PROJECT
}




# resource "google_project_service" "container" {
#     project = "iti-project-387311"
#     service = "container.googleapis.com"

# }


# resource "google_project_service" "compute" {
#     project            = "iti-project-387311" 
#     service            = "compute.googleapis.com" 
#     }