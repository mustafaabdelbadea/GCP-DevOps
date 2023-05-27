output "compute_network_main" {
    value = google_compute_network.main
}
output "compute_subnetwork_private" {
    value = google_compute_subnetwork.private
}

output "google_compute_router_nat" {
    value = google_compute_router_nat.nat
}