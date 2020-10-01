variable "region" {
  description = "AWS region to use"
  default = "eu-central-1"
}

variable "profile" {
  description = "AWS profile to use"
  default = ""
}

variable "shared_credentials_file" {
  description = "AWS credentials file"
  default = ""
}

##### instance variables #####
variable "instance_name" {
  description = "Name to be used on all resources as prefix"
}

variable "instance_count" {
  description = "Number of instances to launch"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
}

variable "instance_type" {
  description = "The type of instance to start"
}

variable "key_name" {
  description = "The key name to use for the instance"
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
}

variable "root_volume_size" {
  description = "Root volume size"
}

variable "root_volume_type" {
  description = "Type of the root volume"
}

variable "root_volume_delete_on_termination" {
  description = "Flag to set if root volume should be terminated on instance delete"
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  default = "true"
}

##### instance security group variables #####
variable "instance_sg_name" {
  description = "Name of the instance security group"
}

variable "instance_sg_description" {
  description = "Description of the security group"
}

variable "office_sg_subnets" {
  description = "List of Planetway office private IP-s"
  default = ""
}

#### attached ebs volume variables #####
variable "attached_ebs_device_name" {
  description = "Device name, such as /dev/xvdf"
}

variable "attached_ebs_volume_type" {
  description = "EBS volume type, such as io1 or gp2"
}

variable "attached_ebs_volume_size" {
  description = "Size of the EBS volume"
}

variable "attached_ebs_volume_mount_point" {
  description = "Mount point of the EBS volume"
}

variable "attached_ebs_volume_file_system" {
  description = "EBS volume file system"
}

##### general variables #####
variable "owner_tag" {
  description = "Defines owner tag"
  default     = "ops"
}

variable "product_tag" {
  description = "Defines product tag"
  default     = ""
}

variable "account_tag" {
  description = "Defines account tag"
  default     = ""
}

variable "service_tag" {
  description = "Defines service tag"
  default = ""
}

variable "role_tag" {
  description = "Defines role tag"
  default = ""
}

##### environment specific variables #####
variable "environment" {
  description = "Defines environment tag"
  default = ""
}
