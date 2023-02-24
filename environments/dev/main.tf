module "patrickbuck1" {
  source  = "../../modules/GCS"
  name       = "patrickbuck1"
  project_id = "terraform-project-378819"
  location   = "europe-west3"
  versioning = false
  public_access_prevention = "inherited"
  labels = {
    "env" = var.environment
    }
  lifecycle_rules = [{
    action = {
      type = "Delete"
    }
    condition = {
      age            = 365
      with_state     = "ANY"
    }
  }] 
}