module "network" {
  source  = "terraform-google-modules/network/google"
  version = "3.4.0"
  # insert the 3 required variables here
  project_id   = var.project
  network_name = "humble-csa-network"
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name   = "humble-csa-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}