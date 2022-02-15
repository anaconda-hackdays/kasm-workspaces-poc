provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  state = "available"
}

output "primary_aws_region" {
  value = var.aws_region
}

