variable "PROJECT" {
  type = string
}
variable "REGION" {
  type = string
}

variable "COMPUTE_SERVICE" {
  type = string
}

variable "CONTAINER_SERVICE" {
  type = string
}

//////////// network //////////////////
variable "NAT_NAME" {
  type = string
}

variable "VPC_NAME" {
  type = string
}

variable "ROUTING_MODE" {
  type = string
}

variable "VPC_MTU" {
  type = number
}

variable "ROUTER_NAME" {
  type = string
}

variable "SUBNET_NAME" {
  type = string
}
///////////////////// firewall ////////////////////
variable "FIREWALL_NAME" {
  type = string
}
variable "DEFAULT_SOURCE_RANGE" {
  type = string
}

/////////////////// cluster ///////////////////
variable "SERVICE_ACCOUNT_ID" {
  type = string
}

variable "NODE_POOL_NAME" {
  type = string
}

variable "NODE_MACHINE_TYPE" {
  type = string
}

variable "NODE_LABEL_ROLE" {
  type = string
}
variable "OAUTH_SCOPES_LINK" {
  type = string
}
variable "INITIAL_NODE_COUNT" {
  type = number
}
variable "CLUSTER_LOCATION" {
  type = string
}
variable "NODE_LOCATION_1" {
  type = string
}
variable "CLUSTER_NAME" {
  type = string
}

variable "CLUSTER_SECONDARY_RANGE_NAME" {
  type = string
}
variable "SERVICES_SECONDARY_RANGE_NAME" {
  type = string
}
variable "REMOVE_DEFAULT_NODE_POOL" {
  type = bool
}
variable "HTTP_LOAD_BALANCING_DISABLED" {
  type = bool
}
variable "HORIZONTAL_POD_AUTOSCALING_DISABLED" {
  type = bool
}
variable "NETWORKING_MODE" {
  type = string
}
variable "IMAGE_TYPE" {
  type = string
}