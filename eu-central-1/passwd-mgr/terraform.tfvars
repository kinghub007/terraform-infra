terragrunt = {
  # Include all settings from the root terraform.tfvars file
  include {
   path = find_in_parent_folders()
  }   
terraform {
    source = "../../../modules/ops/passwd_mgr_instance/"
  }
}

# instance
instance_name = "passwd-mgr"
instance_count = "1"
ami = "ami-0c960b947cbb2dd16"
instance_type = "t2.micro"
key_name = "terraform"
#monitoring = true
#root_volume_size = "10"
#root_volume_type = "gp2"
#root_volume_delete_on_termination = true

#attached_ebs_device_name = "/dev/xvdf"
#attached_ebs_volume_type = "gp2"
#attached_ebs_volume_size = "10"
#attached_ebs_volume_mount_point = "/var/lib/passwd_mgr"
#attached_ebs_volume_file_system = "xfs"

# server sg
#instance_sg_name = "passwd_mgr-sg"
#instance_sg_description = "This is the password manager security group"

# 10.45.252.0/24 - tallinn vpn office admin
# 10.45.253.0/24 - tallinn vpn office user
# 10.53.251.0/24 - tokyo vpn office admin
# 10.53.252.0/24 - tokyo vpn office user
#office_sg_subnets = "10.45.252.0/24,10.45.253.0/24,10.53.251.0/24,10.53.252.0/24"

# general variables
#owner_tag = "ops"
#product_tag = "operations"
account_tag = "kings-learning"
#service_tag = "operations"
#role_tag = "passwd_mgr"

# environment specific variables
#environment = "test"
