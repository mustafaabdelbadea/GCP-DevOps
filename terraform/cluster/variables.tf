variable "service_account_id" {
  type = string
}

variable "node_machine_type" {
  type = string
}
variable "node_pool_name" {
  type = string
}
variable "node_label_role" {
  type = string
}

variable "oauth_scopes_link" {
  type = string
}

variable "initial_node_count" {
  type = number
}
variable "cluster_location" {
  type = string
}
variable "node_location_1" {
  type = string
}
variable "project" {
  type = string
}
variable "cluster_name" {
  type = string
}
variable "cluster_secondary_range_name" {
  type = string
}
variable "services_secondary_range_name" {
  type = string
}
variable "remove_default_node_pool" {
  type = bool
}
variable "http_load_balancing_disabled" {
  type = bool
}
variable "horizontal_pod_autoscaling_disabled" {
  type = bool
}
variable "networking_mode" {
  type = string
}
variable "image_type" {
  type = string
}

/// Empty type acts like type any
variable "compute_network_main" {}
variable "compute_subnetwork_private" {}
variable "google_compute_router_nat" {}