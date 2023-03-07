# Specify the GCP Provider
provider "google" {
  access_token = "${file("${path.module}/google-access-token-file.txt")}"
  project = var.project_id
  region  = var.region
}

