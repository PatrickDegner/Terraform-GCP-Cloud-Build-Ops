terraform {
  backend "gcs" {
    bucket  = "pd-terraform-backend"
    prefix  = "env/dev"
  }
}
