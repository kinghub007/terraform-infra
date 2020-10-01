# show which accout terraform is running on
data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "instance_internal_ip" {
  description = "Password Manager server instance internal IP"
  value = module.passwd_mgr_instance.private_ip
}

output "instance_service_name" {
  description = "Password Manager server service tag"
  value = var.service_tag
}
