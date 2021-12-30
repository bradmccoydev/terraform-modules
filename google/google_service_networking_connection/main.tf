resource "google_service_networking_connection" "network_connection" {
  network                 = var.vpc_network_name
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [var.reserved_peering_ranges]
}