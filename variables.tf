####################################
# Global Variables
####################################

variable "environment" {
  type = string
}

variable "project_name" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "aws_profile" {
  type = string
}

variable "aws_account_id" {
  type = string
}

variable "account_name" {
  type = string
}

variable "account_name_dest" {
  type = string
}

variable "name_region" {
  type = string
}

variable "name_region_dest" {
  type = string
}

variable "name_ref_tgw" {
  type = string
}

variable "name_ref_tgw_dest" {
  type = string
}





####################################
# AWS VPN
####################################

variable "vpc_id" {
  type = string
}

variable "subnet_id_private_A" {
  description = "The route table used in subnet A"
  type        = string
}

variable "subnet_id_private_C" {
  description = "The route table used in subnet A"
  type        = string
}

# variable "subnet_id_public_A" {
#   description = "The route table used in subnet A"
#   type        = string
# }

# variable "subnet_id_public_C" {
#   description = "The route table used in subnet A"
#   type        = string
# }