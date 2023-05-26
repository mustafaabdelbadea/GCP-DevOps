module "apis" {
  source            = "./apis"
  compute_service   = var.COMPUTE_SERVICE
  container_service = var.CONTAINER_SERVICE
  project           = var.PROJECT
}