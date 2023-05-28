# GKE Cluster using Terraform and Jenkins


>This repository contains the Terraform code to build GKE (Google Kubernetes Engine) and Kubernetes components to create services and deployment that configure jenkins for CI/CD which can build and run containers and service loadbalancer.  

## Requirements

### System

- GNU/Linux
- `terraform`
- `docker`
- `kubernetes`

### Get the Code
```
https://github.com/mustafaabdelbadea/GCP-DevOps
cd GCP-DevOps
```
### Structure

```
GCP-DevOps
├── configure_pod.sh
├── images
│   └── Trello.png
├── kubernetes
│   ├── 1_namespace.yml
│   ├── 2_roles.yml
│   ├── 3_jenkins-service-account.yml
│   ├── 4_role-binding.yml
│   ├── 5_jenkins-service.yml
│   ├── 6_jenkins-deploy.yml
│   └── apply.sh
├── README.md
└── terraform
    ├── apis
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── varibales.tf
    ├── apis.tf
    ├── cluster
    │   ├── cluster.tf
    │   ├── node-pool.tf
    │   ├── outputs.tf
    │   ├── service-account.tf
    │   └── variables.tf
    ├── cluster.tf
    ├── network
    │   ├── firewall.tf
    │   ├── nat.tf
    │   ├── outputs.tf
    │   ├── router.tf
    │   ├── subnets.tf
    │   ├── variables.tf
    │   └── vpc.tf
    ├── network..tf
    ├── prod.tfvars
    ├── provider.tf
    └── variables.tf
```

### Terraform
- `Provider.tf` To configure the provider, project and the backend for the terraform (Bucket).
- `Variables.tf` All terraform variables types definiation.
    - Create `variables` without type to act as type `any`.
- `prod.tfvars` Production variables.
##### Modules

> 1. `apis module` Enable and disable apis 
- Comopute api.
- Container api.
> 2. `network module` Configure network on GCP 
- Create VPC.
- Partation the network using subnets.
- Create route.
- Create nat .
- Configure firewall.
> 3. `cluster module` Configure cluster
- Create service account .
- Create Cluster.
- Create node pool with image type `UBUNTU_CONTAINERD (Docker)`.

```
cd terraform 
terraform init
terraform terraform workspace new production
terraform plan --var-file=prod.tfvars
terraform apply --var-file=pord.tfvars 
```

### :ship: Kubernetes
- Starting the naming with number to make files ordered.
- Create `namespace` to isolate the components.
- Create `role` to enable the `jenkins pod` to create, list, delete `services and deployments`.
- Create `service account` to be attached in the `deployment`.
- Create `role bind` to bind the `role` with `service account`.
- Create `service loadbalancer` to create loadbalacer with external ip to access the application.
- >Create `deployment` that contains:
    > - Container with `jenkins` image with container port `8080`.
    > - Mount volume to use the `Docker` of the node.
    > - Attach the `service account` to make pod create deployments and services in the same cluster
    > - Execute commands to install `docker cli and kubectl` after pod started using `lifecycle`.
    > - Create the pod with `root` privilege.

### :fire: Script
Execute all kubernetes files
```
cd kubernetes
./apply.sh
```

- [@linkedin](https://www.linkedin.com/in/mustafa-abdelbadea/)
