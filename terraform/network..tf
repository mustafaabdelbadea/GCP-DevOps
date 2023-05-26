module "network" {
  source               = "./network"
  vpc_name             = var.VPC_NAME
  firewall_name        = var.FIREWALL_NAME
  default_source_range = var.DEFAULT_SOURCE_RANGE
  routing_mode         = var.ROUTING_MODE
  vpc_mtu              = var.VPC_MTU
  compute_service      = module.apis.compute
  container_service    = module.apis.container
  router_name          = var.ROUTER_NAME
  region               = var.REGION
  nat_name             = var.NAT_NAME
  subnet_name          = var.SUBNET_NAME
}
