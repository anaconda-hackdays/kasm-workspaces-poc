provider "aws" {
  region     = var.primary_aws_region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

data "aws_availability_zones" "available" {
  state = "available"
}