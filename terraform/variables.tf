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