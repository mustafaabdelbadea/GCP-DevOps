resource "google_container_node_pool" "general" {
  name       = var.service_account_id
  cluster    = google_container_cluster.primary.id
  node_count = var.initial_node_count

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  node_config {
    preemptible  = false
    machine_type = var.node_machine_type

    labels = {
      role = var.node_label_role
    }

    service_account = google_service_account.kubernetes.email
    oauth_scopes = [
        var.oauth_scopes_link
    ]
  }
}

