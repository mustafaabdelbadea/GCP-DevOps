provider "google" {
  project = var.PROJECT
  region  = var.REGION
}


terraform {
  backend "gcs" {
    bucket = var.BACKEND_BUCKET
    prefix = var.BACKEND_PREFIX
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}