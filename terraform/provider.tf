provider "google" {
  project = var.PROJECT
  region  = var.REGION
}


terraform {
  backend "gcs" {
    bucket = "387311-terraform"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}