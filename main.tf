terraform {
  backend "remote" {
    organization = "infrastructure-pipelines-workshop"

    workspaces {
      name = "fred-t-consul"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
