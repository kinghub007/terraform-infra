##############################################################
# Data sources to get VPC, subnets and security group details
##############################################################
data "aws_vpcs" "this" {
  tags = {
    account = var.account_tag
    product = var.product_tag
  }
}

data "aws_vpc" "this" {
  id = element(tolist(data.aws_this.ids), 0)
}

data "aws_subnet_ids" "application_subnets" {
  vpc_id = data.aws_vpc.this.id
  tags = {
    account = var.account_tag
    product = var.product_tag
    service = application
  }
}

data "aws_security_group" "office-ssh" {
  vpc_id = data.aws_vpc.this.id
  tags = {
    account = var.account_tag
    product = var.product_tag
    service = operations
    zone    = office-ssh
  }
}

data "aws_security_group" "office-icmp" {
  vpc_id = data.aws_vpc.this.id
  tags = {
    account = var.account_tag
    product = var.product_tag
    service = operations
    zone    = office-icmp
  }
}
