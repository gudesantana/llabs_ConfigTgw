module "tgw" {
  source = "./Modules/AwsTGW"

  name                                  = "tgw-vpc-${var.environment}-${var.account_name}-${var.name_ref_tgw}_${var.account_name_dest}-${var.name_ref_tgw_dest}"
  description                           = "tgw-vpc-${var.environment}-${var.account_name}-${var.name_ref_tgw}_${var.account_name_dest}-${var.name_ref_tgw_dest}"
  vpc_id                                = var.vpc_id
  subnet_id_private_A                   = var.subnet_id_private_A
  subnet_id_private_C                   = var.subnet_id_private_C
  enable_auto_accept_shared_attachments = true

  vpc_attachments = {
    vpc = {
      vpc_id       = var.vpc_id
      subnet_ids   = [var.subnet_id_private_A, var.subnet_id_private_C]
      dns_support  = true
      ipv6_support = false
    }
  }

  ram_allow_external_principals = false          # false
  ram_principals                = [633298652315] # aws account id

  tags = {
    name = "tgw-${var.project_name}-${var.name_ref_tgw}-${var.name_region}"
  }
}