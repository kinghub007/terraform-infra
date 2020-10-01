terragrunt = {
  # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }

  terraform {
    source = "../../../../modules/aws/vpc/"
  }
}

# vpc
name = "planetway-operations"
cidr = "10.40.0.0/16"
azs = ["ap-northeast-1a", "ap-northeast-1c"]
private_subnets = ["10.40.0.0/22", "10.40.4.0/22"]
public_subnets = ["10.40.12.0/22"]
database_subnets = []
intra_subnets = []
create_database_subnet_group = false
enable_nat_gateway = true
single_nat_gateway = true
enable_vpn_gateway = true
enable_dns_hostnames = true
enable_dns_support = true
enable_dhcp_options = true
#dhcp_options_domain_name = "operations.jp.planetway.aws_internal"

# default sg
office_sg_name = "operations-office"
office_sg_description = "This is the Planetid office security group"
# 37.0.30.253/32 - tallinn vpn public IP
# 217.159.180.139/32 - tokyo vpn public IP
# 10.45.252.0/24 - tallinn vpn office admin
# 10.45.253.0/24 - tallinn vpn office user
# 10.53.251.0/24 - tokyo vpn office admin
# 10.53.252.0/24 - tokyo vpn office user
office_sg_subnets = "37.0.30.253/32,217.159.180.139/32,10.45.252.0/24,10.45.253.0/24,10.53.251.0/24,10.53.252.0/24"

# general variables
owner_tag = "ops"
product_tag = "operations"
account_tag = "pw-ops"
service_tag = "operations"
