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
    role_arn = var.anaconda_aws_assume_role_arns
  }
  default_tags {
    tags = {
      Provisioned-by = "terraform"
      Environment    = "dev"
    }
  }
}