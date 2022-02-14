###########################################################
# Define a primary region.
# This will house the Kasm Workspaces DB, and a set of
# agents/webapps that map to this region.
###########################################################

module "primary_region" {
  source               = "./primary"
  aws_region           = var.primary_region
  zone_name            = var.primary_region
  ec2_ami              = "ami-013f17f36f8b1fefb"
  db_instance_type     = "t3.small"
  num_agents           = 1
  agent_instance_type  = "t3.medium"
  num_webapps          = 1
  webapp_instance_type = "t3.small"

  project_name          = var.project_name
  kasm_build            = var.kasm_build
  database_password     = var.database_password
  redis_password        = var.redis_password
  user_password         = var.user_password
  admin_password        = var.admin_password
  manager_token         = var.manager_token
  aws_key_pair          = var.aws_key_pair
  domain_name           = var.domain_name
  ssh_access_cidr       = var.ssh_access_cidr
}


###########################################################
# Add a pair of webapp and agent modules
#   for each additional region desired.
###########################################################

module "eu-central-1-webapps" {
  source               = "./webapps"
  faux_aws_region      = var.eu_region
  zone_name            = var.eu_region
  num_webapps          = 1
  webapp_instance_type = "t3.small"
  ec2_ami              = "ami-013f17f36f8b1fefb"

  primary_aws_region    = module.primary_region.primary_aws_region
  webapp_subnet_id_1    = module.primary_region.webapp_subnet_1_id
  webapp_subnet_id_2    = module.primary_region.webapp_subnet_2_id
  agent_subnet_id       = module.primary_region.agent_subnet_id
  domain_name           = var.domain_name
  project_name          = var.project_name
  kasm_build            = var.kasm_build
  database_password     = var.database_password
  redis_password        = var.redis_password
  manager_token         = var.manager_token
  aws_key_pair          = var.aws_key_pair
  kasm_db_ip            = module.primary_region.kasm_db_ip
  primary_vpc_id        = module.primary_region.primary_vpc_id
  certificate_arn       = module.primary_region.certificate_arn
  ssh_access_cidr       = var.ssh_access_cidr
}


module "eu-central-1-agents" {
  source              = "./agents"
  aws_region          = var.eu_region
  zone_name           = var.eu_region
  num_agents          = 1
  agent_instance_type = "t3.medium"
  ec2_ami             = "ami-08d0eee5e00da8a9b"

  domain_name           = var.domain_name
  project_name          = var.project_name
  kasm_build            = var.kasm_build
  manager_token         = var.manager_token
  aws_key_pair          = var.aws_key_pair
  ssh_access_cidr       = var.ssh_access_cidr

}

