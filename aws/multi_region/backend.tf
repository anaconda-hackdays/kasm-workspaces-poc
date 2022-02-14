terraform {
  backend "remote" {
    organization = "Anaconda"
    workspaces {
      name = "kasm-poc"
    }
  }
  required_version = "1.1.5"
}

provider "aws" {
  region = var.primary_region
  assume_role {
    role_arn = "arn:aws:iam::811078382625:role/DevopsTerraform"
  }
  default_tags {
    tags = {
      Owner          = "infrastructure"
      Application    = "kasm-workspaces"
      Provisioned-by = "terraform"
      Environment    = "dev"
    }
  }
}