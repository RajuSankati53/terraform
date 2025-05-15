# 1. Specify the provider (GCP) and credentials
provider "google" {
  project     = "civic-badge-459121-q4"
  region      = "us-central1"
  credentials = file(var.credentials_file)
}

# 2. Define the VM resource
resource "google_compute_instance" "my-first-vm" {
  name         = "devops-first-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      # Ephemeral public IP
    }
  }
}

# 3. Define variables
variable "credentials_file" {
  description = "Path to GCP service account key JSON file"
  default     = "/home/cena18ed/civic-badge-459121-q4-e21024d4bd0d.json"
}

# 4. Output the external IP
output "instance_ip" {
  description = "Public IP of the new VM instance"
  value       = google_compute_instance.my-first-vm.network_interface[0].access_config[0].nat_ip
}
