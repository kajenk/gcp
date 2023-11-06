# Terraform Training , Day1 , GCP
# Author: Somnath Das

provider "google" {
  project      = "skilled-mile-282402"
  region       = "us-central1"
  zone         = "us-central1-b"
}

resource "google_compute_instance" "vm" {
  name              = "terraform-instance"
  machine_type      = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_storage_bucket" "bucket" {
  name = "daslearning-bucket-33"
  location = "ASIA-SOUTH1"
}
