provider "google" {
  project = "iti-project-387311"
  region  = "us-east1"
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