variable "primary_region" {
  default = "us-east-1"
}

variable "eu_region" {
  default = "eu-central-1"
}

variable "domain_name" {
  default = "devops.anaconda.com"
}

variable "project_name" {
  default = "anaconda"
}

variable "aws_key_pair" {
  default = "pwilson"
}

# Define these as env vars since repo is public

variable "database_password" {
  default = "changeme"
}

variable "redis_password" {
  default = "changeme"
}

variable "user_password" {
  default = "changeme"
}

variable "admin_password" {
  default = "changeme"
}

variable "manager_token" {
  default = "changeme"
}

variable "kasm_build" {
  default = "https://kasm-static-content.s3.amazonaws.com/kasm_release_1.9.0.077388.tar.gz"
}

variable "ssh_access_cidr" {
  default = "0.0.0.0/0"
}
