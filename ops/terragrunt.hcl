  # Configure Terragrunt to automatically store tfstate files in an S3 bucket
  remote_state {
    backend = "s3"
    config = {
      encrypt = true
      bucket  = "kings-buck"
      key     = "${path_relative_to_include()}/terraform.tfstate"
      region  = "eu-central-1"
      profile = "default"
      skip_region_validation = true
      s3_bucket_tags {
        name  = "kings-buck"
        owner = "kingshukayon@gmail.com"
        service = "s3"
        product = "ops"
        account = "kings-learning"
      }
    }
  }
  # Configure root level variables that all resources can inherit
  terraform {
    provider "aws" {
    }

    extra_arguments "bucket" {
      commands = ["${get_terraform_commands_that_need_vars()}"]
      optional_var_files = [
          "${get_parent_terragrunt_dir()}/("common.tfvars", "ignore")"
      ]
    }
  }

