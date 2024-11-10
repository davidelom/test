terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
provider "google" {
  project = "projet-infrastructure-cloud"
  region  = "us-central1"
  zone = "us-central1-a"
}

resource "google_container_cluster" "primary" {
  name     = "mon-cluster-gke"
  location = "us-central1"
  initial_node_count = 1
  node_config {
    machine_type = "e2-medium"
  }
}
