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
  region  = "us-west1-c"
}

resource "google_container_cluster" "primary" {
  name     = "mon-cluster-gke"
  location = "us-west1-c"
  initial_node_count = 3
  node_config {
    machine_type = "e2-medium"
  }
}

