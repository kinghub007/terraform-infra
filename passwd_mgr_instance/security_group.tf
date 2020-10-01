#####
# security group
#####
module "instance_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "~> 3.16.0"

  name = var.instance_sg_name
  description = var.instance_sg_description
  vpc_id = data.aws_vpc.this.id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH"
      cidr_blocks = var.office_sg_subnets
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "HTTP"
      cidr_blocks = var.office_sg_subnets
    },
    {                                                                                                                                 
      from_port   = 443                                                                                                            
      to_port     = 443                                                                                                               
      protocol    = "tcp"                                                                                                             
      description = "HTTP"                                                                                                            
      cidr_blocks = var.office_sg_subnets                                                                                             
    }  
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = -1
      description = "Egress allow all"
      cidr_blocks = "0.0.0.0/0"
    },
  ]

   tags = {
    owner = var.owner_tag
    product = var.product_tag
    account = var.account_tag
    service = var.service_tag
    role    = var.role_tag
  }
}
