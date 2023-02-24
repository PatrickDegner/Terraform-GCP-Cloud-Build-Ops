module "patrickvm1" {
  source  = "../../../modules/GCE"
  name_prefix          = "patrickvm1"
  machine_type         = "n1-standard-1"
  disk_size_gb         = 20
  source_image         = "debian-10-buster-v20220719"
  source_image_family  = "debian-10"
  source_image_project = "debian-cloud"
  
  # additional_disks     = var.additional_disks
  labels = {
    env = var.environment
  }
  # network       = var.network
  # subnetwork    = var.subnetwork
  access_config = []
  service_account = {
    email  = "terraform-gcp@terraform-project-378819.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
  tags = ["dev"]
}