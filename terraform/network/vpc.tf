resource "google_compute_network" "main" {
  name                            = var.vpc_name
  routing_mode                    = var.routing_mode
  auto_create_subnetworks         = false
  mtu                             = var.vpc_mtu
  delete_default_routes_on_create = false

  depends_on = [
    var.compute_service,
    var.container_service
  ]
}