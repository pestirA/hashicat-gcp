terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "humble-csa-org"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
