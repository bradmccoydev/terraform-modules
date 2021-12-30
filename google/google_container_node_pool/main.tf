resource "google_container_node_pool" "primary_nodes" {
  name               = "${var.project_id}-node-pool"
  project            = var.project_id
  location           = var.region
  cluster            = var.cluster_name
  initial_node_count = var.gke_num_nodes

  autoscaling {
    min_node_count = 1
    max_node_count = var.max_node_count
  }

  management {
    auto_repair  = "true"
    auto_upgrade = "true"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/devstorage.read_write",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
    ]

    labels = {
      env = var.project_id
    }

    machine_type = var.machine_type
    preemptible  = var.cloud_transient_instance ? false : true
    tags         = ["gke-node", "${var.project_id}-gke"]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    disk_size_gb = var.kubernetes_node_disk_size
    disk_type    = "pd-ssd"
  }
}
