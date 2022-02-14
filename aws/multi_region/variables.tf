variable "primary_region" {
  default = "us-east-1"
}

variable "aws_domain_name" {
}

variable "project_name" {
  default = "anaconda-kasm"
}

variable "aws_key_pair" {
  default = ""
}

variable "AWS_ACCESS_KEY_ID " {

}

variable "AWS_SECRET_ACCESS_KEY" {

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
