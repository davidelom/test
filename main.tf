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
  zone    = "us-central1-a"
}

resource "google_container_cluster" "primary" {
  name               = "mon-cluster-gke"
  location           = "us-central1-a"
  initial_node_count = 3

  monitoring_config {
    managed_prometheus {
      enabled = true
    }
  }

  node_config {
    machine_type = "e2-micro"
  }
}
