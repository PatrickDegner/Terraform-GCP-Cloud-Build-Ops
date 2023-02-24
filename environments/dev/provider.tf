provider "google" {
  project = "terraform-project-378819"
  region = "europe-west3"
  zone = "europe-west3-a"
  credentials = "gs://pd-terraform-backend/key.json"
}

