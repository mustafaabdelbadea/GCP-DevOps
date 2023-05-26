PROJECT                     = "iti-project-387311"
REGION                      = "us-east1"
BACKEND_BUCKET              = "387311-terraform"
BACKEND_PREFIX              = "terraform/state"
COMPUTE_SERVICE             = "compute.googleapis.com"
CONTAINER_SERVICE           = "container.googleapis.com"


///////////////////// firewall ////////////////////
FIREWALL_NAME               = "allow_ssh" 
DEFAULT_SOURCE_RANGE        = "0.0.0.0/0"


///////////////////// network /////////////////////
NAT_NAME                    = "nat"