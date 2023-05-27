PROJECT = "iti-project-387311"
REGION  = "us-east1"

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
SUBNET_NAME  = "private"

//////////////////// cluster ////////////////
SERVICE_ACCOUNT_ID                  = "kubernetes"
NODE_POOL_NAME                      = "general"
NODE_MACHINE_TYPE                   = "e2-small"
NODE_LABEL_ROLE                     = "general"
OAUTH_SCOPES_LINK                   = "https://www.googleapis.com/auth/cloud-platform"
INITIAL_NODE_COUNT                  = 1
CLUSTER_LOCATION                    = "us-east1-b"
NODE_LOCATION_1                     = "us-east1-c"
CLUSTER_NAME                        = "primary"
CLUSTER_SECONDARY_RANGE_NAME        = "k8s-pod-range"
SERVICES_SECONDARY_RANGE_NAME       = "k8s-service-range"
REMOVE_DEFAULT_NODE_POOL            = true
HTTP_LOAD_BALANCING_DISABLED        = true
HORIZONTAL_POD_AUTOSCALING_DISABLED = false
NETWORKING_MODE                     = "VPC_NATIVE"