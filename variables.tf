# AWS Provider Variables
variable "aws-provider" {
  type = list(object({
    aws_region = string
    aws_access_key_id = string
    aws_secret_access_key = string
    aws_session_token = string
    aws_alias = string
  }))
  default = [
    {
        aws_region = ""
        aws_access_key_id = ""
        aws_secret_access_key = ""
        aws_session_token = ""
        aws_alias = ""
    }
  ]
}


# variable "aws_region" {
#   type    = string
#   default = ""
# }
# variable "aws_access_key_id" {
#   type    = string
#   default = ""
# }
# variable "aws_secret_access_key" {
#   type    = string
#   default = ""
# }
# variable "aws_session_token" {
#   type    = string
#   default = ""
# }

#  Lacework Provider Variables
variable "lacework_account" {
  type    = string
  default = ""
}
variable "lacework_api-key" {
  type    = string
  default = ""
}
variable "lacework_api-secret" {
  type    = string
  default = ""
}




variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}