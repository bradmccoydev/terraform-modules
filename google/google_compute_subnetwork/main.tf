resource "google_compute_subnetwork" "vpc_subnetwork" {
  name = var.vpc_subnetwork_name

  ip_cidr_range = var.vpc_subnetwork_cidr_range
  region        = var.region
  network       = var.vpc_network_name

  secondary_ip_range {
    range_name    = "${var.vpc_subnetwork_name}-secondary-range"
    ip_cidr_range = var.subnet_secondary_range_cidr
  }

  private_ip_google_access = true
}