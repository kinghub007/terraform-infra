terragrunt = {
  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "../../../../modules/aws/vpc_peering/"
  }
}

# peering
peer_region       = "eu-north-1"
peer_profile      = "pid-dev"
peer_product_tag  = "planetid"
peer_account_tag  = "pid-dev"
peer_environment  = "dev"

# general variables
owner_tag = "ops"
product_tag = "operations"
account_tag = "pw-ops"
service_tag = "operations"
