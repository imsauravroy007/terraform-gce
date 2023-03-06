resource "google_compute_firewall" "ssh" {
  name = "allow-ssh"
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = google_compute_network.vpc_network.id
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web-server"]
}


resource "google_compute_firewall" "http" {
  name = "allow-http"
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = google_compute_network.vpc_network.id
  priority      = 1001
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web-server"]
}


resource "google_compute_firewall" "ssl" {
  name = "allow-ssl"
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = google_compute_network.vpc_network.id
  priority      = 1002
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web-server"]
}