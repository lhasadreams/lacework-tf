# AWS Provider Variables
variable "aws_region" {
  type    = string
  default = ""
}
variable "aws_access_key_id" {
  type    = string
  default = ""
}
variable "aws_secret_access_key" {
  type    = string
  default = ""
}
variable "aws_session_token" {
  type    = string
  default = ""
}

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