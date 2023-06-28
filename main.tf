terraform {
  required_providers {
    lacework = {
      source  = "lacework/lacework"
      version = "~> 1.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token = var.aws_session_token
}

provider "lacework" {
  account    = var.lacework_account
  api_key    = var.lacework_api-key
  api_secret = var.lacework_api-secret
}

# module "aws_config" {
#   source  = "lacework/config/aws"
#   version = "~> 0.5"
#   count=0
# }

# module "main_cloudtrail" {
#   source                = "lacework/cloudtrail/aws"
#   version               = "~> 2.0"
#   iam_role_arn          = module.aws_config.iam_role_arn
#   iam_role_external_id  = module.aws_config.external_id
#   iam_role_name         = module.aws_config.iam_role_name
#   use_existing_iam_role = true
# }