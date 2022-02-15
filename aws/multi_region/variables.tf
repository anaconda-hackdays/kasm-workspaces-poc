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

variable "database_password" {

}

variable "redis_password" {

}

variable "user_password" {

}

variable "admin_password" {

}

variable "manager_token" {

}

variable "kasm_build" {
  default = "https://kasm-static-content.s3.amazonaws.com/kasm_release_1.10.0.238225.tar.gz"
}

variable "ssh_access_cidr" {
  default = "71.40.120.10/32"
}
