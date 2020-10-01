terragrunt = {
  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "../../../../modules/aws/route53_internal_sd"
  }
}

# zone
zone_name = "operations.jp.planetway.aws_internal"

# general variables
owner_tag = "ops"
product_tag = "operations"
account_tag = "pw-ops"
service_tag = "operations"
