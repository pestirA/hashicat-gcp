module "network" {
  source  = "terraform-google-modules/network/google"
  version = "5.0.0"
  # insert the 3 required variables here
    project_id   = var.project
    network_name = "humble-csa-network"
    routing_mode = "GLOBAL"
}