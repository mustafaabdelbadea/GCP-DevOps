variable "firewall_name" {
  type = string
}
variable "default_source_range" {
  type = string
}

variable "routing_mode" {
  type = string
}

variable "vpc_name" {
  type = string
}
variable "vpc_mtu" {
  type = number
}

/// Empty type acts like type any
variable "compute_service" {}
variable "container_service" {}

variable "router_name" {
  type = string
}
variable "region" {
  type = string
}
