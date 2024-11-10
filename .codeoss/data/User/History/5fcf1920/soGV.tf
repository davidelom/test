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
  initial_node_count = 3
  node_config {
    machine_type = "e2-micro"
  }
}

# Network configuration (VPC)
resource "google_compute_network" "vpc_network" {
  name                    = "vpc-network"
  auto_create_subnetworks = false
}

# Subnetwork configuration
resource "google_compute_subnetwork" "subnet" {
  name          = "gke-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network.name
}

# GKE Cluster configuration
resource "google_container_cluster" "primary" {
  name               = "mon-cluster-gke"
  location           = var.region
  initial_node_count = 3

  # Networking settings for the cluster
  network    = google_compute_network.vpc_network.name
  subnetwork = google_compute_subnetwork.subnet.name

  node_config {
    machine_type = "e2-micro" # Machine type for the nodes
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_write",
    ]
    preemptible = true # Optional: use preemptible VMs to reduce costs
    labels = {
      env = "dev"
    }
    metadata = {
      disable-legacy-endpoints = true
    }
  }

  # Enable GKE features like monitoring and logging
  monitoring_service   = "monitoring.googleapis.com/kubernetes"
  logging_service      = "logging.googleapis.com/kubernetes"

  # Enable HTTP load balancing for Ingress support
  addons_config {
    http_load_balancing {}
    dns_cache_config {}
    horizontal_pod_autoscaling {}
  }

  # Enable IP aliasing for better pod networking management
  ip_allocation_policy {
    use_ip_aliases       = true
    cluster_secondary_range_name   = "pod-range"
    services_secondary_range_name  = "svc-range"
  }

}

# Node pool configuration (optional if you want to manage node pools separately)
resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  location   = google_container_cluster.primary.location
  cluster    = google_container_cluster.primary.name

  node_count = 3

  node_config {
    machine_type   = "e2-medium"
    oauth_scopes   = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_write",
    ]
    preemptible     = true # Optional: use preemptible VMs to reduce costs
    disk_size_gb    = 100

    labels          = {
      env           = "dev"
    }
    
    metadata        = {
      disable-legacy-endpoints     = true
    }
    
    tags            = ["gke-node"]
    
    service_account     = google_service_account.gke_node_sa.email # Service account for nodes (optional)
    
   }

}

# Service account for GKE nodes (optional)
resource "google_service_account" "gke_node_sa" {
  account_id   = "${var.project_id}-gke-node-sa"
  display_name = "${var.project_id} GKE Node Service Account"
}

# Output the cluster endpoint and credentials for kubectl usage
output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
}

output "kubernetes_cluster_endpoint" {
  value       = google_container_cluster.primary.endpoint
}

output "kubernetes_cluster_ca_certificate" {
  value       = google_container_cluster.primary.master_auth[0].cluster_ca_certificate
}