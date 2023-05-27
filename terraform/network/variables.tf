variable "region" {
  type = string
}
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

variable "subnet_name" {
  type = string
}

variable "nat_name" {
  type = string
}
variable "cluster_secondary_range_name" {
  type = string
}
variable "services_secondary_range_name" {
  type = string
}
