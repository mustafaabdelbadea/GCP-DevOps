module "cluster" {
  source                              = "./cluster"
  service_account_id                  = var.SERVICE_ACCOUNT_ID
  node_pool_name                      = var.NODE_POOL_NAME
  node_machine_type                   = var.NODE_MACHINE_TYPE
  node_label_role                     = var.NODE_LABEL_ROLE
  oauth_scopes_link                   = var.OAUTH_SCOPES_LINK
  initial_node_count                  = var.INITIAL_NODE_COUNT
  cluster_location                    = var.CLUSTER_LOCATION
  node_location_1                     = var.NODE_LOCATION_1
  project                             = var.PROJECT
  cluster_name                        = var.CLUSTER_NAME
  cluster_secondary_range_name        = var.CLUSTER_SECONDARY_RANGE_NAME
  services_secondary_range_name       = var.SERVICES_SECONDARY_RANGE_NAME
  remove_default_node_pool            = var.REMOVE_DEFAULT_NODE_POOL
  http_load_balancing_disabled        = var.HTTP_LOAD_BALANCING_DISABLED
  horizontal_pod_autoscaling_disabled = var.HORIZONTAL_POD_AUTOSCALING_DISABLED
  networking_mode                     = var.NETWORKING_MODE
  compute_network_main                = module.network.compute_network_main
  compute_subnetwork_private          = module.network.compute_subnetwork_private
  google_compute_router_nat           = module.network.google_compute_router_nat
  image_type                          = var.IMAGE_TYPE
}