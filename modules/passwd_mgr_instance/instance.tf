module "passwd_mgr_instance" {
  source                      = "terraform-aws-modules/ec2-instance/aws"
  version                     = "~> 2.15.0"

  name                        = var.instance_name
  instance_count              = var.instance_count
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  monitoring                  = var.monitoring
  vpc_security_group_ids      = [module.instance_sg.this_security_group_id, data.aws_security_group.office-ssh.id, data.aws_security_group.office-icmp.id]
  subnet_ids                  = [data.aws_subnet_ids.passwd_mgr_subnets.ids]

  root_block_device = [
    {
      volume_type = var.root_volume_type
      volume_size = var.root_volume_size
    }
  ]

  volume_tags = {
    Name    = var.instance_name
    owner   = var.owner_tag
    product = var.product_tag
    account = var.account_tag
    service = var.service_tag
    role    = var.role_tag
    environment = var.environment
  }

  tags = {
    owner   = var.owner_tag
    product = var.product_tag
    account = var.account_tag
    service = var.service_tag
    role    = var.role_tag
    environment = var.environment
  }
}
