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

data "google_compute_network" "vpc_network" {
  name                    = "vpc-network"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "gke-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
  network       = data.google_compute_network.vpc_network.name

  secondary_ip_range {
    range_name    = "pod-range"
    ip_cidr_range = "10.1.0.0/16" 
  }

  secondary_ip_range {
    range_name    = "svc-range"
    ip_cidr_range = "10.2.0.0/20"  
  }
}

resource "google_container_cluster" "primary" {
  name               = "mon-cluster-gke"
  location           = var.region
  initial_node_count = 3

  network    = google_compute_network.vpc_network.name
  subnetwork = google_compute_subnetwork.subnet.name

  node_config {
    machine_type = "e2-micro" 
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_write",
    ]
    preemptible = true 
    labels = {
      env = "dev"
    }
    metadata = {
      disable-legacy-endpoints = true
    }
  }

  monitoring_service   = "monitoring.googleapis.com/kubernetes"
  logging_service      = "logging.googleapis.com/kubernetes"

  ip_allocation_policy {
    cluster_secondary_range_name   = "pod-range"
    services_secondary_range_name  = "svc-range"
  }

}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  location   = google_container_cluster.primary.location
  cluster    = google_container_cluster.primary.name

  node_count = 3

  node_config {
    machine_type   = "e2-micro"
    oauth_scopes   = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_write",
    ]
    preemptible     = true 
    disk_size_gb    = 10

    labels          = {
      env           = "dev"
    }
    
    metadata        = {
      disable-legacy-endpoints     = true
    }
    
    tags            = ["gke-node"]
    
    service_account     = google_service_account.gke_node_sa.email 
   }

}

resource "google_service_account" "gke_node_sa" {
  account_id   = "gke-node-sa"
  display_name = "GKE Node Service Account"
}

output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
}

output "kubernetes_cluster_endpoint" {
  value       = google_container_cluster.primary.endpoint
}

output "kubernetes_cluster_ca_certificate" {
  value       = google_container_cluster.primary.master_auth[0].cluster_ca_certificate
}