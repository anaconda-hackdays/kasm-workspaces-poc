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
  default = "KSXMzHE467vE"
}

variable "redis_password" {
  default = "KSXMzHE467vE"
}

variable "user_password" {
  default = "KSXMzHE467vE"
}

variable "admin_password" {
  default = "KSXMzHE467vE"
}

variable "manager_token" {
  default = "KSXMzHE467vE"
}

variable "kasm_build" {
  default = "https://kasm-static-content.s3.amazonaws.com/kasm_release_1.9.0.077388.tar.gz"
}

variable "ssh_access_cidr" {
  default = "71.40.120.10/32"
}
