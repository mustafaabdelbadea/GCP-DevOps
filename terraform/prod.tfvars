PROJECT           = "iti-project-387311"
REGION            = "us-east1"
COMPUTE_SERVICE   = "compute.googleapis.com"
CONTAINER_SERVICE = "container.googleapis.com"


///////////////////// firewall ////////////////////
FIREWALL_NAME        = "allow-ssh"
DEFAULT_SOURCE_RANGE = "0.0.0.0/0"


///////////////////// network /////////////////////
NAT_NAME     = "nat"
VPC_NAME     = "main"
ROUTING_MODE = "REGIONAL"
VPC_MTU      = 1460
ROUTER_NAME  = "router"