variable "PROJECT" {
    type = string
}
variable "REGION" {
    type = string
}
variable "BACKEND_BUCKET" {
    type = string
}
variable "BACKEND_PREFIX" {
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
///////////////////// firewall ////////////////////
variable "FIREWALL_NAME" {
  type = string
}
variable "DEFAULT_SOURCE_RANGE" {
  type = string
}