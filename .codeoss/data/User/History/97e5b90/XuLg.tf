variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "cluster_name" {
  description = "name of the GKE cluster"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}