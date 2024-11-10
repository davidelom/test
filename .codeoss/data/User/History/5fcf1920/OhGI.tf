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
  region  = "livecampus.fr"
}

resource "google_container_cluster" "primary" {
  name     = "mon-cluster-gke"
  location = "livecampus.fr"
  initial_node_count = 3
  node_config {
    machine_type = "e2-medium"
  }
  monitoring_service = "MONITORING"
}
