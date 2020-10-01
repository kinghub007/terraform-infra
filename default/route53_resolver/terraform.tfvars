terragrunt = {
  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "../../../../modules/aws/route53_resolver/"
  }
}

route53_resolver_rule_domain_name = "corp.planetway.com"
route53_resolver_rule_forward_ips = ["10.45.8.11", "10.53.8.11"]
route53_resolver_endpoint_subnet_ids = ["subnet-09f8767a19a8178be", "subnet-0e1cfcde2f1ab13eb"]
route53_resolver_endpoint_ips = ["10.40.0.250", "10.40.4.250"]
route53_resolver_sg_name = "pid-route53-resolver-sg"
route53_resolver_sg_description = "This sg is used for controlling access to VPC for Route53 resolver"

# general variables
owner_tag = "ops"
product_tag = "operations"
account_tag = "pw-ops"
