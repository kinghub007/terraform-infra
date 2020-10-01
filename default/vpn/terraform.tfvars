terragrunt = {
  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "../../../../modules/aws/vpn/"
  }
}

# vpn
custom_tunnel1_inside_cidr = "169.254.10.28/30"
custom_tunnel2_inside_cidr = "169.254.11.112/30"
vpn_connection_static_routes_only = true
vpn_connection_static_routes_destinations = ["10.45.0.0/16", "10.53.0.0/16" ]
vpn_public_ip = "37.0.30.254"

# general variables
name_tag = "pw-ops-vpn"
owner_tag = "ops"
product_tag = "operations"
account_tag = "pw-ops"
service_tag = "operations"
